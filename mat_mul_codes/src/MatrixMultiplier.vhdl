--------------------------------------------------------------------------------------------------------------------------------------------
-- Matrix Multiplier main code
--------------------------------------------------------------------------------------------------------------------------
library IEEE;
library work;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.signals.all; -- Signal Package for matrix elements
 
entity MatrixMultiplier is
    generic (
        MAX_SIZE : positive;    -- Maximum size for matrix dimensions
        WORD_LENGTH : positive  -- Bit width for each matrix element
    );
    port(
        clk     : in std_logic;                        -- Clock signal
        rst     : in std_logic;                        -- Reset signal (active high)
        N_size  : in integer range 1 to MAX_SIZE;      -- Number of rows of A and C
        M_size  : in integer range 1 to MAX_SIZE;      -- Number of columns for A and rows for B
        K_size  : in integer range 1 to MAX_SIZE;      -- Number of columns fo B and C
        A_row   : in input;                            -- Input matrix A stored row-wise
        B_column: in input;                            -- Input matrix B stored column-wise
        A_valid : in std_logic;                        -- valid signal for A input (rows)
        B_valid : in std_logic;                        -- valid signal for B input (columns)
        C_row   : out output_c;                        -- Output matrix C
        C_valid : out std_logic                        -- output valid for C_row output
    );
end entity;
 
