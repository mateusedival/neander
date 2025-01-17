library ieee;
use ieee.std_logic_1164.all;

entity CCC_9 is
	port(
        X : in std_logic;
        Q : in std_logic_vector(3 downto 0);        
        K : out  std_logic_vector(3 downto 0);
        J : out  std_logic_vector(3 downto 0)       
	);
end CCC_9;

architecture comp of CCC_9 is
    begin
        K(0) <= '1' and X;        
        J(0) <= ((not Q(1) and not Q(2)) or not Q(3)) and X;
      	K(1) <= (Q(0) or Q(3)) and X;
      	J(1) <= (Q(0) and not Q(3)) and X;
      	K(2) <= ((Q(0) and Q(1)) or Q(3)) and X;
      	J(2) <= (Q(0) and Q(1) and not Q(3)) and X;
      	K(3) <= (Q(0) or Q(1) or Q(2)) and X;
      	J(3) <= (Q(0) and Q(1) and Q(2)) and X;

end architecture comp;


