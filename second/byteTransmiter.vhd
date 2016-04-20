----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:34:51 04/06/2016 
-- Design Name: 
-- Module Name:    byteTransmiter - Behavioral 
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

entity byteTransmiter is
    Port ( CLK : in  STD_LOGIC;
           Byte_in : in  STD_LOGIC_VECTOR (7 downto 0);
           Bit_out : out  STD_LOGIC;
           Bit_start : out  STD_LOGIC;
           Bit_Busy : in  STD_LOGIC;
           Start : in  STD_LOGIC);
end byteTransmiter;

architecture Behavioral of byteTransmiter is
	type state_type is (n,s,b,c);
	signal state: state_type := n;
	signal next_state: state_type := n;
	signal byte_cnt: unsigned(4 downto 0) <= to_unsigned(0,4);
begin

service_state: process (CLK, next_state) is
begin
	if rising_edge(CLK) then
		state <= next_state;
	end if;
end process;

end Behavioral;

