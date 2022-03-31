---------------------------------------------------------------------------------- 
-- Designer: Ronzani Marco 
-- Cod. persona: 10669641
-- Matricola: 934552
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity project_reti_logiche is
    Port ( i_clk : in STD_LOGIC;
           i_rst : in STD_LOGIC;
           i_start : in STD_LOGIC;
           i_data : in STD_LOGIC_VECTOR (7 downto 0);
           o_address : out STD_LOGIC_VECTOR (15 downto 0);
           o_done : out STD_LOGIC;
           o_en : out STD_LOGIC;
           o_we : out STD_LOGIC;
           o_data : out STD_LOGIC_VECTOR (7 downto 0));
end project_reti_logiche;

architecture FSM of project_reti_logiche is
    type state_type is (STAND_BY, START_UP_0, START_UP_1, S1, S2, S3, DONE);
    signal state : state_type;
    
    -- as an alternative it is replaceable with only the 8 bit of the read input
    signal encoded_data : std_logic_vector (15 downto 0);
    -- index 0 is the newest, index 1 the oldest
    signal old_2_bits : std_logic_vector (1 downto 0);
    
    -- it gets extended to 16 bits with "00000000"& and then, when needed, goes through a +1000 and +1001
    signal current_address : std_logic_vector (7 downto 0);
    signal words_to_process : std_logic_vector (7 downto 0);
    
begin

    -- consider moving both of those processes, expecially start, not so much reset, INSIDE encode, to force them to
    -- synchronize with the clock, so that the memory elements can be flip-flops instead of latches!
        
    reset : process(i_rst)
    begin
    
        state <= STAND_BY;
        encoded_data <= "0000000000000000";
        old_2_bits <= "00";
        current_address <= "00000000";
        words_to_process <= "00000000";
    
    end process;
    
    start : process(i_start)
    begin
    
        if i_start = '1' and state = STAND_BY then
            state <= START_UP_0;
        elsif i_start = '0' and state = DONE then
            state <= STAND_BY;
        end if;
    
    end process;
        
    encoder : process(i_clk)
    begin
    
        if i_clk = '1' then
        
            case state is
                when STAND_BY =>
                    state <= STAND_BY;
                    encoded_data <= "0000000000000000";
                    old_2_bits <= "00";
                    current_address <= "00000000";
                    words_to_process <= "00000000";
                    
                    o_address <= "00000000" & current_address;
                    o_done <= '0';
                    o_en <= '0';
                    o_we <= '0';
                    o_data <= "00000000";
                    
                when START_UP_0 =>
                    state <= START_UP_1;
                    
                    o_address <= "00000000" & current_address;
                    o_done <= '0';
                    o_en <= '1';
                    o_we <= '0';
                    o_data <= "00000000";
                    
                -- MAYBE there is a chance to eliminate this step and go down to 6 states!
                when START_UP_1 =>
                    state <= S1;
                    current_address <= std_logic_vector(1 + unsigned(current_address));
                    words_to_process <= i_data;
                    
                    o_address <= "00000000" & current_address;
                    o_done <= '0';
                    o_en <= '1';
                    o_we <= '0';
                    o_data <= "00000000";
                    
                when S1 =>
                    state <= S2;
                    
                    encoded_data(0) <= i_data(0) xor old_2_bits(1);
                    encoded_data(1) <= i_data(0) xor old_2_bits(0) xor old_2_bits(1);
                    encoded_data(2) <= i_data(1) xor old_2_bits(0);
                    encoded_data(3) <= i_data(1) xor i_data(0) xor old_2_bits(0);
                    encoded_data(4) <= i_data(2) xor i_data(0);
                    encoded_data(5) <= i_data(2) xor i_data(1) xor i_data(0);
                    encoded_data(6) <= i_data(3) xor i_data(1);
                    encoded_data(7) <= i_data(3) xor i_data(2) xor i_data(1);
                    encoded_data(8) <= i_data(4) xor i_data(2);
                    encoded_data(9) <= i_data(4) xor i_data(3) xor i_data(2);
                    encoded_data(10) <= i_data(5) xor i_data(3);
                    encoded_data(11) <= i_data(5) xor i_data(4) xor i_data(3);
                    encoded_data(12) <= i_data(6) xor i_data(4);
                    encoded_data(13) <= i_data(6) xor i_data(5) xor i_data(4);
                    encoded_data(14) <= i_data(7) xor i_data(5);
                    encoded_data(15) <= i_data(7) xor i_data(6) xor i_data(5);
                    old_2_bits(0) <= i_data(8);
                    old_2_bits(1) <= i_data(7);
                                        
                    o_address <= std_logic_vector(1000 + unsigned("00000000" & current_address)*2);
                    o_done <= '0';
                    o_en <= '1';
                    o_we <= '1';
                    o_data <= encoded_data(7 downto 0);
                    
                when S2 =>
                    state <= S3;
                    
                    o_address <= std_logic_vector(1001 + unsigned("00000000" & current_address)*2);
                    o_done <= '0';
                    o_en <= '1';
                    o_we <= '1';
                    o_data <= encoded_data(7 downto 0);
                    
                when S3 =>
                    state <= S1;
                    current_address <= std_logic_vector(1 + unsigned(current_address));
                    words_to_process <= std_logic_vector(unsigned(words_to_process) - 1);
                                    
                    o_address <= "00000000" & current_address;
                    o_done <= '0';
                    o_en <= '1';
                    o_we <= '0';
                    o_data <= "00000000";
                    
                when DONE =>
                    state <= DONE;
                    encoded_data <= "0000000000000000";
                    old_2_bits <= "00";
                    current_address <= "00000000";
                    words_to_process <= "00000000";
                    
                    o_address <= current_address;
                    o_done <= '1';
                    o_en <= '0';
                    o_we <= '0';
                    o_data <= "00000000";
                    
            end case;
            
            if words_to_process = "00000000" and state = S1 then
                state <= DONE;
            end if;
            
        end if;
    end process;

end FSM;
