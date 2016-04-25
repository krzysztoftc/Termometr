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

state_service: process (CLK, next_state)
begin
	next_state <= state; -- by default
	
	case state is
	
	when busy =>
		if BUSY_LCD = '0' then
			next_state <= clear;
		end if;
	
	when clear =>
		BYTE <= x"01";
		next_state <= clear_b;
		
	when clear_b =>
		if BUSY_LCD = '0' then
			next_state <= sign_state;
		end if;
		
	when sign_state =>
		if sign = '0' then
			BYTE <= x"20";			--space
		else 
			BYTE <= x"2B";			-- - sign
		end if;
		next_state <= sign_b;
		
	when sign_b =>
		if BUSY_LCD = '0' then
			next_state <= s_state;
		end if;
	
	when s_state =>
		if s = "0000" then
			BYTE <= x"20";			--space
		else 
			BYTE <= "0001"&S;
		end if;
		next_state <= s_b;
		
	when s_b =>
		if BUSY_LCD = '0' then
			next_state <= d_state;
		end if; 
		
	when d_state =>
		if d = "0000" then
			BYTE <= x"20";			--space
		else 
			BYTE <= "0001"&d;
		end if;
		next_state <= d_b;
		
	when d_b =>
		if BUSY_LCD = '0' then
			next_state <= j_state;
		end if;

	when j_state =>
		BYTE <= "0001"&J;
		next_state <= j_b;
		
	when j_b =>
		if BUSY_LCD = '0' then
			next_state <= dot;
		end if; 
		
	when dot =>
		BYTE <= x"2E";
		next_state <= dot_b;
		
	when dot_b =>
		if BUSY_LCD = '0' then
			next_state <= half_state;
		end if; 
	
	when half_state =>
		if half = '1' then
			BYTE <= x"25";		-- 5 	
		else 
			BYTE <= x"20";		-- 0 
		end if;
		next_state <= half_b;
		
	when half_b =>
		if BUSY_LCD = '0' then
			next_state <= j_state;
		end if;
	
	when deg =>
		BYTE <= x"DF";
		next_state <= deg_b;
		
	when deg_b =>
		if BUSY_LCD = '0' then
			next_state <= j_state;
		end if;
		
	when c =>
		BYTE <= x"43"; 		-- C
		next_state <= c_b;
		
	when c_b =>
		if BUSY_LCD = '0' then
			next_state <= home;
		end if;
		
	when home =>
		BYTE <= x"02";		--goto 00 (home)
		next_state <= home_b;
	
	when home_b =>
		if BUSY_LCD = '0' then
			next_state <= sign_state;
		end if;	
		
	when others =>
		next_state <= clear;
		
	end case;
	
end process;
	
	We <= '1' when (state = clear) else '0';
	
	DnI <= '0' when (state = clear or state = home) else '1';
	
end Behavioral;

