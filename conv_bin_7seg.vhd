library ieee;
use ieee.std_logic_1164.all;

entity conv_bin_7seg is
port(
    d: in std_logic_vector (3 downto 0);
	 piscar,clock: in std_logic;
	 modo2: integer range 0 to 2;
    q: out std_logic_vector (6 downto 0)
);
end conv_bin_7seg;

architecture arcConv of  conv_bin_7seg is

component Divisor_freq is
	port (
		clock: in std_logic;
		final: in integer;
		clkout: out std_logic
	);
end component;

signal clk2out: std_logic;

begin
	R0: Divisor_freq port map(clock,10000000,clk2out);
	process(clock,d)
	begin
		if(piscar='0' or modo2 = 2)	then
		 case d is
				when "0000" => q<="0000001"; -- 0 -> 01
				when "0001"	=> q<="1001111"; -- 1 -> 4F
				when "0010"	=> q<="0010010"; -- 2 -> 12
				when "0011"	=> q<="0000110"; -- 3 -> 06
				when "0100"	=> q<="1001100"; -- 4 -> 4c
				when "0101"	=> q<="0100100"; -- 0 -> 01
				when "0110"	=> q<="0100000";
				when "0111"	=> q<="0001101";
				when "1000"	=> q<="0000000";
				when "1001"	=> q<="0000100";
				when others	=> q<="1111111";
				end case;				 
		elsif(piscar='1' and (modo2 = 0 or modo2 = 1)) then
			if(clk2out = '0') then 
				 case d is
					when "0000" => q<="0000001"; -- 0 -> 01
					when "0001"	=> q<="1001111"; -- 1 -> 4F
					when "0010"	=> q<="0010010"; -- 2 -> 12
					when "0011"	=> q<="0000110"; -- 3 -> 06
					when "0100"	=> q<="1001100"; -- 4 -> 4c
					when "0101"	=> q<="0100100"; -- 0 -> 01
					when "0110"	=> q<="0100000";
					when "0111"	=> q<="0001101";
					when "1000"	=> q<="0000000";
					when "1001"	=> q<="0000100";
					when others	=> q<="1111111";
					end case;
			elsif(clk2out = '1') then
				q <= "1111111";
			end if;
		end if;
	end process;
end arcConv;
