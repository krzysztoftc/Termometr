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
	variable sclock_cnt : unisgned (5 downto 0) := 0;
	signal s_clk : STD_LOGIC := '0';
	variable cnt : unsigned(7 downto 0) := 0;
	
	type state_type is (n,i1,i2,i3,w1,r1);
begin	

	Busy <= busy_flag;
	
	small_clock: process(CLK) is
	begin
		if sclock_cnt = 50 then
			s_clk <= not s_clk;
		else
			sclonck_cnt <= sclonck_cnt + 1;
		end if;
	end process;
	
	service: process(Start) is
	begin
	if state = n then
		if rising_edge(Start) then
			if Reset = 1 then
				state <= i1;	--reset
				cnt <= 0;
			elsif InO = 1 then
				state <= w1;	--write
			else
				state <= r1;	--read
			end if;
		end if;
	end if;
	end process;

	reset: process(s_clk, state) is
	begin
		if state = i1 then
			Wire <= '0';
			if cnt = 480 then
				cnt <= 0;
				state <= i2;
			else
				cnt <= cnt + 1;
			end if;
			
		elsif state = i2 then
			Wire <= 'H';
			if cnt = 70 then
				cnt <= 0;
				state <= i3;
			else
				cnt <= cnt + 1;
			end if;
			
		elsif state = i3 then
			Data <= not Wire;
			state <= i4;
			
		elsif state = i4 then
			if cnt = 410 then
				cnt <= 0;
				state <= n;
			else
				cnt <= cnt + 1;
			end if;
		end if;
	end process;

	Busy <= '0' when state = n else '1';
end Behavioral;

