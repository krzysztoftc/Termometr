--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:00:52 05/09/2016
-- Design Name:   
-- Module Name:   /windows/STUDIA/SEMESTR_VI/UCISK/VHDL/second/LCD_tb.vhd
-- Project Name:  second
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LCD
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
 
ENTITY LCD_tb IS
END LCD_tb;
 
ARCHITECTURE behavior OF LCD_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LCD
    PORT(
         CLK : IN  std_logic;
         S : IN  std_logic_vector(3 downto 0);
         D : IN  std_logic_vector(3 downto 0);
         J : IN  std_logic_vector(3 downto 0);
         SIGN : IN  std_logic;
         HALF : IN  std_logic;
         BUSY_LCD : IN  std_logic;
         WE : OUT  std_logic;
         Byte : OUT  std_logic_vector(7 downto 0);
         DnI : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal S : std_logic_vector(3 downto 0) := (others => '0');
   signal D : std_logic_vector(3 downto 0) := "1000";
   signal J : std_logic_vector(3 downto 0) := "0101";
   signal SIGN : std_logic := '0';
   signal HALF : std_logic := '0';
   signal BUSY_LCD : std_logic := '0';

 	--Outputs
   signal WE : std_logic;
   signal Byte : std_logic_vector(7 downto 0);
   signal DnI : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LCD PORT MAP (
          CLK => CLK,
          S => S,
          D => D,
          J => J,
          SIGN => SIGN,
          HALF => HALF,
          BUSY_LCD => BUSY_LCD,
          WE => WE,
          Byte => Byte,
          DnI => DnI
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

      wait;
   end process;

	 process
   begin
		BUSY_LCD <= '1';
		wait for 50 ns;
		BUSY_LCD <= '0';
      loop
         wait until  WE = '0';
         BUSY_LCD <= '1', '0' after 100 ns;
      end loop;
   end process;
	
END;
