----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:30:46 03/26/2016 
-- Design Name: 
-- Module Name:    ByteModule - Behavioral 
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

entity ByteModule is
    Port ( CLK : in  STD_LOGIC;
           Byte_In : in  STD_LOGIC_VECTOR (7 downto 0);
           Byte_Out : out  STD_LOGIC_VECTOR (7 downto 0);
			  Bit_in : in  STD_LOGIC;
           Bit_out : out  STD_LOGIC;
           Start : in  STD_LOGIC;
           Busy : out  STD_LOGIC;
           RnW : in  STD_LOGIC;
			  RnW_bit : out  STD_LOGIC;
           Start_bit : out  STD_LOGIC;
           Busy_bit : in  STD_LOGIC);
end ByteModule;

architecture Behavioral of ByteModule is
	type state_type is (n,w,r);
	signal state: state_type := n;
	signal next_state: state_type := n;
	signal byte_cnt : unsigned(4 downto 0) := (others => '0');
	signal byte_writing : std_logic_vector(7 downto 0) := (others => '0');
	signal byte_reading : std_logic_vector(7 downto 0) := (others => '0');
begin
	
service_state: process (CLK, next_state) is
begin
	if rising_edge(CLK) then
		state <= next_state;
	end if;
end process;

service: process (Start, RnW, Busy_bit, state, Byte_in, Bit_In, byte_cnt, byte_reading) is
begin
	next_state <= state; --by default
	
	case state is
	when n =>
		if Start = '1' then
			byte_cnt <= (others => '0');
			if RnW = '1' then
				next_state <= r;
			else
				next_state <= w;
				byte_writing <= Byte_in;
			end if;
			Start_bit <= '1';
		end if;
		
	when w =>
		if (Busy_bit = '0') then
			if (byte_cnt = 8) then
				next_state <= n;
			else
				byte_writing <= '0' & byte_writing(7 downto 1);
				byte_cnt <= byte_cnt + 1;
				Start_bit <= '1';
			end if;
		else
			Start_bit <= '0';
		end if;
		
	when r =>
		if Busy_bit = '0' then
			if byte_cnt = 8 then
				next_state <= n;
				Byte_out <= byte_reading;
				byte_cnt <= (others => '0');
			else
				byte_reading <= byte_reading(6 downto 0) & Bit_in;
				byte_cnt <= byte_cnt + 1;
				if byte_cnt < 8 then
					Start_bit <= '1';
				else 
					Start_bit <= '0';
				end if;
			end if;
		else
			Start_bit <= '0';
		end if;
	
	when others =>
		next_state <= n;
		Start_bit <= '0';
	end case;

end process;
	
Busy <= '0' when state = n else '1';

Bit_out <= byte_writing(0);

RnW_bit <= RnW;

end Behavioral;

