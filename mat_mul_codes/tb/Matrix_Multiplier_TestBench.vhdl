---------------------------------------------------------------------------------------------------------------------
-- VHDL Testbench for Matrix Multiplier
--------------------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;  
use IEEE.numeric_std.all;    
use work.signals.all;         -- Custom package with matrix type definitions
 
 
entity Matrix_Multiplier_TestBench is
end entity;
 
architecture testbench of Matrix_Multiplier_TestBench is
    -- Constants
    constant CLK_PERIOD : time := 10 ns;        -- Clock period definition
    constant MAX_SIZE_TB : positive := 3;        -- Maximum matrix dimension
    constant WORD_LENGTH_TB : positive := 3;     -- Bit width of each matrix element
   
    -- Testbench Signals
    signal clk_tb     : std_logic := '0';        -- Clock signal
    signal rst_tb     : std_logic := '0';        -- Reset signal, active high
    signal N_size_tb  : integer range 1 to MAX_SIZE_TB := 3;  -- Rows in matrix A
    signal M_size_tb  : integer range 1 to MAX_SIZE_TB := 3;  -- Columns in matrix A/Rows in matrix B
    signal K_size_tb  : integer range 1 to MAX_SIZE_TB := 3;  -- Columns in matrix B
   
    -- Input and output matrices
    signal A_row_tb   : input := (others => (others => '0')); -- One row of matrix A at a time
    signal B_column_tb: input := (others => (others => '0')); -- One column of matrix B at a time
    signal A_valid_tb : std_logic := '0';        -- Indicates valid data on A_row
    signal B_valid_tb : std_logic := '0';        -- Indicates valid data on B_column
    signal C_row_tb   : output_c := (others => (others => '0')); -- Result matrix elements
    signal C_valid_tb : std_logic;               -- Indicates valid result on C_row
 
    signal testing : boolean := true;            -- Flag to control clock generation
 
    begin
        -- Clock generation process
        clk_process : process
        begin
            while testing loop
                clk_tb <= '0';
                wait for CLK_PERIOD / 2;
                clk_tb <= '1';
                wait for CLK_PERIOD / 2;
            end loop;
        end process;
 
        DUT: entity work.MatrixMultiplier
            generic map (
                MAX_SIZE    => MAX_SIZE_TB,      
                WORD_LENGTH => WORD_LENGTH_TB    
            )
            -- Connect testbench signals to DUT
            port map (
                clk      => clk_tb,              
                rst      => rst_tb,
                N_size   => N_size_tb,
                M_size   => M_size_tb,
                K_size   => K_size_tb,
                A_row    => A_row_tb,
                B_column => B_column_tb,
                A_valid  => A_valid_tb,
                B_valid  => B_valid_tb,
                C_row    => C_row_tb,
                C_valid  => C_valid_tb
            );
           
        stimulus: process
        begin
            -- Apply reset
            rst_tb <= '1';
            wait for 5 * CLK_PERIOD;   -- Hold in reset for 5 clock cycles
            rst_tb <= '0';             -- Release reset
            wait for 5 * CLK_PERIOD;   -- Wait for system to stabilize
 
            -- Load input matrices row by row and column by column
            -- First row of A and first column of B
            report "Loading first row/column pair";
            A_valid_tb <= '1';  -- Set valid flags
            B_valid_tb <= '1';
            -- A[0][0]=1, A[0][1]=3, A[0][2]=5
            A_row_tb(0) <= "001";  
            A_row_tb(1) <= "011";  
            A_row_tb(2) <= "101";  
            -- B[0][0]=2, B[1][0]=1, B[2][0]=6
            B_column_tb(0) <= "010";
            B_column_tb(1) <= "001";
            B_column_tb(2) <= "110";
            wait for 3 * CLK_PERIOD;  -- Hold values for 3 clock cycles
 
            -- Second row of A and second column of B
            report "Loading second row/column pair";
            -- A[1][0]=7, A[1][1]=6, A[1][2]=4
            A_row_tb(0) <= "111";  
            A_row_tb(1) <= "110";  
            A_row_tb(2) <= "100";  
            -- B[0][1]=1, B[1][1]=3, B[2][1]=7
            B_column_tb(0) <= "001";
            B_column_tb(1) <= "011";
            B_column_tb(2) <= "111";
            wait for 3 * CLK_PERIOD;  -- Hold values for 3 clock cycles
           
            -- Third row of A and third column of B
            report "Loading third row/column pair";
            -- A[2][0]=1, A[2][1]=3, A[2][2]=5
            A_row_tb(0) <= "001";  
            A_row_tb(1) <= "011";  
            A_row_tb(2) <= "101";  
            -- B[0][2]=2, B[1][2]=1, B[2][2]=6
            B_column_tb(0) <= "010";
            B_column_tb(1) <= "001";
            B_column_tb(2) <= "110";
            wait for 3 * CLK_PERIOD;  -- Hold values for 3 clock cycles
           
            -- Deassert valid signals to indicate all data loaded
            -- This triggers the multiplication process
            A_valid_tb <= '0';
            B_valid_tb <= '0';
 
            -- Wait for multiplication to complete
            report "Waiting for multiplication to complete...";
       
            -- Wait for result ready signal
            if not C_valid_tb = '1' then
                wait until C_valid_tb = '1' for 100 * CLK_PERIOD;
            end if;
           
            -- Once result is ready, wait 7 more cycles to ensure stability
            if C_valid_tb = '1' then
                wait for 7 * CLK_PERIOD;  -- Allow propagation
                testing <= false;  -- Stop the test flag
            end if;
 
            -- End test
            report "Testbench completed successfully";
            wait; -- Suspend process indefinitely
        end process;
end architecture;