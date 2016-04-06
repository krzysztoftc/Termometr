----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:45:32 03/15/2016 
-- Design Name: 
-- Module Name:    BusController - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BusController is
    Port ( Bus_out : out  STD_LOGIC;
           Bus_in : in  STD_LOGIC;
           Busy : out  STD_LOGIC;
           Read_out : out  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Data_in : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           RnW : in  STD_LOGIC;
           Start : in  STD_LOGIC);
end BusController;

architecture Behavioral of BusController is
	type state_type is (n,i1,i2,i3,i4,w1,w2,w3,r1,r2,r3,r4);
	signal state: state_type := n;
	signal cnt : unsigned(15 downto 0) := (others => '0');
	signal next_state: state_type := n;
begin

clock: process (CLK) is	
begin
	if state = n then
		cnt <= (others => '0');
	else 
		if rising_edge(CLK) then
			cnt <= cnt + 1;
		end if;
	end if;
end process;

service_state: process (CLK) is
begin
	if rising_edge(CLK) then
		state <= next_state;
	end if;
end process;

service: process (CLK, Start, state, RnW, reset, cnt) is
begin
	next_state <= state;
	
	
	case state is
	when n =>
		if Start = '1' then
			if Reset = '1' then
				next_state <= i1;	--reset
			elsif RnW = '1' then
				next_state <= r1;	--read
			else
				next_state <= w1;	--write
			end if;
		end if;
		
	when i1 =>
		if cnt = 24000 then
			next_state <= i2;
		end if;
		
	when i2 =>
		if cnt = 27500 then
			next_state <= i3;
		end if;
		
	when i3 => 		--sampling
			next_state <= i4;
		
	when i4 =>
		if cnt = 48000 then
			next_state <= n;
		end if;

	when w1 =>
		if cnt = 300 then			--6 us
			next_state <= w2;
		end if;
	
	when w2 =>						--setting bus
		if cnt = 3000 then		--next 54 us
			next_state <= w3;
		end if;
		
	when w3 =>
		if cnt = 3500 then		--next 10 us
			next_state <= n;
		end if;
	
	when r1 =>
		if cnt = 300 then		--6 us
			next_state <= r2;
		end if;
		
	when r2 =>
		if cnt = 750 then		--next 9 us
			next_state <= r3;
		end if;
	
	when r3 =>
		next_state <= r4; -- just sampling
		
	when r4 =>
		if cnt = 3500 then	--waiting for end
			next_state <= n;
		end if;
	
	end case;

end process;

Busy <= '0' when state = n else '1';

Bus_out <= 
	'0' when state = i1 or
	state = w1 or
	(state = w2 and data_in = '0') or
	state = r1 else '1';
	
Read_out <= 
	Bus_in when rising_edge (CLK) and (state = i3 or state = r3);
	
	

end Behavioral;

