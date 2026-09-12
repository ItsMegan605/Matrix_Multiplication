-----------------------------------------------------------------------------------------------------------------------------------------
-- VHDL package for matrix multiplication
-- This package defines the data types that we used in the matrix multiplication design
-----------------------------------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
 
package signals is
 
    -- Define the dimensions for our matrices
    constant MAX_SIZE    : integer := 3;
    constant WORD_LENGTH : integer := 3;  -- we chose 3 bits for our word length, because it is a good trade-off
 
    --define our types to ease the declaration
    subtype word_bit is std_logic_vector(WORD_LENGTH - 1 downto 0);
    -- The dimension of out_bit is chosen as 2*WORD_LENGTH + MAX_SIZE - 1 to accommodate:
    -- 1. The result of multiplying two WORD_LENGTH-bit numbers, which can be up to 2*WORD_LENGTH bits wide.
    -- 2. The summation of up to MAX_SIZE partial products during matrix multiplication, requiring additional bits.
    -- This ensures no overflow occurs and the output can store the largest possible result.
    subtype out_bit is std_logic_vector(2*WORD_LENGTH + MAX_SIZE -1 downto 0);
   
    -- Define the array of vectors to ease the code readability
    type input is array (MAX_SIZE - 1 downto 0) of word_bit; -- array for inputs
    type output_c is array ( MAX_SIZE - 1 downto 0) of out_bit; -- array for output c_row
   
end package signals;