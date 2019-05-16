
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity masterdisp is
Port(masterclk: in STD_LOGIC;
btn1: in STD_LOGIC;
sw0: in STD_LOGIC;
		sw1: in STD_LOGIC;
		sw2: in STD_LOGIC;
		sw3: in STD_LOGIC;
		sw4: in STD_LOGIC;
		sw5: in STD_LOGIC;
		sw6: in STD_LOGIC;
		sw7: in STD_LOGIC;
led0 :out STD_LOGIC;
	led1 :out STD_LOGIC;
	led2 :out STD_LOGIC;
	led3 :out STD_LOGIC;
	led4 :out STD_LOGIC;
	led5 :out STD_LOGIC;
	led6 :out STD_LOGIC;
	led7 :out STD_LOGIC);
end masterdisp;

architecture Behavioral of masterdisp is

component iotest
 Port ( clk :in STD_LOGIC;
 sig: in STD_LOGIC_VECTOR(7 downto 0);
 led_0 :out STD_LOGIC;
	led_1 :out STD_LOGIC;
	led_2 :out STD_LOGIC;
	led_3 :out STD_LOGIC;
	led_4 :out STD_LOGIC;
	led_5 :out STD_LOGIC;
	led_6 :out STD_LOGIC;
	led_7 :out STD_LOGIC);
end component;

component debounce
port( Clock : in std_logic;
		Reset : in std_logic;
		button_in : in std_logic;
		pulse_out : out std_logic
  );
end component;
--signals??
	signal distinput: std_logic_vector(7 downto 0);
	signal reset: STD_LOGIC:='0';
	--signal clk2: STD_LOGIC;
	signal btnoutput: STD_LOGIC;
	--signal led0, led1, led2, led3, led4, led5, led6, led7: STD_LOGIC;
begin
iotestb: iotest port map(masterclk, distinput, Led0, Led1, Led2, Led3, Led4, Led5, Led6, Led7);
debounceb: debounce port map(masterclk, reset, btn1, btnoutput);

process(masterclk, btnoutput, reset) is
begin
if(btnoutput = '1') then
	distinput <= (sw7, sw6, sw5, sw4, sw3, sw2, sw1, sw0);
else
		distinput <= "00000000";
end if;
end process;

 
end Behavioral;

