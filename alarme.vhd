library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity alarme is
port(
	clock, reset, start_stop, config, set, mode: in std_logic;
    seg_uni, seg_dez, min_uni, min_dez, hora_uni, hora_dez : out std_logic_vector (3 downto 0)
);
end alarme;

architecture alarme_arch of alarme is
 signal x : std_logic; 
begin
	process(clock, reset)
	
		variable cont_seg_uni : integer range 0 to 9;
		variable cont_seg_dez : integer range 0 to 5;
		variable cont_min_uni : integer range  0 to 9;
		variable cont_min_dez : integer range 0 to 5;
		variable cont_hora_uni : integer range  0 to 9;
		variable cont_hora_dez : integer range 0 to 5;
		variable estado_hora_ou_min : integer range 0 to 1;
		variable modo : integer range 0 to 2;
		
		begin			
			cont_seg_uni := 0;
			cont_seg_dez := 0;
			
			if(mode'event and mode = '1') then					
				modo := modo + 1;
				if(modo > 2) then        -- selecionar o modo ao pressionar o botao mode
						modo := 0;
				end if;																			
			end if;
			
			if(config = '1' and modo = 1) then
				if (set'event and set = '1') then																	
					estado_hora_ou_min := estado_hora_ou_min + 1;  -- seleciona a hora ou min ao pressionar o botao set
					if(estado_hora_ou_min > 1) then
						estado_hora_ou_min := 0;
					end if;
				end if;
				
				 if (reset = '0' and modo = 1 and config = '1') then
            cont_seg_uni := 0;
            cont_seg_dez := 0;
            cont_min_uni := 0;
            cont_min_dez := 0;
            cont_hora_uni := 0;
            cont_hora_dez := 0;
				
				elsif (clock'event and clock = '1') then
					if( x = '1') then
						x <= '0';		-- logica para aguarda despressionar o botao
					end if;
					if( start_stop = '0') then
						if(x = '0') then
							if(estado_hora_ou_min = 0) then
								cont_hora_uni := cont_hora_uni + 1;
								if(cont_hora_dez = 2 and cont_hora_uni > 3) then
									cont_hora_uni := 0;
									cont_hora_dez := 0;
								elsif(cont_hora_uni > 9) then
									cont_hora_dez := cont_hora_dez + 1;
									cont_hora_uni := 0;
								end if;									
							end if;	
													
							if(estado_hora_ou_min = 1) then
								cont_min_uni := cont_min_uni + 1;								
								if (cont_min_uni > 9) then
									cont_min_uni := 0;
									cont_min_dez := cont_min_dez + 1;								
									if(cont_min_dez > 5) then
										cont_min_dez := 0;
									end if;
								end if;
							end if;
						end if;
						x <= '1';					
					end if;
				end if;
			end if;
			
			seg_uni <= conv_std_logic_vector(cont_seg_uni, 4);
			seg_dez <= conv_std_logic_vector(cont_seg_dez, 4);
			min_uni <= conv_std_logic_vector(cont_min_uni, 4);
			min_dez <= conv_std_logic_vector(cont_min_dez, 4);
			hora_uni <= conv_std_logic_vector(cont_hora_uni, 4);
			hora_dez <= conv_std_logic_vector(cont_hora_dez, 4);
			
	end process;	
end alarme_arch;