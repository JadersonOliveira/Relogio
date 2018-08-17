library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

entity relogio is
port(
	clock, reset,start_stop, mode, set, config : in std_logic;  
	seg_saida_uni, seg_saida_dez, min_saida_uni, min_saida_dez, hora_saida_uni, hora_saida_dez,centseg_saida_uni,centseg_saida_dez : out std_logic_vector (6 downto 0);
	saida_led_modo0, saida_led_modo1, saida_led_modo2, led_alarme: out std_logic
	);
end relogio;

architecture relogio_arch of relogio is

component relogio_contador is
port(
    clock, reset, start_stop, config, set, mode : in std_logic;
    seg_uni, seg_dez, min_uni, min_dez, hora_uni, hora_dez : out std_logic_vector (3 downto 0)
);
end component;

component Divisor_freq is
	port (
		clock: in std_logic;
		final: in integer;
		clkout: out std_logic
	);
end component;

component alarme is
port(
	clock, reset, start_stop, config, set, mode : in std_logic;
    seg_uni, seg_dez, min_uni, min_dez, hora_uni, hora_dez : out std_logic_vector (3 downto 0)
);
end component;

component cronometro_contador is
port(
    clock, reset, start_stop, mode : in std_logic;
    seg_uni, seg_dez, min_uni, min_dez, centseg_uni, centseg_dez : out std_logic_vector (3 downto 0)
);
end component;

component conv_bin_7seg is
port(
    d: in std_logic_vector (3 downto 0);
	 piscar,clock: in std_logic;
	 modo2: integer range 0 to 2;
    q: out std_logic_vector (6 downto 0)
);
end component;

component conv2_bin_7seg is
port(
    d: in std_logic_vector (3 downto 0); 
    q: out std_logic_vector (6 downto 0)
);
end component;

signal contagem_centseg_uni : std_logic_vector (3 downto 0);
signal contagem_centseg_dez : std_logic_vector (3 downto 0);
signal contagem_seg_uni : std_logic_vector (3 downto 0);
signal contagem_seg_dez : std_logic_vector (3 downto 0);
signal contagem_min_uni : std_logic_vector (3 downto 0);
signal contagem_min_dez : std_logic_vector (3 downto 0);
signal contagem_hora_uni : std_logic_vector (3 downto 0);
signal contagem_hora_dez : std_logic_vector (3 downto 0);

signal relogio_contagem_seg_uni : std_logic_vector (3 downto 0);
signal relogio_contagem_seg_dez : std_logic_vector (3 downto 0);
signal relogio_contagem_min_uni : std_logic_vector (3 downto 0);
signal relogio_contagem_min_dez : std_logic_vector (3 downto 0);
signal relogio_contagem_hora_uni : std_logic_vector (3 downto 0);
signal relogio_contagem_hora_dez : std_logic_vector (3 downto 0);

signal alarme_contagem_seg_uni : std_logic_vector (3 downto 0);
signal alarme_contagem_seg_dez : std_logic_vector (3 downto 0);
signal alarme_contagem_min_uni : std_logic_vector (3 downto 0);
signal alarme_contagem_min_dez : std_logic_vector (3 downto 0);
signal alarme_contagem_hora_uni : std_logic_vector (3 downto 0);
signal alarme_contagem_hora_dez : std_logic_vector (3 downto 0);

signal cronometro_contagem_centseg_uni : std_logic_vector (3 downto 0);
signal cronometro_contagem_centseg_dez : std_logic_vector (3 downto 0);
signal cronometro_contagem_seg_uni : std_logic_vector (3 downto 0);
signal cronometro_contagem_seg_dez : std_logic_vector (3 downto 0);
signal cronometro_contagem_min_uni : std_logic_vector (3 downto 0);
signal cronometro_contagem_min_dez : std_logic_vector (3 downto 0);

signal config2: std_logic;
signal modo3: integer range 0 to 2;

