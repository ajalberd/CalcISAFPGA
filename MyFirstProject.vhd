library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity iotest is
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
end iotest;
architecture Behavioral of iotest is 
signal set0, set1, set2, set3, set4, set5, set6,set7: STD_LOGIC:='0';
begin

main:process(clk, sig)
begin
 if (rising_edge(clk)) then
	if sig(7) ='1' then
		led_7 <='1';
	else
		led_7 <= '0';
	end if;
	if sig(6) ='1' then
		led_6 <='1';
	else
		led_6 <= '0';
	end if;
	if sig(5) ='1' then
		led_5 <='1';
	else
		led_5 <= '0';
	end if;
	if sig(4) ='1' then
		led_4 <='1';
	else
		led_4 <= '0';
	end if;
	if sig(3) ='1' then
		led_3 <='1';
	else
		led_3 <= '0';
	end if;
	if sig(2) ='1' then
		led_2 <='1';
	else
		led_2 <= '0';
	end if;
	if sig(1) ='1' then
		led_1 <='1';
	else
		led_1 <= '0';
	end if;
	if sig(0) ='1' then
		led_0 <='1';
	else
		led_0 <= '0';
	end if;
 end if;
 
end process;
end Behavioral;