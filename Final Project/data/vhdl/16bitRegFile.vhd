library ieee;
--use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity RegFile is
port (	addressA, addressB : in std_logic_vector(4 downto 0);
      	dataIn : in std_logic_vector(15 downto 0);
	addressIn : in std_logic_vector(4 downto 0);
      	clk, reset, write : in std_logic;
      	outA, outB : out std_logic_vector(15 downto 0)
		);
end entity RegFile;

architecture RTL of RegFile is
	component SingleReg
		port(	data : in std_logic_vector(15 downto 0);
			clk, reset, write : in std_logic;
			dataOut : out std_logic_vector(15 downto 0)
		);
	end component;
type rf_array is array (0 to 31) of std_logic_vector(15 downto 0);
signal regIn, regOut : rf_array;

begin

Gen_Reg:
	for i in 0 to 31 generate
		RegX: SingleReg port map (regIn(i), clk, reset, write, regOut(i));
	end generate Gen_Reg;

--Write to Registers
WriteReg: process (dataIn, addressIn, regOut)
begin
  for i in 0 to 31 loop
    if i = to_integer(unsigned(addressIn)) then
	regIn(i) <= dataIn;
    else regIn(i) <= regOut(i);
    end if;
  end loop;
end process;

--Read from Registers
ReadoutA: process (regOut, addressA)
begin
  outA <= regOut(to_integer(unsigned(addressA)));
end process;

ReadoutB: process (regOut, addressB)
begin
  outB <= regOut(to_integer(unsigned(addressB)));
end process;

end architecture RTL;
