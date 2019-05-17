library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--use ieee.numeric_std.all;

entity assignment1 is
   port( a, b : in std_logic_vector(7 downto 0);
         clk : in std_logic;
         reset : in std_logic;
	 z : out std_logic_vector(15 downto 0));
end entity assignment1;

architecture SAD  of assignment1 is
signal N1 : std_logic_vector(7 downto 0) ;
signal N2 : std_logic_vector(7 downto 0) ;
signal M1, M2, RZ, diffAB : std_logic_vector(15 downto 0) ;
signal RA, RB : std_logic_vector(7 downto 0);
signal diff, abDiff : signed(15 downto 0);
signal sum : std_logic_vector(15 downto 0);
begin  -- SAD 


N1 <= "00100101"; 
N2 <= "00110111";

RegA: process(clk,reset)
  begin
  if reset = '1' then
      RA <= "00000000";
  elsif (clk'event and clk = '1') then
    RA <= a;
  end if;
end process RegA;

RegB: process(clk,reset)
  begin
  if reset = '1' then
      RB <= "00000000";
  elsif (clk'event and clk = '1') then
    RB <= b;
  end if;
end process RegB;

--M1 <= unsigned(N1*to_integer(RA));
M1 <= N1*RA;
--M2 <= unsigned(N2*to_integer(RB));
M2 <= N2*RB;

--diff <= signed('0' &( M1 - M2));
diff <= signed(M1 - M2);

abDiff <= abs(diff);

diffAB <= std_logic_vector(abDiff(15 downto 0));

sum <= diffAB + RZ;
--sum <= RZ;

RegZ: process(clk,reset)
  begin
  if reset = '1' then
      RZ <= "0000000000000000";
  elsif (clk'event and clk = '1') then
    RZ <= sum(15 downto 0);
  end if;
end process RegZ;

z <= RZ;
      
end SAD;


