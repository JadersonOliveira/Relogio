library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity clk1Hz is
     Port ( CLK50Mhz: in  STD_LOGIC;
           CLK1hzout: out STD_LOGIC);
end clk1Hz;
 
architecture Behavioral of clk1Hz is
   signal pulso: STD_LOGIC := '0';
	signal contador: integer range 0 to 25000000 := 0;
begin

process (CLK50Mhz)
begin
	if (CLK50Mhz'event and CLK50Mhz = '1') then 
		if (contador = 25000000) then
			pulso <= NOT(pulso);
         contador <= 0;
       else
         contador <= contador+1;
       end if;
    end if;
  end process;
 CLK1hzout <=  pulso;
end Behavioral;