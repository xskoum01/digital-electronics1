----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2022 01:11:57 PM
-- Design Name: 
-- Module Name: sensor - Behavioral
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

entity sensor is
  Port (
        --clk      : in  std_logic;  -- Main clock
        --reset    : in  std_logic;  -- Synchronous reset
        sensor_i     : in  std_logic; 
        LED_o        : out std_logic
   );
end sensor;

architecture Behavioral of sensor is
begin

    p_sensor : process(sensor_i)
    begin
    if (sensor_i = '1') then
        LED_o <= '1';
    else
        LED_o <= '0';
    end if;
    end process p_sensor;
    
end Behavioral;
