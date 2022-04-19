----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2022 01:52:30 PM
-- Design Name: 
-- Module Name: tb_sensor - Behavioral
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

entity tb_sensor is
--  Port ( );
end tb_sensor;

architecture Behavioral of tb_sensor is

--Local signals
    signal s_sensor : std_logic;
    signal s_LED    : std_logic;

begin
 uut_sensor : entity work.sensor
        
        port map(
            sensor_i => s_sensor,
            LED_o    => s_LED
        );
        
p_stimulus : process
    begin
        s_sensor <='1'; wait for 120 ns; 
        s_sensor <='0'; wait for 150 ns;
        s_sensor <='1'; wait for 50 ns;
        s_sensor <='0'; wait for 26 ns;
    end process p_stimulus;
    
end Behavioral;
