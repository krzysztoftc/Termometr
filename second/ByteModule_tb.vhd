--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:38:08 03/27/2016
-- Design Name:   
-- Module Name:   F:/SEMESTR_VI/UCISK/VHDL/second/ByteModule_tb.vhd
-- Project Name:  second
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ByteModule
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
 
ENTITY ByteModule_tb IS
END ByteModule_tb;
 
ARCHITECTURE behavior OF ByteModule_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ByteModule
    PORT(
         CLK : IN  std_logic;
         Byte_In : IN  std_logic_vector(7 downto 0);
         Byte_Out : OUT  std_logic_vector(7 downto 0);
         Bit_in : IN  std_logic;
         Bit_out : OUT  std_logic;
         Start : IN  std_logic;
         Busy : OUT  std_logic;
         RnW : IN  std_logic;
         RnW_bit : OUT  std_logic;
         Start_bit : OUT  std_logic;
         Busy_bit : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal Byte_In : std_logic_vector(7 downto 0) := (others => '0');
   signal Bit_in : std_logic := '0';
   signal Start : std_logic := '0';
   signal RnW : std_logic := '0';
   signal Busy_bit : std_logic := '0';

 	--Outputs
   signal Byte_Out : std_logic_vector(7 downto 0);
   signal Bit_out : std_logic;
   signal Busy : std_logic;
   signal RnW_bit : std_logic;
   signal Start_bit : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ByteModule PORT MAP (
          CLK => CLK,
          Byte_In => Byte_In,
          Byte_Out => Byte_Out,
          Bit_in => Bit_in,
          Bit_out => Bit_out,
          Start => Start,
          Busy => Busy,
          RnW => RnW,
          RnW_bit => RnW_bit,
          Start_bit => Start_bit,
          Busy_bit => Busy_bit
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

--		Byte_in <= "10011101";
		Rnw <= '1';
		Start <= '1', '0' after CLK_period;
		
      wait;

   end process;
	
	Bit_in <= '1' after 283 us;
	
	process
	begin
		loop
			wait until rising_edge( Clk ) and Start_bit = '1';
			Busy_bit <= '1';
			wait for 70 us;
			Busy_bit <= '0';
		end loop;
	end process;

END;
