---------------------------------------------------------------------------------- 
-- Designer: Ronzani Marco 
-- Cod. persona: 10669641
-- Matricola: 934552
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity project_reti_logiche is
    Port ( i_clk : in STD_LOGIC;                            -- clock, tested down to a period of 3.738 ns
           i_rst : in STD_LOGIC;                            -- reset, when 1 forces every internal registry and output to 0s and the state to STAND_BY
           i_start : in STD_LOGIC;                          -- start signal, if provided during STAND_BY makes START_UP_0 the next state and initiates the encoding 
           i_data : in STD_LOGIC_VECTOR (7 downto 0);       -- byte read from memory
           o_address : out STD_LOGIC_VECTOR (15 downto 0);  -- address where the memory is currently operating
           o_done : out STD_LOGIC;                          -- 1 only when the FSM state is DONE
           o_en : out STD_LOGIC;                            -- 1 only during operation, 0 during the STAND_BY and DONE states
           o_we : out STD_LOGIC;                            -- 1 only during mem. writes, that being when state is S1_COMPUTE or S2
           o_data : out STD_LOGIC_VECTOR (7 downto 0));     -- byte written to memory
end project_reti_logiche;

architecture FSM of project_reti_logiche is
    type state_type is (STAND_BY, START_UP_0, START_UP_1, S1_WAIT, S1_COMPUTE, S2, S3, DONE);
    subtype ushort is unsigned(15 downto 0);                -- unsigned 16 bit integer type used to calculate o_address
    subtype ushorter is unsigned(7 downto 0);               -- unsiged 8 bit integer type used to calculate current_address and words_to_process
    
    signal state : state_type;                              -- FSM's state, synthesized in a 3 bit register
    
    signal encoded_data : std_logic_vector (7 downto 0);    -- stores the last 8 bits of the 16 that are calculated from convolution of the 8 read from memory
    -- NOTE: index 0 is the newest, index 1 the oldest
    signal old_2_bits : std_logic_vector (1 downto 0);      -- last 2 bits of 8 read from memory in the previous encoding cycle, stored for the next encoding cycle
    
    -- NOTE: this gets extended to 16 bits with "00000000"& and then, when needed, goes through a +1000 and +1001
    signal current_address : std_logic_vector (7 downto 0); -- address of memory where the machine is currently operating, maxes out to 255 as of specs
    signal words_to_process : std_logic_vector (7 downto 0);-- number of bytes left to process, gets decreased until 0, maxes out to 255 as of specs
    
