----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:05:10 04/25/2016 
-- Design Name: 
-- Module Name:    LCD - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LCD is
    Port ( CLK : in  STD_LOGIC;
			  S : in  STD_LOGIC_VECTOR (3 downto 0);
           D : in  STD_LOGIC_VECTOR (3 downto 0);
           J : in  STD_LOGIC_VECTOR (3 downto 0);
           SIGN : in  STD_LOGIC;
           HALF : in  STD_LOGIC;
			  BUSY_LCD: in STD_LOGIC;
           WE : out  STD_LOGIC;
           Byte : out  STD_LOGIC_VECTOR (7 downto 0);
           DnI : out  STD_LOGIC);
end LCD;

architecture Behavioral of LCD is
	type state_type is (busy, clear, clear_b, sign_state, sign_b, s_state, s_b, d_state, d_b, 
								j_state, j_b, dot, dot_b, half_state, half_b, deg, deg_b, c, c_b, 
								home, home_b);
	signal state: state_type := busy;
	signal next_state: state_type := busy;
begin

next_state_service: process (CLK, next_state)
begin
	if (rising_edge (CLK)) then
		state <= next_state;
	end if;
end process;

state_service: process (CLK, next_state, state, busy_lcd, sign, s,d, j, half)
begin
	next_state <= state; -- by default
	
	case state is
	
	when busy =>
		if BUSY_LCD = '0' then
			next_state <= clear;
		end if;
	
	when clear =>
		next_state <= clear_b;
		
	when clear_b =>
		if BUSY_LCD = '0' then
			next_state <= sign_state;
		end if;
		
	when sign_state =>
		next_state <= sign_b;
		
	when sign_b =>
		if BUSY_LCD = '0' then
			next_state <= s_state;
		end if;
	
	when s_state =>
		next_state <= s_b;
		
	when s_b =>
		if BUSY_LCD = '0' then
			next_state <= d_state;
		end if; 
		
	when d_state =>
		next_state <= d_b;
		
	when d_b =>
		if BUSY_LCD = '0' then
			next_state <= j_state;
		end if;

	when j_state =>
		next_state <= j_b;
		
	when j_b =>
		if BUSY_LCD = '0' then
			next_state <= dot;
		end if; 
		
	when dot =>
		next_state <= dot_b;
		
	when dot_b =>
		if BUSY_LCD = '0' then
			next_state <= half_state;
		end if; 
	
	when half_state =>
		next_state <= half_b;
		
	when half_b =>
		if BUSY_LCD = '0' then
			next_state <= j_state;
		end if;
	
	when deg =>
		next_state <= deg_b;
		
	when deg_b =>
		if BUSY_LCD = '0' then
			next_state <= j_state;
		end if;
		
	when c =>
		next_state <= c_b;
		
	when c_b =>
		if BUSY_LCD = '0' then
			next_state <= home;
		end if;
		
	when home =>
		next_state <= home_b;
	
	when home_b =>
		if BUSY_LCD = '0' then
			next_state <= sign_state;
		end if;	
		
	when others =>
		next_state <= clear;
		
	end case;
	
end process;
	
	
data_service: process (CLK, state, sign, s,d, j, half)
begin
	if rising_edge (clk) then
	
		if state =  clear  then
			BYTE <= x"01";
		
		elsif state =  sign_state  then
			if sign = '0' then
				BYTE <= x"20";			--space
			else 
				BYTE <= x"2B";			-- - sign
			end if;
			
		elsif state =  s_state  then
			if s = "0000" then
				BYTE <= x"20";			--space
			else 
				BYTE <= "0001"&S;
			end if;
			
		elsif state =  d_state  then
			if d = "0000" then
				BYTE <= x"20";			--space
			else 
				BYTE <= "0001"&d;
			end if;

		elsif state =  j_state  then
			BYTE <= "0001"&J;
			
		elsif state =  dot  then
			BYTE <= x"2E";
		
		elsif state =  half_state  then
			if half = '1' then
				BYTE <= x"25";		-- 5 	
			else 
				BYTE <= x"20";		-- 0 
			end if;
		
		elsif state =  deg  then
			BYTE <= x"DF";
			
		elsif state =  c  then
			BYTE <= x"43"; 		-- C
			
		elsif state =  home  then
			BYTE <= x"02";		--goto 00 (home)	
	end if;
end if;	
end process;


	We <= '1' when (state = clear or state = sign_state or state = s_state or state = d_state or state = j_state or state = dot 
								or state = half_state or state = deg or state = c or state = home) else '0';
	
	DnI <= '0' when (state = clear or state = clear_b or state = home or state = home_b) else '1';
	
end Behavioral;

