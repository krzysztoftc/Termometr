--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:24:02 12/19/2015
-- Design Name:   
-- Module Name:   C:/Users/Krzysiek/double_dabble2/double_dabble_tb2.vhd
-- Project Name:  double_dabble2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: double_dabble
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY double_dabble_tb2 IS
END double_dabble_tb2;
 
ARCHITECTURE behavior OF double_dabble_tb2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT double_dabble
    PORT(
         BYTE_IN : IN  std_logic_vector(6 downto 0);
         J : OUT  std_logic_vector(3 downto 0);
         D : OUT  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal BYTE_IN : std_logic_vector(6 downto 0) := (others => '0');

 	--Outputs
   signal J : std_logic_vector(3 downto 0);
   signal D : std_logic_vector(3 downto 0);
   signal S : std_logic_vector(3 downto 0);

   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: double_dabble PORT MAP (
          BYTE_IN => BYTE_IN,
          J => J,
          D => D,
          S => S
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	BYTE_IN<= "1111111";
	wait for 100 ns;	
	
	BYTE_IN<= "0000000";
	wait for 100 ns;	
	
	BYTE_IN<= "0000001";
	wait for 100 ns;	
	
	BYTE_IN<= "0001111";
	wait for 100 ns;	
	
	BYTE_IN<= "1001111";
	wait for 100 ns;	
      -- insert stimulus here 

      wait;
   end process;

END;
