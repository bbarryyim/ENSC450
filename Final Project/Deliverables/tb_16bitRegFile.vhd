library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_16bitRegFile  is
end entity tb_16bitRegFile ;

architecture rtl of tb_16bitRegFile  is
   component RegFile
      port (	addressA, addressB : in std_logic_vector(4 downto 0);
      		dataIn : in std_logic_vector(15 downto 0);
		addressIn : in std_logic_vector(4 downto 0);
      		clk, reset, write : in std_logic;
      		outA, outB : out std_logic_vector(15 downto 0)
		        );
	 end component;
signal addressA, addressB, addressIn : std_logic_vector(4 downto 0);
signal dataIn, outA, outB : std_logic_vector(15 downto 0);
signal clk, reset, write : std_logic := '0';

begin

instance: RegFile port map (addressA, addressB, dataIn, addressIn, clk, reset, write, 
				outA, outB);


clk <= not clk after 10 ns;
write <= not write after 20 ns;
reset <= '1' after 5 ns, '0' after 15 ns;

addressA <= "11111" after 20 ns, "11110" after 40 ns, "11100" after 60 ns, "00000" after 80 ns;
addressB <= "00000" after 20 ns, "00001" after 40 ns, "00011" after 60 ns, "00111" after 80 ns;
addressIn <= "00000";

dataIn <= X"000F";

end architecture rtl;
