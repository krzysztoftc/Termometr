--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:27:06 04/24/2016
-- Design Name:   
-- Module Name:   /windows/STUDIA/SEMESTR_VI/UCISK/VHDL/second/Interpreter_tb.vhd
-- Project Name:  second
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Interpreter
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
 
ENTITY Interpreter_tb IS
END Interpreter_tb;
 
ARCHITECTURE behavior OF Interpreter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Interpreter
    PORT(
         DATA : IN  std_logic_vector(15 downto 0);
         VALUE : OUT  std_logic_vector(6 downto 0);
         HALF : OUT  std_logic;
         SIGN : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal DATA : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal VALUE : std_logic_vector(6 downto 0);
   signal HALF : std_logic;
   signal SIGN : std_logic;
	signal CLK : std_logic;
   -- No clocks detected in port list. Replace CLK below with 
   -- appropriate port name 
 
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Interpreter PORT MAP (
          DATA => DATA,
          VALUE => VALUE,
          HALF => HALF,
          SIGN => SIGN
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
		
		DATA <= x"00AA";
		wait for 500 ns;
		
		DATA <= x"0032";
		wait for 500 ns;
		
		DATA <= x"0001";
		wait for 500 ns;
		
		DATA <= x"ffff";
		wait for 500 ns;
		
		DATA <= x"ffce";
		wait for 500 ns;
		
		DATA <= x"ff92";
		wait for 500 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
