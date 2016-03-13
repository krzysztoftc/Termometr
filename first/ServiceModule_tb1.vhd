--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:57:28 03/12/2016
-- Design Name:   
-- Module Name:   F:/SEMESTR_VI/UCISK/VHDL/first/ServiceModule_tb1.vhd
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
 
ENTITY ServiceModule_tb1 IS
END ServiceModule_tb1;
 
ARCHITECTURE behavior OF ServiceModule_tb1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ServiceModule
    PORT(
         Reset : IN  std_logic;
         InO : IN  std_logic;
         CLK : IN  std_logic;
         Data : INOUT  std_logic;
         Wire : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal InO : std_logic := '0';
   signal CLK : std_logic := '0';

	--BiDirs
   signal Data : std_logic;
   signal Wire : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ServiceModule PORT MAP (
          Reset => Reset,
          InO => InO,
          CLK => CLK,
          Data => Data,
          Wire => Wire
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here

		Reset <= '1';	--reset
		
		wait for 100 ns;
		
		InO <= '0';		--write 0
		Data <= '0';
		
		wait for 100 ns;
		
							--write 1
		Data <= '1';
		
		wait for 100 ns;
		
		InO <= '1';		--read 0 
		Wire <= '0';
		
		wait for 100 ns;
		
							--read 1
		Data <= '1';
		
      wait;		

      wait;
   end process;

END;
