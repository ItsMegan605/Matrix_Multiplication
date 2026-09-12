----------------------------------------------------------------------------------------
-- Matrix A LUT for storing the elements of matrix A in input as rows
----------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.signals.all; -- Library package for the signals
 
 
entity MatrixLUT_A is
    generic (
        MAX_SIZE : positive := 3
    );
    port (  
        clk        : in std_logic;
        rst        : in std_logic;
        en_A       : in std_logic;
        row_index  : in integer range 0 to MAX_SIZE*MAX_SIZE - 1;  -- Index to access LUT rows
        data_in_A  : in word_bit;
        data_out_A : out word_bit;
        lut_ready  : out std_logic
    );
end entity MatrixLUT_A;
 
architecture Behavioral of MatrixLUT_A is
     -- Define a type for the LUT as an array of word_bit elements
     type LUT_type_A is array (0 to MAX_SIZE * MAX_SIZE - 1) of word_bit;
     signal LUT         : LUT_type_A; -- Signal representing the LUT
     signal lut_ready_s : std_logic; -- Internal signal for the ready flag
 
 
begin
    -- Process to handle reset, writing to the LUT, and setting the ready flag
    process(clk, rst)
    begin
        if rst = '1' then
            LUT         <= (others => (others => '0'));
            lut_ready_s <= '0';
 
        elsif falling_edge(clk) then
            lut_ready_s <= '0';
            if en_A = '1' then
                LUT(row_index) <= data_in_A; -- Write input data to the specified LUT row
                lut_ready_s <= '0'; -- Keep the ready flag cleared
                if row_index = MAX_SIZE*MAX_SIZE - 1 then -- If the last row is written
                    lut_ready_s <= '1'; -- Set the ready flag to indicate LUT is full
                end if;
            end if;
        end if;
    end process;
 
    -- Assign the internal ready signal to the output ready port
    lut_ready  <= lut_ready_s;
    -- Assign the value of the specified LUT row to the output data port
    data_out_A <= LUT(row_index);
 
end architecture Behavioral;