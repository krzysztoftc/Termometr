----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:02:36 03/12/2016 
-- Design Name: 
-- Module Name:    ServiceModule - Behavioral 
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

entity ServiceModule is
    Port ( Reset : in  STD_LOGIC;
           InO : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
           Data : inout  STD_LOGIC;
			  Busy : out STD_LOGIC;
			  Start: in STD_LOGIC;
           Wire : inout  STD_LOGIC);
end ServiceModule;

architecture Behavioral of ServiceModule is
	signal busy_flag : STD_LOGIC := '0'; 
	signal sclock_cnt : unsigned (5 downto 0) := (others => '0');
	signal s_clk : STD_LOGIC := '0';
	signal cnt : unsigned(8 downto 0) := (others => '0');
	
	type state_type is (n,i1,i2,i3,i4,w1,w2,w3,r1,r2,r3,r4);
	signal state: state_type;
begin	
	
	small_clock: process(CLK) is
	begin
		if sclock_cnt = 50 then
			s_clk <= not s_clk;
			sclock_cnt <= (others => '0');
		else
			sclock_cnt <= sclock_cnt + 1;
		end if;
	end process;
	
	service: process(s_clk, state, Start) is
	begin
		if state = n then
			if rising_edge(Start) then
			Data <= 'H';
				if Reset = '1' then
					state <= i1;	--reset
					cnt <= (others => '0');
				elsif InO = '1' then
					state <= w1;	--write
				else
					state <= r1;	--read
			end if;
		end if;
	
		elsif state = i1 then
			Wire <= '0';
			
			if rising_edge(s_clk) then
				if cnt = 480 then
					cnt <= (others => '0');
					state <= i2;
				else
					cnt <= cnt + 1;
				end if;
			end if;
			
		elsif state = i2 then
			Wire <= 'H';
			if rising_edge(s_clk) then
				if cnt = 70 then
					cnt <= (others => '0');
					state <= i3;
				else
					cnt <= cnt + 1;
				end if;
			end if;
			
		elsif state = i3 then
			Data <= not Wire;
			state <= i4;
			
		elsif state = i4 then
			if rising_edge(s_clk) then
				if cnt = 410 then
					cnt <= (others => '0');
					state <= n;
				else
					cnt <= cnt + 1;
				end if;
			end if;
		
		elsif state = w1 then
			Wire <= '0';
			
			if rising_edge(s_clk) then
				if cnt = 6 then
					cnt <= (others => '0');
					state <= w2;
				else
					cnt <= cnt + 1;
				end if;
			end if;
		
		elsif state = w2 then
			if Data = '0' then
				Wire <= '0'; 
			else 
				Wire <= 'H';
			end if;
		
			if rising_edge(s_clk) then
				if cnt = 54 then
					cnt <= (others => '0');
					state <= w3;
				else
					cnt <= cnt + 1;
				end if;
			end if;
		
		
		elsif state = w3 then
			Wire <= 'H';
			
			if rising_edge(s_clk) then
				if cnt = 10 then
					cnt <= (others => '0');
					state <= n;
				else
					cnt <= cnt + 1;
				end if;
			end if;
			
		elsif state = r1 then
			Wire <= '0';
			
			if rising_edge(s_clk) then
				if cnt = 6 then
					cnt <= (others => '0');
					state <= r2;
				else
					cnt <= cnt + 1;
				end if;
			end if;
			
		elsif state = r2 then
			Wire <= 'H';
			
			if rising_edge(s_clk) then
				if cnt = 9 then
					cnt <= (others => '0');
					state <= r3;
				else
					cnt <= cnt + 1;
				end if;
			end if;
		
		elsif state = r3 then
			if Wire = 'H' then 
				Data <= '1';
			else 
				Data <= '0';
			end if;
			state <= r4;
		
		elsif state = r4 then
			Wire <= 'H';
			
			if rising_edge(s_clk) then
				if cnt = 60 then
					cnt <= (others => '0');
					state <= n;
				else
					cnt <= cnt + 1;
				end if;
			end if;
		
	end if;
	end process;
	
	Busy <= '0' when state = n else '1';
end Behavioral;