begin
        
    encoder : process(i_clk, i_rst)
    begin
                                
        if i_rst = '1' then                                 -- when i_rst triggers the process this forces every registry and output back to 0s and the state to STAND_BY
            
            state <= STAND_BY;
            encoded_data <= "00000000";
            old_2_bits <= "00";
            current_address <= "00000000";
            words_to_process <= "00000000";
            
            o_address <= "0000000000000000";
            o_done <= '0';
            o_en <= '0';
            o_we <= '0';
            o_data <= "00000000";
            
        elsif rising_edge(i_clk) then
                
            case state is
            
                when STAND_BY =>                            -- stays in STAND_BY until i_start goes to 1, then enables the memory and moves to START_UP_0
                    if i_start = '0' then
                        state <= STAND_BY;
                        o_en <= '0';
                    else
                        state <= START_UP_0;
                        o_en <= '1';
                    end if;
                    
                    encoded_data <= "00000000";
                    old_2_bits <= "00";
                    current_address <= "00000000";
                    words_to_process <= "00000000";
                                    
                    o_address <= "0000000000000000";
                    o_done <= '0';
                    o_we <= '0';
                    o_data <= "00000000";
                    
                when START_UP_0 =>                          -- waits a cycle for the memory to output the correct value then moves to START_UP_1
                    state <= START_UP_1;
                    encoded_data <= "00000000";
                    old_2_bits <= "00";
                    current_address <= "00000000";
                    words_to_process <= "00000000";
                    
                    o_address <= "0000000000000000";
                    o_done <= '0';
                    o_en <= '1';
                    o_we <= '0';
                    o_data <= "00000000";
                    
                when START_UP_1 =>                          -- reads the number of words to process from memory address 0x00, then moves to S1_WAIT
                    state <= S1_WAIT;
                    encoded_data <= "00000000";
                    old_2_bits <= "00";
                    words_to_process <= i_data;
                    current_address <= std_logic_vector(1 + ushorter(current_address));
                    
                    o_address <= "00000000" & std_logic_vector(1 + ushorter(current_address));
                    o_done <= '0';
                    o_en <= '1';
                    o_we <= '0';
                    o_data <= "00000000";
                    o_data <= "00000000";
                    
                when S1_WAIT =>                             -- if words_to_process is not 0 waits a cycle for the memory to output the correct value then moves to S1_COMPUTE, otherwise moves to DONE
                    if words_to_process = "00000000" then
                        state <= DONE;
                    else
                        state <= S1_COMPUTE;
                    end if;
                    
                    encoded_data <= "00000000";
                    old_2_bits <= old_2_bits;
                    words_to_process <= words_to_process;
                    current_address <= current_address;

                    o_address <= "00000000" & current_address;
                    o_done <= '0';
                    o_en <= '1';
                    o_we <= '0';
                    o_data <= "00000000";
                    
                when S1_COMPUTE =>                          -- reads the data to encode from memory and procedes to encode it, already writing the first 8 bits to memory and saving the other 8 for the next state: S2
                    state <= S2;
                    
                    -- encoding and storage of the last 8 bits in encoded_data
                    encoded_data(7) <= i_data(3) xor i_data(5);
                    encoded_data(6) <= i_data(3) xor i_data(4) xor i_data(5);
                    encoded_data(5) <= i_data(2) xor i_data(4);
                    encoded_data(4) <= i_data(2) xor i_data(3) xor i_data(4);
                    encoded_data(3) <= i_data(1) xor i_data(3);
                    encoded_data(2) <= i_data(1) xor i_data(2) xor i_data(3);
                    encoded_data(1) <= i_data(0) xor i_data(2);
                    encoded_data(0) <= i_data(0) xor i_data(1) xor i_data(2);
                    
                    words_to_process <= words_to_process;
                    current_address <= current_address;
                    
                                   
                    o_address <= std_logic_vector(998 + ushort("00000000" & current_address) + ushort("00000000" & current_address));
                    o_done <= '0';
                    o_en <= '1';
                    o_we <= '1';
                    -- output of the first 8 encoded bits
                    o_data <= (i_data(7) xor old_2_bits(1)) &
                        (i_data(7) xor old_2_bits(0) xor old_2_bits(1)) &
                        (i_data(6) xor old_2_bits(0)) &
                        (i_data(6) xor i_data(7) xor old_2_bits(0)) &
                        (i_data(5) xor i_data(7)) &
                        (i_data(5) xor i_data(6) xor i_data(7)) &
                        (i_data(4) xor i_data(6)) &
                        (i_data(4) xor i_data(5) xor i_data(6));
                              
                    -- storage of the last 2 bits read from memory for the next encoding cycle
                    old_2_bits(0) <= i_data(0);
                    old_2_bits(1) <= i_data(1);
                    
                when S2 =>                                  -- writes to memory the last 8 encoded bits stored in encoded_data and moves to S3
                    state <= S3;
                    encoded_data <= "00000000";
                    old_2_bits <= old_2_bits;
                    words_to_process <= words_to_process;
                    current_address <= current_address;
                    
                    o_address <= std_logic_vector(999 + ushort("00000000" & current_address) + ushort("00000000" & current_address));
                    o_done <= '0';
                    o_en <= '1';
                    o_we <= '1';
                    o_data <= encoded_data;
                    
                when S3 =>                                  -- sets up the address of memory that will be read in S1_compute, then moves to S1_WAIT
                    state <= S1_WAIT;
                    encoded_data <= "00000000";
                    old_2_bits <= old_2_bits;
                    current_address <= std_logic_vector(1 + ushorter(current_address));
                    words_to_process <= std_logic_vector(ushorter(words_to_process) - 1);
                                    
                    o_address <= "00000000" & std_logic_vector(1 + ushorter(current_address));
                    o_done <= '0';
                    o_en <= '1';
                    o_we <= '0';
                    o_data <= "00000000";
                    
                when DONE =>                                -- sets o_done to 1 and waits until i_start goes to 0 to move to STAND_BY after resetting every registry and output back to 0s
                    if i_start = '1' then
                        state <= DONE;
                        encoded_data <= "00000000";
                        old_2_bits <= "00";
                        current_address <= "00000000";
                        words_to_process <= "00000000";
                        
                        o_address <= "00000000" & current_address;
                        o_done <= '1';
                        o_en <= '0';
                        o_we <= '0';
                        o_data <= "00000000";
                    else
                        state <= STAND_BY;
                        encoded_data <= "00000000";
                        old_2_bits <= "00";
                        current_address <= "00000000";
                        words_to_process <= "00000000";
                        
                        o_address <= "00000000" & current_address;
                        o_done <= '0';
                        o_en <= '0';
                        o_we <= '0';
                        o_data <= "00000000";
                    end if;                    
                    
            end case;
                                            
        end if;
        
    end process;

end FSM;
