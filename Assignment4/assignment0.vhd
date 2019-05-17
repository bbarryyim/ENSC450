library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity assignment0 is
port( a,b,c,d  : in std_logic;
      z        : out std_logic
);
end assignment0;

architecture rtl of assignment0 is
 signal x, y, j : std_logic;
begin

 x <= a and b;
 y <= c xor d;
 j <= (c and d) nor d;
 z <= y when x = '0' else j;
end rtl;
