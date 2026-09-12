----------------------------------------------------------------------------------------
-- Matrix B LUT for storing the elements of matrix B in input as columns
----------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.signals.all; -- Library package for the signals
 
entity MatrixLUT_B is
    generic (
        MAX_SIZE : positive := 3
    );
    port (  
        clk        : in std_logic;
        rst        : in std_logic;
        en_B       : in std_logic;
        col_index  : in integer range 0 to MAX_SIZE*MAX_SIZE - 1; -- Index to access LUT columns
        data_in_B  : in word_bit;
        data_out_B : out word_bit;
        lut_ready  : out std_logic
    );
end entity MatrixLUT_B;
 
architecture Behavioral of MatrixLUT_B is
    -- Define a type for the LUT as an array of word_bit elements
    type LUT_type_B is array (0 to MAX_SIZE * MAX_SIZE - 1) of word_bit;
    signal LUT         : LUT_type_B; -- Signal representing the LUT
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
            if en_B = '1' then
                LUT(col_index) <= data_in_B; -- Write input data to the specified LUT column
                lut_ready_s <= '0'; -- Keep the ready flag cleared
                if col_index = MAX_SIZE*MAX_SIZE - 1 then -- If the last column is written
                    lut_ready_s <= '1'; -- Set the ready flag to indicate LUT is full
                end if;
            end if;
        end if;
    end process;
 
    -- Assign the internal ready signal to the output ready port
    lut_ready  <= lut_ready_s;
    -- Assign the value of the specified LUT column to the output data port
    data_out_B <= LUT(col_index);
 
end architecture Behavioral;