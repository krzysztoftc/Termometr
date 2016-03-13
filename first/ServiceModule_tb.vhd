--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:52:12 03/12/2016
-- Design Name:   
-- Module Name:   F:/SEMESTR_VI/UCISK/VHDL/first/ServiceModule_tb.vhd
-- Project Name:  first
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ServiceModule
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
 
ENTITY ServiceModule_tb IS
END ServiceModule_tb;
 
ARCHITECTURE behavior OF ServiceModule_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ServiceModule
    PORT(
         Reset : IN  std_logic;
         InO : IN  std_logic;
         Data : INOUT  std_logic;
         Wire : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal InO : std_logic := '0';

	--BiDirs
   signal Data : std_logic;
   signal Wire : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ServiceModule PORT MAP (
          Reset => Reset,
          InO => InO,
          Data => Data,
          Wire => Wire
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 
			
		
   end process;

END;
