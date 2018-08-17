library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity cronometro_contador is
port(
    clock, reset, start_stop, mode : in std_logic;
    seg_uni, seg_dez, min_uni, min_dez, centseg_uni, centseg_dez : out std_logic_vector (3 downto 0)
);
end cronometro_contador;

architecture cont_arth of cronometro_contador is

constant contagem : integer := 499_999;
signal conta_retraso: integer range 0 to contagem :=0;
signal x : std_logic;

begin

    process(clock, reset)
    variable cont_seg_uni : integer range 0 to 9;
    variable cont_seg_dez : integer range 0 to 5;
    variable cont_min_uni : integer range  0 to 9;
    variable cont_min_dez : integer range 0 to 5;
    variable cont_centseg_uni : integer range  0 to 9;
    variable cont_centseg_dez : integer range 0 to 9;
	 variable str_stp : integer range 0 to 1;
	 variable modo : integer range 0 to 2;
 
    begin
	 
			if(mode'event and mode = '1') then					
				modo := modo + 1;
				if(modo > 2) then        -- selecionar o modo ao pressionar o botao mode
						modo := 0;
				end if;																			
			end if;
			
        if (reset = '0' and modo = 2) then
            cont_seg_uni := 0;
            cont_seg_dez := 0;
            cont_min_uni := 0;
            cont_min_dez := 0;
            cont_centseg_uni := 0;
            cont_centseg_dez := 0;
				str_stp := 0;
                
        elsif clock'event and clock = '1' then	
			if( x = '1') then
				x <= '0';			--logica para aguarda o botao despressionar
			end if;
			if(start_stop = '0' and modo = 2) then
				if(x = '0') then
					str_stp := str_stp + 1;
					if(str_stp > 1) then
						str_stp := 0;
					end if;
				end if;
				x <= '1';	
			end if;
			
			if str_stp = 1 then
				conta_retraso <= conta_retraso + 1;
				if (conta_retraso = contagem) then
					conta_retraso <= 0;
					cont_centseg_uni := cont_centseg_uni + 1;
					if(cont_centseg_uni > 9) then
						cont_centseg_uni := 0;
						cont_centseg_dez := cont_centseg_dez + 1;
						if(cont_centseg_dez > 9) then
							cont_centseg_dez := 0;
							cont_seg_uni := cont_seg_uni + 1;
							if(cont_seg_uni > 9) then
								cont_seg_dez := cont_seg_dez + 1;
								cont_seg_uni := 0;
								if(cont_seg_dez > 5) then
									cont_seg_dez := 0;
									cont_min_uni := cont_min_uni + 1;
									if(cont_min_uni > 9) then
										cont_min_dez := cont_min_dez + 1;
										cont_min_uni := 0;
										if(cont_min_dez > 5) then
											cont_min_dez := 0;									
										end if;
									end if;                                    
								end if;
							end if; 
						end if;
					end if;	
				end if;
			end if;
		end if;
		
  seg_uni <= conv_std_logic_vector(cont_seg_uni, 4);
  seg_dez <= conv_std_logic_vector(cont_seg_dez, 4);
  min_uni <= conv_std_logic_vector(cont_min_uni, 4);
  min_dez <= conv_std_logic_vector(cont_min_dez, 4);
  centseg_uni <= conv_std_logic_vector(cont_centseg_uni, 4);
  centseg_dez <= conv_std_logic_vector(cont_centseg_dez, 4);
          
    end process;
end cont_arth;