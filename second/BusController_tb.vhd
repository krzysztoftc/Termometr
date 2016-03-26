--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:34:18 03/15/2016
-- Design Name:   
-- Module Name:   F:/SEMESTR_VI/UCISK/VHDL/second/BusController_tb.vhd
-- Project Name:  second
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BusController
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
 
ENTITY BusController_tb IS
END BusController_tb;
 
ARCHITECTURE behavior OF BusController_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BusController
    PORT(
         Bus_out : OUT  std_logic;
         Bus_in : IN  std_logic;
         Busy : OUT  std_logic;
         Read_out : OUT  std_logic;
         CLK : IN  std_logic;
         Data_in : IN  std_logic;
         Reset : IN  std_logic;
         RnW : IN  std_logic;
         Start : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Bus_in : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Data_in : std_logic := '0';
   signal Reset : std_logic := '0';
   signal RnW : std_logic := '0';
   signal Start : std_logic := '0';

 	--Outputs
   signal Bus_out : std_logic;
   signal Busy : std_logic;
   signal Read_out : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BusController PORT MAP (
          Bus_out => Bus_out,
          Bus_in => Bus_in,
          Busy => Busy,
          Read_out => Read_out,
          CLK => CLK,
          Data_in => Data_in,
          Reset => Reset,
          RnW => RnW,
          Start => Start
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

		Reset <= '1';			--reset
		Start <= '0';
		wait for 100 ns;
		Start <= '1'; 
		wait for 100 ns; 
		Start <= '0';
		Reset <= '0';
		Bus_in <= '0';			--slave is present
		
		wait for 1000 us;		--init slot
		
		-----------------------read 0
		
		RnW <= '1';				--read
		wait for 100 ns;		--stabilize data
			
		Start <= '1';			--start bit change
		wait for 100 ns;	
		Start <= '0';
		
		wait for 10 us;		--time for slave
		Bus_in <= '0'; 		--slave send 0
		wait for 10 us; 		--time before release bus
		Bus_in <= '1';			--slave release the bus
		wait for 75 us; 		--read time slot

		-----------------------read 1
		
		Start <='1';			--start bit change
		wait for 100 ns;		
		Start <= '0';
		Bus_in <= '1';			--slave release the bus for sending 1
		wait for 80 us; 		--read time slot
		
		-----------------------write 0
		RnW <= '0';				--write

		Data_in <= '0'; 		--write 0
	
		wait for 100 ns;		--stabilize data					
		Start <='1';			-- start bit change
		wait for 100 ns;		
		Start <= '0';
		wait for 75 us; 		--write time slot
		
				
		-----------------------write 1
		RnW <= '0';				--write

		Data_in <= '1'; 		--write 1
	
		wait for 100 ns;		--stabilize data
		Start <='1';			--start bit change
		wait for 100 ns;		
		Start <= '0';
		wait for 75 us; 		--write time slot

      wait;
   end process;

END;
