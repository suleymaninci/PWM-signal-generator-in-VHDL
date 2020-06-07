----------------------------------------------------------------------------------
-- Company: None
-- Engineer: Suleyman INCI 
-- Create Date: 27.05.2020 00:54:52
-- Design Name: Project_pwm
-- Module Name: pwmgen_tb - Behavioral
-- Target Devices: Nexys A7-100T --XC7A100T-1CSG324C
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
entity pwmgen_tb is
--  Port ( );
end pwmgen_tb;

architecture Behavioral of pwmgen_tb is
component pwmgen is
    port( input: in STD_LOGIC_VECTOR(5 downto 0);
          clk: in std_logic;
    ou: out std_logic);
end component;
signal input1: STD_LOGIC_VECTOR(5 downto 0);
signal clk,ou: std_logic;
signal counter1: STD_LOGIC_VECTOR(24 downto 0);

begin
U1: pwmgen port map(input1,clk,ou);

--device has 100MHz crystal. 10ns clock
clk_gen :process
   begin
  clk <= '0';
  wait for 5ns;
  clk <= '1';
  wait for 5ns;
   end process;
   
process
    begin
        input1 <= "000010"; --2  %5 1ms 
        wait for 20ms;
        input1 <= "000011"; --3 %7.5 1.5ms 
        wait for 20ms;
        input1 <= "000100"; --4 %10 2ms 
        wait for 20ms;
        input1 <= "001010"; --10 %25 5ms 
        wait for 20ms;
        input1 <= "010000"; --16 %40 8ms 
        wait for 20ms;
        input1 <= "010100"; --20 %50 10ms 
        wait for 20ms;
        input1 <= "100000"; --32 %80 16ms 
        wait for 20ms;
        input1 <= "101000"; --40 %100 20ms 
        wait for 20ms;
end process;

end Behavioral;
