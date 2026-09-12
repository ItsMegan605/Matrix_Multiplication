------------------------------------------------------------------------------------------------------------
-- Matrix C LUT for storing the elements we get from the Matrix Multiplier
--we stored them as rows in the LUT
----------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.signals.all;
 
entity MatrixLUT_C is
    generic (
        MAX_SIZE : positive := 3
    );
    port (  
        clk        : in std_logic;
        rst        : in std_logic;
        en_C       : in std_logic;
        row_index  : in integer range 0 to MAX_SIZE*MAX_SIZE - 1; -- Index to access LUT rows, output values are larger than inputs
        data_in_C  : in std_logic_vector(2*WORD_LENGTH + MAX_SIZE - 1 downto 0);
        data_out_C : out std_logic_vector(2*WORD_LENGTH + MAX_SIZE - 1 downto 0);
        lut_ready  : out std_logic
    );
end entity MatrixLUT_C;
 
architecture Behavioral of MatrixLUT_C is
    type LUT_type_C is array (0 to MAX_SIZE * MAX_SIZE - 1) of std_logic_vector(2*WORD_LENGTH + MAX_SIZE - 1 downto 0);
    signal LUT         : LUT_type_C;
    signal lut_ready_s : std_logic;
 
begin
   -- Process to handle reset, writing to the LUT, and setting the ready flag
   process(clk, rst)
   begin
       if rst = '1' then
           LUT         <= (others => (others => '0'));
           lut_ready_s <= '0';
           
       elsif falling_edge(clk) then
           lut_ready_s <= '0';
           if en_C = '1' then
               LUT(row_index) <= data_in_C; -- Write input data to the specified LUT row
               -- lut_ready_s <= '0';
               if row_index = MAX_SIZE*MAX_SIZE - 1 then -- If the last row is written
                   lut_ready_s <= '1'; -- Set the ready flag to indicate LUT is full
               end if;
           end if;
       end if;
   end process;
 
   -- Assign the internal ready signal to the output ready port
   lut_ready  <= lut_ready_s;
   -- Assign the value of the specified LUT row to the output data port
   data_out_C <= LUT(row_index);
 
end architecture Behavioral;