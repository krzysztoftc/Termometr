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
	type state_type is (n,ws,wb,wc,we,rs,rb,rc,re);
	signal state: state_type := n;
	signal next_state: state_type := n;
	signal byte_cnt : unsigned(2 downto 0) := (others => '0');
begin
	
service_state: process (CLK, next_state) is
begin
	if rising_edge(CLK) then
		state <= next_state;
	end if;
end process;

service: process (Start, RnW, Busy_bit, state, Byte_in, Bit_In, byte_cnt) is
begin
	next_state <= state; --by default
	
	case state is
	when n =>
		if Start = '1' then
			if RnW = '1' then
				next_state <= rs;
			else
				next_state <= ws;
			end if;
		end if;
		
	when ws =>
		next_state <= wb;
	
	when wb =>
		if (Busy_bit = '0') then
			next_state <= we;
		end if;

	when we =>
		if(byte_cnt = 7) then
			next_state <= n;
		else
			next_state <= wc;
		end if;
	
	when wc => 
		next_state <= ws;

	when rs =>
		next_state <= rb;
	
	when rb =>
		if (Busy_bit = '0') then
			next_state <= re;
		end if;

	when re =>
		if(byte_cnt = 7) then
			next_state <= n;
		else
			next_state <= rc;
		end if;
	
	when rc => 
		next_state <= rs;
	
	when others =>
		next_state <= n;
	end case;

end process;
	
Busy <= '0' when state = n else '1';

Bit_out <= byte_in(to_integer(byte_cnt));

RnW_bit <= RnW;

Start_bit <= '1' when (state = rs) or (state = ws) else '0';

Byte_out(to_integer(byte_cnt)) <= Bit_in when state = re and rising_edge(CLK);

byte_cnt <= 
	to_unsigned(0,3) when state = n else
	byte_cnt + 1 when (state = wc or state = rc) and rising_edge(clk) 
	else byte_cnt;


end Behavioral;

