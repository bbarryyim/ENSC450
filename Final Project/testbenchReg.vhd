library ieee;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity testbench is
end entity testbench;

architecture rtl of testbench is
   component RegFile
      port (a : in std_logic_vector(15 downto 0);
		        clk, reset : in std_logic;
		        z : out std_logic_vector(15 downto 0)
		        );
	 end component;
signal a : std_logic_vector(15 downto 0);
signal clk, reset : std_logic;
begin

RegFile: RegFile port map (a, clk, reset, z);

a <= X"1111" after 5 ns, X"1234" after 20 ns, X"0000" after 30 ns;
clk <= not clk after 5 ns;
reset <= '1' after 20 ns, '0' after 25 ns;

end architecture rtl;
