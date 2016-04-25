----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:15:47 04/24/2016 
-- Design Name: 
-- Module Name:    Interpreter - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Interpreter is
    Port ( DATA : in  STD_LOGIC_VECTOR (15 downto 0);
           VALUE : out  STD_LOGIC_VECTOR (6 downto 0);
           HALF : out  STD_LOGIC;
           SIGN : out  STD_LOGIC);
end Interpreter;

architecture Combinational of Interpreter is

begin

	SIGN <= DATA(15);	--1 for -, 0 for +
	
	HALF <= DATA(0);
	
	VALUE <= std_logic_vector(to_unsigned(abs(to_integer(signed(DATA(8 downto 1))))-1,7))
	when DATA(15) = '1' and DATA(0) = '1' else
	std_logic_vector(to_unsigned(abs(to_integer(signed(DATA(8 downto 1)))),7));

end Combinational;

