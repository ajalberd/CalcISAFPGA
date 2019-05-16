library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity disp is 
    port(
        OP: in STD_LOGIC_VECTOR(1 downto 0);
        DIST: in STD_LOGIC;
        CLK: in STD_LOGIC;
        RD1: in STD_LOGIC_VECTOR(7 downto 0);
        SkipVal: in STD_LOGIC_VECTOR(1 downto 0);
		  led_0 :out STD_LOGIC;
			led_1 :out STD_LOGIC;
			led_2 :out STD_LOGIC;
			led_3 :out STD_LOGIC;
			led_4 :out STD_LOGIC;
			led_5 :out STD_LOGIC;
			led_6 :out STD_LOGIC;
			led_7 :out STD_LOGIC
    );
end disp;

architecture behav of disp is
    
begin 
    process(OP, DIST,RD1,clk, SkipVal) is
        
        
    begin
    if(rising_edge(CLK)) then
        
		if((OP = "11") and (DIST = '1')) and (SkipVal = "00") then
        if RD1(7) ='1' then
				led_7 <='1';
			else
				led_7 <= '0';
			end if;
			if RD1(6) ='1' then
				led_6 <='1';
			else
				led_6 <= '0';
			end if;
			if RD1(5) ='1' then
				led_5 <='1';
			else
				led_5 <= '0';
			end if;
			if RD1(4) ='1' then
				led_4 <='1';
			else
				led_4 <= '0';
			end if;
			if RD1(3) ='1' then
				led_3 <='1';
			else
				led_3 <= '0';
			end if;
			if RD1(2) ='1' then
				led_2 <='1';
			else
				led_2 <= '0';
			end if;
			if RD1(1) ='1' then
				led_1 <='1';
			else
				led_1 <= '0';
			end if;
			if RD1(0) ='1' then
				led_0 <='1';
			else
				led_0 <= '0';
			end if;
		end if;
	end if;
    end process;
end behav;