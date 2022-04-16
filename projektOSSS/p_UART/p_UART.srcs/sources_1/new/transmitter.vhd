
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all; --we can use unsigned type

entity transmitter is
    Port ( A0_i : in STD_LOGIC;
           A1_i : in STD_LOGIC;
           A2_i : in STD_LOGIC;
           A3_i : in STD_LOGIC;
           A4_i : in STD_LOGIC;
           A5_i : in STD_LOGIC;
           A6_i : in STD_LOGIC;
           A7_i : in STD_LOGIC;
           S1_o : out std_logic;
          -- S1_o : out std_logic_vector(7 downto 0);
           
           clk  : in STD_LOGIC
           );
end transmitter;

architecture Behavioral of transmitter is

 signal s_en : std_logic;
 -- signal s_cnt : unsigned(4 downto 0);
 signal s_k  : natural;
 
begin
clk_en0 : entity work.clock_enable
        generic map(
            g_MAX => 4 --25000000 -- 250 ms, we will change it to our baud rate
        )
        port map(
            clk   => clk,
            ce_o  => s_en
        );
        
 transmitter_P_to_S : process(clk)
 begin
    if rising_edge(clk) then
        case s_k is 
        
            when 0 =>
               -- S1_o(0) <= A0_i;
                S1_o <= A0_i;
                s_k <= s_k+1;
                
            when 1 =>
            -- S1_o(1) <= A0_i;
                S1_o <= A1_i;
                s_k <= s_k+1;
                
            when 2 =>
            -- S1_o(2) <= A0_i;
                S1_o <= A2_i;
                s_k <= s_k+1;
           
            when 3 =>
            -- S1_o(3) <= A0_i;
                S1_o <= A3_i;
                s_k <= s_k+1;
                
            when 4 =>
            -- S1_o(4) <= A0_i;
                S1_o <= A4_i;
                s_k <= s_k+1;
                
            when 5 =>
            -- S1_o(5) <= A0_i;
                S1_o <= A5_i;
                s_k <= s_k+1;
                
            when 6 =>
            -- S1_o(6) <= A0_i;
                S1_o <= A6_i;
                s_k <= s_k+1;
                
            when 7 =>
            -- S1_o(7) <= A0_i;
                S1_o <= A7_i;
                s_k <= s_k+1;
                
            when others =>
                s_k <= 0;
                
        end case;
    
    end if; --rising edge
 
 end process transmitter_P_to_S;
 
end Behavioral;
