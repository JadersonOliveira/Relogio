library ieee;
use ieee.std_logic_1164.all;

entity Divisor_freq is
port (
		clock: in std_logic;
		final: in integer;
		clkout: out std_logic
		
		);
		
end Divisor_freq;

architecture Divisor_freq of Divisor_freq is
signal contagem: integer := 1;
signal estado   : std_logic;

begin

	process(clock, contagem)
	begin
		if (clock = '1' and clock'EVENT) then
			if contagem = final then
				estado <= not estado;
				contagem <= 1;
			else
				contagem <= contagem + 1;
			end if;
				
		end if;
	end process;
	
	clkout <= estado;
	
end Divisor_freq;