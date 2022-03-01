------------------------------------------------------------
--
-- Example of 4-bit binary comparator using the when/else
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
-- Entity declaration for multiplexer
------------------------------------------------------------
entity multiplexer_xbit is
    port(
        a_i           : in  std_logic_vector(3 - 1 downto 0); -- data a
        b_i           : in  std_logic_vector(3 - 1 downto 0); -- data b
        c_i           : in  std_logic_vector(3 - 1 downto 0); -- data c
        d_i           : in  std_logic_vector(3 - 1 downto 0); -- data d
        sel_i         : in  std_logic_vector(3 - 1 downto 0); -- data sel
        f_o           : in  std_logic_vector(3 - 1 downto 0) -- output
    );
    
end entity multiplexer_xbit;

------------------------------------------------------------
-- Architecture body for multiplexer_xbit
------------------------------------------------------------
architecture Behavioral of multiplexer_xbit is
begin
   y_o <= a_i when (addr_i = "000" and en_i = '1') else
       b_i when (addr_i = "001" and en_i = '1') else
       c_i when (addr_i = "010" and en_i = '1') else
       d_i;  
end architecture Behavioral;