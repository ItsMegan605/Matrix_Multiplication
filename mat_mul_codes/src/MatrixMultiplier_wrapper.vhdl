-------------------------------------------------------------------
-- Wrapper for Vivado of the MatrixMultiplier component  
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all; -- Import standard logic types (e.g., std_logic).
use IEEE.numeric_std.all;    -- Import numeric types and operations (e.g., integer to std_logic_vector).
use work.signals.all;        -- Import custom signals defined in the "work" library.
 
-- Entity declaration for the MatrixMultiplier_Wrapper
entity MatrixMultiplier_Wrapper is
    generic (
        MAX_SIZE    : positive := 3;    -- Maximum size for matrix dimensions.
        WORD_LENGTH : positive := 3     -- Bit width for each matrix element.
    );
    port (
        clk         : in  std_logic;                        -- Clock signal.
        rst         : in  std_logic;                        -- Reset signal (active high).
        N_size      : in  integer range 1 to MAX_SIZE;      -- Number of rows of A and C.
        M_size      : in  integer range 1 to MAX_SIZE;      -- Number of columns for A and rows for B.
        K_size      : in  integer range 1 to MAX_SIZE;      -- Number of columns for B and C.
        A_row       : in  input;                            -- Input matrix A stored row-wise.
        B_column    : in  input;                            -- Input matrix B stored column-wise.
        A_valid     : in  std_logic;                        -- Valid signal for A input (rows).
        B_valid     : in  std_logic;                        -- Valid signal for B input (columns).
        C_row       : out output_c;                         -- Output matrix C.
        C_valid     : out std_logic                         -- Output valid for C_row output.
    );
end entity;
 
-- Architecture definition for the wrapper
architecture dataflow of MatrixMultiplier_Wrapper is
 
    -- Define internal signals to connect inputs/outputs to the component
    signal actual_A_row    : input;        -- Registered version of A_row.
    signal actual_B_column : input;        -- Registered version of B_column.
    signal actual_A_valid  : std_logic;      -- Registered version of A_valid.
    signal actual_B_valid  : std_logic;        -- Registered version o
   
    signal new_C_row       : output_c;    -- Signal to hold the current value of C_row.
    signal new_C_valid     : std_logic;      -- Signal to hold the current value o
   
    signal registered_C_row : output_c;   -- Registered version of C_row for output.
    signal registered_C_valid : std_logic;        -- Registered version of C_valid for output.
 
    -- Component declaration for the MatrixMultiplier
    component MatrixMultiplier is
       generic (
           MAX_SIZE    : positive := 3;    -- Maximum size for matrix dimensions.
           WORD_LENGTH : positive := 3     -- Bit width for each matrix element.
       );
       port (
           clk      : in  std_logic;                        -- Clock signal.
           rst      : in  std_logic;                        -- Reset signal (active high).
           N_size   : in  integer range 1 to MAX_SIZE;      -- Number of rows of A and C.
           M_size   : in  integer range 1 to MAX_SIZE;      -- Number of columns for A and rows for B.
           K_size   : in  integer range 1 to MAX_SIZE;      -- Number of columns for B and C.
           A_row    : in  input;                            -- Input matrix A stored row-wise.
           B_column : in  input;                            -- Input matrix B stored column-wise.
           A_valid  : in  std_logic;                        -- Valid signal for A input (rows).
           B_valid  : in  std_logic;                        -- Valid signal for B input (columns).
           C_row    : out output_c;                         -- Output matrix C.
           C_valid  : out std_logic                         -- Output valid for C_row output.
       );
   end component;
 
begin
 
    -- Input register process
    in_reg: process (clk, rst)
    begin
        if rst = '1' then
            actual_A_row    <= (others => (others => '0'));
            actual_B_column <= (others => (others => '0'));
            actual_A_valid  <= '0';
            actual_B_valid  <= '0';
        elsif rising_edge(clk) then
            actual_A_row    <= A_row;
            actual_B_column <= B_column;
            actual_A_valid  <= A_valid;
            actual_B_valid  <= B_valid;
        end if;
    end process;
 
    -- Instantiate the MatrixMultiplier component
    Multiplier_logic: MatrixMultiplier
        generic map (
            MAX_SIZE    => MAX_SIZE,
            WORD_LENGTH => WORD_LENGTH
        )
        port map (
            clk      => clk,
            rst      => rst,
            N_size   => N_size,
            M_size   => M_size,
            K_size   => K_size,
            A_row    => actual_A_row,
            B_column => actual_B_column,
            A_valid  => actual_A_valid,
            B_valid  => actual_B_valid,
            C_row    => new_C_row,
            C_valid  => new_C_valid
        );
 
    -- Output register process
    out_reg: process (clk, rst)
    begin
        if rst = '1' then
            registered_C_row <= (others => (others => '0'));
            registered_C_valid <= '0';
        elsif rising_edge(clk) then
            registered_C_row   <= new_C_row;
            registered_C_valid <= new_C_valid;
        end if;
    end process;
 
    -- Connect registered outputs to entity ports
    C_row   <= registered_C_row;
    C_valid <= registered_C_valid;
 
end architecture;