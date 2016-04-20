----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:03:48 12/17/2015 
-- Design Name: 
-- Module Name:    doble_dabble_module - Behavioral 
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
--use IEEE.STD_LOGIC_VECTOR.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity double_dabble is
    Port ( BYTE_IN : in  STD_LOGIC_VECTOR (6 downto 0);
           J : out  STD_LOGIC_VECTOR (3 downto 0);
           D : out  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0));
end double_dabble;

architecture Behavioral of double_dabble is
begin

bcd1: process(BYTE_IN)

	variable temp: STD_LOGIC_VECTOR (6 downto 0) ;
	variable jds: STD_LOGIC_VECTOR (11 downto 0):="000000000000";

	begin	
		temp := BYTE_IN; 
		jds :=(others => '0');
	
			for i in 0 to 6 loop
				if jds(3 downto 0) > 4 then 
					jds(3 downto 0) := jds(3 downto 0) + 3;
				end if;
      
				if jds(7 downto 4) > 4 then 
					jds(7 downto 4) := jds(7 downto 4) + 3;
				end if;

				jds := jds(10 downto 0) & temp(6);
				 
				temp := temp(5 downto 0) & '0';
				
			end loop;
			
		J <= jds(3 downto 0);
		D <= jds(7 downto 4);
		S <= jds(11 downto 8);
	end process bcd1; 

end Behavioral;


