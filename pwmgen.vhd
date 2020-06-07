library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity pwmgen is
    port( input: in STD_LOGIC_VECTOR(5 downto 0);
          clk: in std_logic;
    ou: out std_logic);
end pwmgen;
architecture Behavioral of pwmgen is
signal pwmperiod : time := 20 ms;
constant pwmper: integer :=2000000; --20ms/10ns counter value
signal counter,counter_next:integer:=0;--counter init 
signal input1: STD_LOGIC_VECTOR(5 downto 0);
signal ou1,ou2: std_logic;--output signal
signal convin : integer;--input logic vector to integer signal
begin

init: process(clk,input)
begin

if Rising_Edge(clk) then
 convin <=(to_integer(unsigned(input)))*50000;--duty cycle counter process.50000 is base
    if counter<2000000 then
        counter<=counter+1;--20ms counter
    end if;
        
    if (counter < convin) then
        ou1<='1';--high mode
    else
        ou1<='0';--low mode
    end if;
    
    if (counter = pwmper) then
        counter<=0;--reset counter
    end if;
    
end if;
end process;
ou<=ou1;
 
end Behavioral;
