library ieee;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity SingleReg is
port (	data : in std_logic_vector(15 downto 0);
	clk, reset, write : in std_logic;
	dataOut : out std_logic_vector(15 downto 0)
		);
end entity SingleReg;

architecture RTL of SingleReg is
signal Reg : std_logic_vector(15 downto 0);
begin

SingleReg: process(clk,reset,write)
	begin
	if reset = '1' then
		Reg <= X"0000";
	elsif (clk'event and clk = '1' and write = '1') then
		Reg <= data;
	end if;
end process SingleReg;

dataOut <= Reg;

end architecture RTL;