begin	

    process(clock, reset)
	 
			variable modo : integer range 0 to 2;  
		  
		  begin			
			if(mode'event and mode = '1') then					
				modo := modo + 1;
				if(modo > 2) then        -- selecionar o modo ao pressionar o botao mode
						modo := 0;
				end if;																			
			end if;
									 
			 if(modo = 0) then
				contagem_seg_uni <= relogio_contagem_seg_uni;
				contagem_seg_dez <= relogio_contagem_seg_dez;
				contagem_min_uni <= relogio_contagem_min_uni;
				contagem_min_dez <= relogio_contagem_min_dez;
				contagem_hora_uni <= relogio_contagem_hora_uni;
				contagem_hora_dez <= relogio_contagem_hora_dez;
					saida_led_modo0 <= '1';
					saida_led_modo1 <= '0';
					saida_led_modo2 <= '0';					
					
			 elsif(modo = 1) then
				contagem_seg_uni <= alarme_contagem_seg_uni;
				contagem_seg_dez <= alarme_contagem_seg_dez;
				contagem_min_uni <= alarme_contagem_min_uni;
				contagem_min_dez <= alarme_contagem_min_dez;
				contagem_hora_uni <= alarme_contagem_hora_uni;
				contagem_hora_dez <= alarme_contagem_hora_dez;
					saida_led_modo0 <= '0';
					saida_led_modo1 <= '1';
					saida_led_modo2 <= '0';
					
					
			elsif(modo = 2) then
				contagem_centseg_uni <= cronometro_contagem_centseg_uni;
				contagem_centseg_dez <= cronometro_contagem_centseg_dez;
				contagem_seg_uni <= cronometro_contagem_seg_uni;
				contagem_seg_dez <= cronometro_contagem_seg_dez;
				contagem_min_uni <= cronometro_contagem_min_uni;
				contagem_min_dez <= cronometro_contagem_min_dez;						
					saida_led_modo0 <= '0';
					saida_led_modo1 <= '0';
					saida_led_modo2 <= '1';				
			end if;			
			
			if(relogio_contagem_seg_uni = alarme_contagem_seg_uni and
				relogio_contagem_seg_dez = alarme_contagem_seg_dez and
				relogio_contagem_min_uni = alarme_contagem_min_uni and
				relogio_contagem_min_dez = alarme_contagem_min_dez and
				relogio_contagem_hora_uni = alarme_contagem_hora_uni and
				relogio_contagem_hora_dez = alarme_contagem_hora_dez) then
					led_alarme <= '1';
					
					if(relogio_contagem_seg_uni = "0000" and
						relogio_contagem_seg_dez = "0000" and
						relogio_contagem_min_uni = "0000" and
						relogio_contagem_min_dez = "0000" and
						relogio_contagem_hora_uni = "0000" and
						relogio_contagem_hora_dez = "0000") then
							led_alarme <= '0';
					end if;
					
				end if;
				
				if(relogio_contagem_seg_uni = "1001"  and relogio_contagem_seg_dez = "0101") then
						led_alarme <= '0';
				end if;
				
		modo3 <= modo;	
		end process;	
			
	   contador1: relogio_contador port map (clock, reset, start_stop, config, set, mode, relogio_contagem_seg_uni,
												 relogio_contagem_seg_dez,	relogio_contagem_min_uni,
												 relogio_contagem_min_dez,	relogio_contagem_hora_uni,
												 relogio_contagem_hora_dez);
												 
		contador2: alarme port map (clock, reset, start_stop, config, set, mode, alarme_contagem_seg_uni,
												 alarme_contagem_seg_dez,	alarme_contagem_min_uni,
												 alarme_contagem_min_dez,	alarme_contagem_hora_uni,
												 alarme_contagem_hora_dez);
	   
		contador3: cronometro_contador port map (clock, reset, start_stop, mode,
												cronometro_contagem_seg_uni, cronometro_contagem_seg_dez, 
												cronometro_contagem_min_uni, cronometro_contagem_min_dez,
												cronometro_contagem_centseg_uni, cronometro_contagem_centseg_dez);
														
		config2 <= config;
		
			Conversor1: conv2_bin_7seg port map(contagem_centseg_uni, centseg_saida_uni);
			Conversor2: conv2_bin_7seg port map(contagem_centseg_dez, centseg_saida_dez);
			Conversor3: conv_bin_7seg port map(contagem_seg_uni,'0',clock,modo3, seg_saida_uni);
			Conversor4: conv_bin_7seg port map(contagem_seg_dez,'0',clock,modo3, seg_saida_dez);
			Conversor5: conv_bin_7seg port map(contagem_min_uni,config2,clock,modo3,min_saida_uni);
			Conversor6: conv_bin_7seg port map(contagem_min_dez,config2,clock,modo3,min_saida_dez);
			Conversor7: conv_bin_7seg port map(contagem_hora_uni,config2,clock,modo3, hora_saida_uni);
			Conversor8: conv_bin_7seg port map(contagem_hora_dez,config2,clock,modo3, hora_saida_dez);
		
end relogio_arch;

