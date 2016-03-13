--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:47:50 03/13/2016
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
         CLK : IN  std_logic;
         Data : INOUT  std_logic;
         Busy : OUT  std_logic;
         Start : IN  std_logic;
         Wire : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal InO : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Start : std_logic := '0';

	--BiDirs
   signal Data : std_logic;
   signal Wire : std_logic;

 	--Outputs
   signal Busy : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ServiceModule PORT MAP (
          Reset => Reset,
          InO => InO,
          CLK => CLK,
          Data => Data,
          Busy => Busy,
          Start => Start,
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
		Wire <= 'H';
		Data <= '0';
		
		
		Reset <= '1';	--reset
		Start <= '0';
		wait for 2 ns;
		Start <= '1';
		Reset <= '0';
		
		wait for 1000 us;
		
		--read 0
		
		Ino <= '0';	--read
		
		-- start bit change
		Start <='0';
		wait for 2 ns;		
		Start <= '1';
		
		
		wait for 7 us;	--time for slave
		Wire <= '0'; 	-- slave send 0
		wait for 10 us; -- time before release bus
		Wire <= 'H';	-- slave release the bus
		wait for 60 us; --read time slot
		--read 1
		
		Ino <= '0';	--read
		
		-- start bit change
		Start <='0';
		wait for 2 ns;		
		Start <= '1';
		--for 1 slave release the bus
		
		wait;
---------------------------------------------------------------------------------------------------		
		Reset <= '0';
		Start <= '0';
		wait for 2 ns;
		Start <= '1';
		InO <= '0';						--read 0
		Data <= '0';
		
		wait for 70 us;
		
		Start <= '0';
		wait for 2 ns;
		Start <= '1';					--read 1
		Data <= '1';
		
		wait for 70 us;
		
		Ino <= '1';
		Start <= '0';
		wait for 2 ns;
		Start <= '1';
		wait for 8 us;									--write 0 
		Wire <= '0';
		wait for 20 us;
		Wire <= 'H';
		
		wait for 70 us;
		
		Start <= '0';
		wait for 2 ns;
		Start <= '1';
		wait for 8 us;									--write 1
		Wire <= '1';
		wait for 20 us;
		Wire <= 'H';
		
      wait;
   end process;

END;
