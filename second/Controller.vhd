----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:48:10 04/11/2016 
-- Design Name: 
-- Module Name:    Controller - Behavioral 
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

entity Controller is
    Port ( CLK : in  STD_LOGIC;
	        Freq_up : in STD_LOGIC;
			  Freq_down : in STD_LOGIC;
           Start : out  STD_LOGIC;
           Data_out : out  STD_LOGIC_VECTOR (15 downto 0);
			  Byte_out: out STD_LOGIC_VECTOR (7 downto 0);
           Byte_in : in  STD_LOGIC_VECTOR (7 downto 0);
           Busy_in : in  STD_LOGIC;
			  c_Busy_in_bit : in  STD_LOGIC;
			  RnW: out STD_LOGIC;
			  Bit_in: in STD_LOGIC;
           Reset : out  STD_LOGIC;
			  Freq_state: out STD_LOGIC_VECTOR(3 downto 0);
			  Reset_start : out  STD_LOGIC);
end Controller;

architecture Behavioral of Controller is

	type state_type is (reset_slave, reset_slave_b, presence, skip, skip_b, convert, 
								convert_b, convert_wait, convert_wait_b, convert_check, reset2, reset2_b, presence2, skip2, skip2_b, read_cmd, read_cmd_b, scr1, 
								scr1_b, scr1_save, scr2, scr2_b, delay, finish);
	signal state: state_type := reset_slave;
	signal next_state: state_type := reset_slave;
	signal first_byte: std_logic_vector (7 downto 0);
	signal frequence: std_logic_vector ( 3 downto 0) := "0001";
	signal freq_cnt: unsigned (31 downto 0) := (others => '0');
	signal delay_flag: std_logic := '0';
begin

freq_process: process (CLK, freq_up, freq_down)
begin
	if rising_edge(clk) then
		if freq_up = '1' then
			frequence <= frequence(2 downto 0) & frequence (3);
				
		elsif freq_down = '1' then
			frequence <= frequence (0) & frequence(3 downto 1);

		end if;
	end if;
end process;

delay_process: process (CLK, freq_cnt, frequence, state)
begin
	if (rising_edge (CLK)) then
		if (state = delay) then
			if (freq_cnt = 0) then
				delay_flag <= '0';
				case frequence is
					
					when "0010" =>
						freq_cnt <= to_unsigned(25000000,32);
						
					when "0100" =>
						freq_cnt <= to_unsigned(75000000,32);
						
					when "1000" =>
						freq_cnt <= to_unsigned(175000000,32);
						
					when others =>
						freq_cnt <= to_unsigned(0,32);
					
				end case;
			else
				delay_flag <= '1';
				freq_cnt <= freq_cnt - 1;
			end if;
		end if;
	end if;
end process;

state_service: process (CLK, next_state)
begin
	if (rising_edge (CLK)) then
		state <= next_state;
	end if;
end process;

service: process (CLK, state, busy_in, bit_in, c_busy_in_bit, byte_in, delay_flag)
begin
	
	next_state <= state; -- by default
	
	case state is
	
	when reset_slave =>
		next_state <= reset_slave_b;
		
	when reset_slave_b =>
		if c_Busy_in_bit = '0' then
			next_state <= presence;
		end if;
	
	when presence =>
		if bit_in = '0' then --slave is present
			next_state <= skip;
		else
			next_state <= reset_slave;
		end if;
		
	when skip => --skip match rom 
		--RnW <= '0';
		next_state <= skip_b;
	
	when skip_b =>
		if Busy_in = '0' then
			next_state <= convert;	--temporary!! should be convert!
		end if;
	
	when convert =>					--send convert_T command
		--RnW <= '0';
		next_state <= convert_b;
		
	when convert_b =>					--wait until busy
		if Busy_in = '0' then
			next_state <= convert_wait;
		end if;
	
	when convert_wait =>				--when ds18s20 is convertoing on bus is 0
		--RnW <= '1';						--after finish on bus is 1
		next_state <= convert_wait_b;
	
	when convert_wait_b =>
		if Busy_in = '0' then
			next_state <= convert_check;
		end if;
		
	when convert_check =>			--if last bit is '1' => slave finished convert
		if Byte_in(0) = '0' then
			next_state <= convert_wait;
		else
			next_state <= reset2;
		end if;
		
	when reset2 =>
		next_state <= reset2_b;
		
	when reset2_b =>
		if c_Busy_in_bit = '0' then
			next_state <= presence2;
		end if;
	
	when presence2 =>
		if bit_in = '0' then --slave is present
			next_state <= skip2;
		else
			next_state <= reset_slave;
		end if;
		
	when skip2 => --skip match rom 
		--RnW <= '0';
		next_state <= skip2_b;
	
	when skip2_b =>
		if Busy_in = '0' then
			next_state <= read_cmd;
		end if;
		
	when read_cmd =>
		--RnW <= '0';
		next_state <= read_cmd_b;
		
	when read_cmd_b =>
		if Busy_in = '0' then
			next_state <= scr1;
		end if;
		
	when scr1 =>
		--RnW <= '1';
		next_state <= scr1_b;
		
	when scr1_b =>
		if Busy_in = '0' then
			next_state <= scr1_save;
		end if;
		
	when scr1_save =>
		next_state <= scr2;
		
	when scr2 =>
		next_state <= scr2_b;
		
	when scr2_b =>
		if Busy_in = '0' then
			next_state <= finish;
		end if;
		
	when finish =>
		next_state <= delay;
		
	when delay =>
		if delay_flag = '0' then
			next_state <= reset_slave;
		end if;
		
	when others =>
		next_state <= reset_slave;
		
	end case;
		
	
end process;

Reset <= '1' when (state = reset_slave or state = reset_slave_b or state = reset2 or state = reset2_b)else '0';

Reset_start <= '1' when (state = reset_slave or state = reset2) else '0';

Start <= '1' when (state = skip or state = convert or state = convert_wait or state = skip2 
						or state = read_cmd or state = scr1 or state = scr2) else '0';

RnW <= '0' when (state = skip or state = skip_b or state = convert 
						or state = convert_b or state = skip2 or state = skip2_b 
						or state = read_cmd or state = read_cmd_b) else '1';

first_byte <= Byte_in when state = scr1_save and rising_edge (clk);
Data_out <= Byte_in & first_byte when state = finish and rising_edge (clk);

byte_out_service: process (CLK, state)
begin
	if (rising_edge (CLK)) then
		case state is
			
		when skip =>
			Byte_out <= x"CC";
			
		when skip_b =>
			Byte_out <= x"CC";
			
		when skip2 =>
			Byte_out <= x"CC";
		
		when skip2_b =>
			Byte_out <= x"CC";

		when convert =>
			Byte_out <= x"44";
			
		when convert_b =>
			Byte_out <= x"44";
			
		when read_cmd =>
			Byte_out <= x"BE";
			
		when read_cmd_b =>
			Byte_out <= x"BE";
			
		when others =>
			Byte_out <= x"00";
		end case;
	end if;
end process;

--Byte_out <= x"CC" when (state = skip or state = skip_busy or state = skip2) else x"44" when state = convert else x"BE";-- when state = read_cmd;

Freq_state <= frequence;

end Behavioral;