architecture beh of MatrixMultiplier is
    -------------------------------------------------------------------------------------------------------------------------------
    -- States definition for our finite state machine (FSM) logic
    -------------------------------------------------------------------------------------------------------------------------------
    type state_t is (IDLE, LOAD_MAT, CHECK, MULTIPLY, MAT_C, RESULT, END_MUL);
    signal curr_state : state_t;
    signal next_state : state_t;
 
    -------------------------------------------------------------------------------------------------------------------------------
    -- internal signals declaration
    -------------------------------------------------------------------------------------------------------------------------------
 
    -- LUT output signals
    signal A_lut_out : word_bit;         -- Output from matrix A LUT
    signal B_lut_out : word_bit;         -- Output from matrix B LUT
    signal C_lut_out : out_bit;          -- Output from matrix C LUT
 
    -- signals to check loading of the LUT A and B
    signal lut_ready_A : std_logic;                    
    signal lut_ready_B : std_logic;                    
 
    -- Enable for the loading of the luts
    signal matrix_A_en : std_logic;                    
    signal matrix_B_en : std_logic;  
 
    -- Signals to track when the LUTs are fully loaded
    signal load_complete_A : std_logic;                
    signal load_complete_B : std_logic;              
 
    signal C_write_complete : std_logic;     -- Matrix C writing complete
    signal en_C : std_logic;                 -- Enable writing to matrix C
 
    signal start_multiplication : std_logic;                                -- Control signal for starting multiplication
    signal mul_result : unsigned(2*WORD_LENGTH + MAX_SIZE - 1 downto 0);    -- Temporary signal for multiplication results
    signal dot_product : unsigned(2*WORD_LENGTH + MAX_SIZE - 1 downto 0);   -- Accumulator for dot product
 
    -- Control counters for the elements of the rows and columns
    signal row_counter : integer range 0 to MAX_SIZE*MAX_SIZE;      
    signal col_counter : integer range 0 to MAX_SIZE*MAX_SIZE;    
 
    -- Indexes for the row/col blocks in the LUTs
    signal col_data_counter : integer range 0 to MAX_SIZE-1;        
    signal row_data_counter : integer range 0 to MAX_SIZE-1;
 
    -- Status flags for loading completion
    signal rows_ok : std_logic;   -- Matrix A loading complete
    signal cols_ok : std_logic;   -- Matrix B loading complete
 
    signal sum_counter : integer range 0 to MAX_SIZE-1;             -- Tracks elements in dot product calculation
   
    signal write_counter : integer range 0 to MAX_SIZE*MAX_SIZE-1;  -- Counter for writing to C_row
    signal offset : integer range 0 to MAX_SIZE*MAX_SIZE;           -- Offset for row_counter
    signal read_data_counter : integer range 0 to MAX_SIZE-1;       -- Counter for reading from C_row
 
    -- Temporary signals for component connections
    signal A_row_signal : word_bit;          -- Holds current element from matrix A
    signal B_column_signal : word_bit;       -- Holds current element from matrix B
 
    signal C_valid_signal : std_logic;       -- Internal valid signal for matrix C
    signal C_row_internal : output_c;        -- Internal signal for C_row output
 
    -----------------------------------------------------------------------------------------------------------------------------
    -- Components declarations for the LUTs that store the matrices
    -----------------------------------------------------------------------------------------------------------------------------
 
    component MatrixLUT_A is
        generic (
            MAX_SIZE : positive
        );
        port (  
            clk        : in std_logic;                                 -- Clock signal
            rst        : in std_logic;                                 -- Reset signal
            en_A       : in std_logic;                                 -- Write enable signal
            row_index  : in integer range 0 to MAX_SIZE*MAX_SIZE - 1;  -- Row index of the LUT
            data_in_A  : in word_bit;                                  -- Input data
            data_out_A : out word_bit;                                 -- output data (read from the LUT)
            lut_ready  : out std_logic                                 -- Signals if LUT is fully loaded
        );
    end component;
 
    component MatrixLUT_B is
        generic (
            MAX_SIZE : positive
        );
        port (  
            clk        : in std_logic;                                  -- Clock signal
            rst        : in std_logic;                                  -- Reset signal
            en_B       : in std_logic;                                  -- Write enable signal
            col_index  : in integer range 0 to MAX_SIZE*MAX_SIZE - 1;   -- Column index of the LUT
            data_in_B  : in word_bit;                                   -- Input data
            data_out_B : out word_bit;                                  -- output data (read from the LUT)
            lut_ready  : out std_logic                                  -- Signals if LUT is fully loaded
        );
    end component;
 
    component MatrixLUT_C is
        generic (
            MAX_SIZE : positive := 3
        );
        port (  
            clk        : in std_logic;                                  -- Clock signal                              
            rst        : in std_logic;                                  -- Reset signal
            en_C       : in std_logic;                                  -- Write enable signal
            row_index  : in integer range 0 to MAX_SIZE*MAX_SIZE - 1;   -- Row index of the LUT
            data_in_C  : in out_bit;                                    -- Input data
            data_out_C : out out_bit;                                   -- output data (read from the LUT)
            lut_ready  : out std_logic                                  -- Signals if LUT is fully loaded  
        );
    end component;
 
    -------------------------------------------------------------------------------------------------------------------------------
    -- Matrix Multiplier Logic
    -------------------------------------------------------------------------------------------------------------------------------
    begin
    -- Map internal array elements to temporary signals for LUT connections
    A_row_signal <= A_row(row_data_counter);
    B_column_signal <= B_column(col_data_counter);
 
    -- Connect internal result to output ports when valid
    C_row <= C_row_internal when C_valid_signal = '1' ELSE (others => (others => '0'));
    C_valid <= C_valid_signal;
 
    -- LUTs  port mapping
    LUT_A: MatrixLUT_A
        generic map (
            MAX_SIZE => MAX_SIZE
        )
        port map (  
            clk         => clk,
            rst         => rst,
            en_A        => matrix_A_en,      -- Enable loading of data into LUT A      
            row_index   => row_counter,      -- Current row index
            data_in_A   => A_row_signal,     -- data element to store
            data_out_A  => A_lut_out,        -- Output for the multiplier
            lut_ready   => lut_ready_A    
        );
 
    LUT_B: MatrixLUT_B
        generic map (
            MAX_SIZE => MAX_SIZE
        )
        port map (  
            clk         => clk,
            rst         => rst,            
            en_B        => matrix_B_en,      -- Enable loading of data into LUT B
            col_index   => col_counter,      -- Current column index
            data_in_B   => B_column_signal,  -- Data element to store
            data_out_B  => B_lut_out,        -- Output for the multiplier
            lut_ready   => lut_ready_B    
        );
 
    LUT_C: MatrixLUT_C
        generic map (
            MAX_SIZE => MAX_SIZE
        )
        port map (  
            clk        => clk,
            rst        => rst,
            en_C       => en_C,                            -- Enable writing result to LUT C
            row_index  => write_counter,                   -- Index for storing result
            data_in_C  => std_logic_vector(dot_product),   -- Result of dot product calculation
            data_out_C => C_lut_out,                       -- Output for final result
            lut_ready  => open                             -- Not used
        );
 
    -------------------------------------------------------------------------------------------------------------------------------
    -- Matrix Multiplication Process
    -------------------------------------------------------------------------------------------------------------------------------
    -- State register process - handles synchronous state transitions and all counter updates
    state_reg: process(clk, rst)
    begin
        if rst = '1' then
            -- Reset all state and counters to initial values
            curr_state <= IDLE;
            col_data_counter <= 0;
            row_data_counter <= 0;
            row_counter <= 0;
            col_counter <= 0;
            sum_counter <= 0;
            write_counter <= 0;
            rows_ok <= '0';
            cols_ok <= '0';
            offset <= 0;
 
        elsif falling_edge(clk) then
            curr_state <= next_state;  
            -- LOAD_MAT state: Load matrices A and B into their respective LUTs
            if (next_state = LOAD_MAT) then
                -- Load matrix A (row-wise)
                if row_counter < N_size*M_size then -- Check if we're still within matrix bounds
                    if row_data_counter = M_size - 1 then -- End of current row
                        row_data_counter <= 0; -- Reset column counter for new row
                        if (row_counter = N_size*M_size - 1) then -- Last element of matrix
                            row_counter <= 0; -- Reset all counters
                            rows_ok <= '1'; -- Signal matrix completion
                        else
                            row_counter <= row_counter + 1; -- Move to next row
                        end if;
                    else -- Middle of current row
                        row_counter <= row_counter + 1; -- Move to next element
                        row_data_counter <= row_data_counter + 1; -- Increment column counter
                    end if;
                end if;
 
                -- Load matrix B (column-wise)
                if col_counter < M_size*K_size then
                    if col_data_counter = M_size - 1 then -- If we finish loading the data
                        col_data_counter <= 0;
                        if (col_counter = M_size*K_size - 1) then
                            col_counter <= 0;
                            cols_ok <= '1';
                        else
                            col_counter <= col_counter + 1;
                        end if;
                    else
                        col_counter <= col_counter + 1;
                        col_data_counter <= col_data_counter + 1;
                    end if;
                end if;
           
            -- CHECK state: Reset counters before multiplication    
            elsif (curr_state = CHECK) then
                row_data_counter <= 0;
                col_data_counter <= 0;
           
            -- MULTIPLY state: Perform matrix multiplication using dot products
            elsif (curr_state = MULTIPLY) then
                -- Handle dot product accumulation and iteration
                if sum_counter < M_size - 1 then
                    -- Increment sum_counter to iterate through the shared dimension
                    sum_counter <= sum_counter + 1;
                else
                    sum_counter <= 0; 
                end if;
 
                -- Increment row_counter to access next element from matrix A  
                if row_counter < N_size*M_size - 1 then
                    row_counter <= row_counter + 1; 
                else
                    row_counter <= 0;
                end if;
               
                -- Increment col_counter to access next element from matrix B
                if col_counter < M_size*K_size - 1 then  
                    col_counter <= col_counter + 1; 
                else
                    col_counter <= 0;
 
                    -- Update offset to track position in result matrix
                    if (offset = N_size*K_size - K_size) then
                        offset <= 0; -- Reset offset for next row
                    else
                        offset <= offset + K_size; -- Increment offset for next row
                    end if;  
                end if;
               
            -- MAT_C state: Store accumulated dot product in result matrix (C)    
            elsif (curr_state = MAT_C) then
                row_counter <= offset; -- Reset row counter based on current offset
                col_counter <= col_counter;
               
                -- Update write counter to store result in correct position
                if write_counter < N_size*K_size - 1 then
                    write_counter <= write_counter + 1; 
                else
                    write_counter <= 0;
                end if;
               
            -- RESULT state: Prepare output data from matrix C
            elsif (curr_state = RESULT) then
                -- Increment write_counter to read all elements from result matrix
                if write_counter < N_size*K_size - 1 then
                    write_counter <= write_counter + 1; 
                else
                    write_counter <= 0;
                end if;
               
            else
                row_counter <= 0;
                col_counter <= 0;
                rows_ok <= '0';
                cols_ok <= '0';
                sum_counter <= 0;
 
            end if;
        end if;
    end process;
 
    -- FSM logic - determines next state based on current state and control signals
    FSM: process(curr_state, A_valid, B_valid, lut_ready_A, lut_ready_B, matrix_A_en, matrix_B_en,
                sum_counter, offset, row_counter, col_counter, write_counter, rows_ok, cols_ok,load_complete_A, load_complete_B)
    begin
        -- default assignments
        next_state <= curr_state;
        start_multiplication <= '0';
        load_complete_A <= '0';
        load_complete_B <= '0';
        matrix_A_en <= '0';
        matrix_B_en <= '0';
        en_C <= '0';
        C_write_complete <= '0';
       
        -- State machine logic
        case curr_state is
            -- IDLE state: Wait for valid input data
            when IDLE =>
                start_multiplication <= '0';
                load_complete_A <= '0';
                load_complete_B <= '0';
                matrix_A_en <= '1'; 
                matrix_B_en <= '1'; 
 
                -- When both matrices are available, begin loading
                if A_valid = '1' and B_valid = '1' then
                    next_state <= LOAD_MAT;
                end if;
 
            -- LOAD_MAT state: Load matrices A and B into LUTs
            when LOAD_MAT =>
                -- enable loading
                matrix_A_en <= '1'; 
                matrix_B_en <= '1'; 
           
                -- When both matrices are loaded, proceed to CHECK state
                if cols_ok = '1' and rows_ok = '1' then
                    load_complete_A <= '1';
                    load_complete_B <= '1';
                    next_state <= CHECK; -- move to check state only after the complete loading of the LUTS
                end if;
                     
            -- CHECK state: Verify matrices are loaded properly
            when CHECK =>
                load_complete_A <= '1';
                load_complete_B <= '1';
 
                -- When loading is confirmed, start multiplication
                if load_complete_A = '1' and load_complete_B = '1' then
                    start_multiplication <= '1';
                    next_state <= MULTIPLY;
                end if;
               
            -- MULTIPLY state: Perform matrix multiplication operations
            when MULTIPLY =>
                start_multiplication <= '1'; -- Enable multiplication operations
   
                -- When shared dimension is fully processed, store result
                if sum_counter = M_size - 1 then
                    next_state <= MAT_C;  
                else
                    next_state <= MULTIPLY; -- Continue multiplication
                end if;
   
            -- MAT_C state: Store result in matrix C 
            when MAT_C =>
                en_C <= '1'; 
           
                -- Return to IDLE only when all of LUT A is completed (last row)
                if offset = 0 and col_counter = 0 and row_counter = 0 then
                    C_write_complete <= '1'; 
                    next_state <= RESULT; 
                else
                    next_state <= MULTIPLY;  -- Continue with next dot product
                end if;
               
            -- RESULT state: Prepare and output final result    
            when RESULT =>
                C_write_complete <= '1'; -- Signal result is ready for output
                next_state <= RESULT;
 
                -- When all elements are processed, end multiplication
                if (write_counter = N_size*K_size - 1) then
                    next_state <= END_MUL; 
                end if;
 
            -- END_MUL state: Complete operation
            when END_MUL =>
                C_write_complete <= '1'; 
                next_state <= IDLE; 
 
            when others =>
                next_state <= IDLE;
        end case;
    end process;
 
    -- Multiplication process - handles the actual multiplication and accumulation of results
    MUL: process(clk, rst)
    begin
        if falling_edge(clk) then
            if rst = '1' then
                -- Reset accumulators when reset is active
                dot_product <= (others => '0');  
                mul_result <= (others => '0');   
            elsif start_multiplication = '1' then
                -- Calculate product of current elements from A and B
                mul_result <= resize(unsigned(A_lut_out) * unsigned(B_lut_out), mul_result'length);
               
                -- Begin accumulating the dot product
                if sum_counter = 0 then
                    -- For the first product, initialize the dot_product accumulator
                    dot_product <= resize(unsigned(A_lut_out) * unsigned(B_lut_out), dot_product'length);
                else
                    -- For subsequent products, accumulate the results
                    dot_product <= dot_product + resize(unsigned(A_lut_out) * unsigned(B_lut_out), dot_product'length);
                end if;
            end if;
        end if;
    end process;
 
    -- Output preparation process - assembles final matrix C from LUT C
    RESULT_OUT: process(clk, rst)
    begin
        if falling_edge(clk) then
            if rst = '1' then
                C_row_internal <= (others => (others => '0')); 
                read_data_counter <= 0; 
                C_valid_signal <= '0';
            elsif C_write_complete = '1' and curr_state = RESULT then
                -- Assemble output matrix row by row
                if (read_data_counter = K_size - 1) then
                    C_row_internal(read_data_counter) <= C_lut_out; 
                    read_data_counter <= 0; -- Reset read data counter for the next row
                    C_valid_signal <= '1'; -- Signal row is valid
                else
                    -- Store element and advance to next position
                    read_data_counter <= read_data_counter + 1; 
                    C_row_internal(read_data_counter) <= C_lut_out; 
                    C_valid_signal <= '0'; -- Clear the valid signal (Not yet complete)
                end if;
            end if;
        end if;
    end process;
end architecture;