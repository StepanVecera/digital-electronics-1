----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.04.2022 11:40:20
-- Design Name: 
-- Module Name: tb_transmitter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_transmitter is
--  Port ( );
end tb_transmitter;

architecture Behavioral of tb_transmitter is

constant c_CLK_9600HZ_PERIOD : time := 10 ns;
-- local signal
    signal s_A0  : STD_LOGIC;
    signal s_A1  : STD_LOGIC;
    signal s_A2  : STD_LOGIC;
    signal s_A3  : STD_LOGIC;
    signal s_A4  : STD_LOGIC;
    signal s_A5  : STD_LOGIC;
    signal s_A6  : STD_LOGIC;
    signal s_A7  : STD_LOGIC;
   -- signal s_S1  : STD_LOGIC_VECTOR (7 downto 0);
    signal s_S1  : STD_LOGIC;
    signal s_clk : std_logic;
    
    
begin
    uut_Behavioral : entity work.transmitter
    Port map(
        A0_i => s_A0,
        A1_i => s_A1,
        A2_i => s_A2,
        A3_i => s_A3,
        A4_i => s_A4,
        A5_i => s_A5,
        A6_i => s_A6,
        A7_i => s_A7,
        S1_o => s_S1,
        clk  => s_clk
        );
        
 p_clk_gen : process
    begin
        while now < 750 ns loop -- 75 periods of 100MHz clock
            s_clk <= '0';
            wait for c_CLK_9600HZ_PERIOD / 2;
            s_clk <= '1';
            wait for c_CLK_9600HZ_PERIOD / 2;
        end loop;
        wait;
  end process p_clk_gen;
  p_stimulus : process
    begin
        s_A0 <= '1';
        s_A1 <= '0';
        s_A2 <= '0';
        s_A3 <= '0';
        s_A4 <= '1';
        s_A5 <= '0';
        s_A6 <= '0';
        s_A7 <= '0';
        wait for 20ms; 
 
  end process p_stimulus;


end architecture Behavioral;
