library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity tb_assignment1 is	--5
end entity tb_assignment1;

architecture SAD of tb_assignment1 is

component assignment1		--10
port( a, b : in std_logic_vector(7 downto 0);
      clk, reset : in std_logic;
	z : out std_logic_vector(15 downto 0)
);
end component assignment1;

signal a, b : std_logic_vector(7 downto 0);
signal clk, reset : std_logic := '0';
signal z : std_logic_vector(15 downto 0);
				--20
begin

instance: assignment1 port map(a,b,clk,reset,z);

reset <= '1' after 5 ns, '0' after 25 ns;

inputdata : process		--25
	begin
	 wait for 10 ns;
	 a <= "10101010"; b <= "01010101";
--	 clk <= not clk after 20ns;
	end process;

clk <= not clk after 20 ns;

end architecture SAD;


