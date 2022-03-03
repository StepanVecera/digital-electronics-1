----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2022 11:37:45 AM
-- Design Name: 
-- Module Name: tb_hex_7seg - Behavioral
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

entity tb_hex_7seg is
--  Port ( );
end tb_hex_7seg;

architecture testbench of tb_hex_7seg is
    -- Local signals
    signal s_hex  : std_logic_vector(4 - 1 downto 0);
    signal s_seg  : std_logic_vector(7 - 1 downto 0);

begin
    -- Connecting testbench signals with decoder entity
    -- (Unit Under Test)
    uut_hex_7seg : entity work.hex_7seg
        port map(
            hex_i => s_hex,
            seg_o => s_seg
        );
  p_stimulus : process
    begin
        report "Stimulus process started" severity note;

        -- First test case
        s_hex <= "0000"; wait for 50 ns;
        assert (s_seg = "0000001")
        report "Input combination 0000 FAILED" severity error;
        
        --second
        s_hex <= "0001"; wait for 50 ns;
        assert (s_seg = "1001111")
        report "Input combination 0001 FAILED" severity error;
        
                --third
        s_hex <= "0010"; wait for 50 ns;
        assert (s_seg = "1101101")
        report "Input combination 0010 FAILED" severity error;
                        --4
        s_hex <= "0011"; wait for 50 ns;
        assert (s_seg = "1111001")
        report "Input combination 0011 FAILED" severity error;
                        --5
        s_hex <= "0100"; wait for 50 ns;
        assert (s_seg = "0110011")
        report "Input combination 0100 FAILED" severity error;
                        --6
        s_hex <= "0101"; wait for 50 ns;
        assert (s_seg = "1011011")
        report "Input combination 0101 FAILED" severity error;
                        --7
        s_hex <= "0110"; wait for 50 ns;
        assert (s_seg = "1111011")
        report "Input combination 0110 FAILED" severity error;
                        --8
        s_hex <= "0111"; wait for 50 ns;
        assert (s_seg = "1110000")
        report "Input combination 0111 FAILED" severity error;
                        --9
        s_hex <= "1000"; wait for 50 ns;
        assert (s_seg = "0000000")
        report "Input combination 1000 FAILED" severity error;
                         --9
        s_hex <= "1001"; wait for 50 ns;
        assert (s_seg = "0000100")
        report "Input combination 1001 FAILED" severity error;
                         --A
        s_hex <= "1010"; wait for 50 ns;
        assert (s_seg = "0001000")
        report "Input combination 1010 FAILED" severity error;
                                 --B
        s_hex <= "1011"; wait for 50 ns;
        assert (s_seg = "1100000")
        report "Input combination 1011 FAILED" severity error;
                                 --C
        s_hex <= "1100"; wait for 50 ns;
        assert (s_seg = "0110001")
        report "Input combination 1100 FAILED" severity error;
                                 --D
        s_hex <= "1101"; wait for 50 ns;
        assert (s_seg = "1000010")
        report "Input combination 1101 FAILED" severity error;


        -- WRITE OTHER TEST CASES HERE


        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end architecture testbench;
