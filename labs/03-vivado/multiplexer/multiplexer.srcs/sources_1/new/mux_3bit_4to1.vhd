------------------------------------------------------------
--
-- Example of 2-bit binary  using the when/else
-- assignments.
-- EDA Playground
--
-- Copyright (c) 2020-Present Tomas Fryza
-- Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for 2-bit binary 
------------------------------------------------------------
entity mux_3bit_4to1 is
    port(
        d_i           : in  std_logic_vector(2 downto 0);
        c_i           : in  std_logic_vector(2 downto 0);
        b_i           : in  std_logic_vector(2 downto 0);
		a_i           : in  std_logic_vector(2 downto 0);
		
        sel_i         : in  std_logic;
        
		f_o   : out std_logic_vector(2 downto 0)
    );
end entity mux_3bit_4to1;

------------------------------------------------------------
-- Architecture body for 2-bit binary 
------------------------------------------------------------
architecture Behavioral of mux_3bit_4to1 is
begin

    f_o <= a_i when (sel_i = 00);
    f_o <= b_i when (sel_i = 01);
    f_o <= c_i when (sel_i = 10);
    f_o <= d_i when (sel_i = 11);
    -- WRITE "GREATER" AND "EQUALS" ASSIGNMENTS HERE
    -- B_less_A_o    <= '1' when (b_i < a_i) else '0';
end architecture Behavioral;
