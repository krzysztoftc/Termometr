-- Vhdl test bench created from schematic F:\SEMESTR_VI\UCISK\VHDL\second\Bus_byte_test.sch - Sun Apr 03 18:23:48 2016
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Bus_byte_test_Bus_byte_test_sch_tb IS
END Bus_byte_test_Bus_byte_test_sch_tb;
ARCHITECTURE behavioral OF Bus_byte_test_Bus_byte_test_sch_tb IS 

   COMPONENT Bus_byte_test
   PORT( Clk	:	IN	STD_LOGIC; 
          OneWire	:	INOUT	STD_LOGIC; 
          Start	:	IN	STD_LOGIC; 
          RnW	:	IN	STD_LOGIC; 
          Byte_in	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          Byte_out	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          Busy	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL Clk	:	STD_LOGIC;
   SIGNAL OneWire	:	STD_LOGIC;
   SIGNAL Start	:	STD_LOGIC;
   SIGNAL RnW	:	STD_LOGIC;
   SIGNAL Byte_in	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL Byte_out	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL Busy	:	STD_LOGIC;
	
	-- Clock period definitions
   constant CLK_period : time := 20 ns;

BEGIN

   UUT: Bus_byte_test PORT MAP(
		Clk => Clk, 
		OneWire => OneWire, 
		Start => Start, 
		RnW => RnW, 
		Byte_in => Byte_in, 
		Byte_out => Byte_out, 
		Busy => Busy
   );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	
		OneWire <= 'Z';
	
		Byte_in <= "10110011";
		
		RnW <= '0';
		
		Start <= '1';
		wait for 30 ns;
		Start <= '0';
		
		wait for 700 us;
		
		RnW <= '1';
		Start <= '1';
		wait for 20 ns;
		Start <= '0';
		
		wait for 6 us;
		OneWire <= '0';
		wait for 55 us;
		OneWire <= 'Z';
		wait for 9 us;
		
		wait for 6 us;
		OneWire <= '1';
		wait for 55 us;
		OneWire <= 'Z';
		wait for 9 us;
		
		wait for 6 us;
		OneWire <= '1';
		wait for 55 us;
		OneWire <= 'Z';
		wait for 9 us;
		
		wait for 6 us;
		OneWire <= '1';
		wait for 55 us;
		OneWire <= 'Z';
		wait for 9 us;
		
		wait for 6 us;
		OneWire <= '0';
		wait for 55 us;
		OneWire <= 'Z';
		wait for 9 us;
		
		wait for 6 us;
		OneWire <= '0';
		wait for 55 us;
		OneWire <= 'Z';
		wait for 9 us;
		
		wait for 6 us;
		OneWire <= '1';
		wait for 55 us;
		OneWire <= 'Z';
		wait for 9 us;
		
		wait for 6 us;
		OneWire <= '0';
		wait for 55 us;
		OneWire <= 'Z';
		wait for 9 us;
		
		wait for 800 ns;
		
		Byte_in <= "11110000";
		
		RnW <= '0';
		
		Start <= '1';
		wait for 30 ns;
		Start <= '0';
		
		wait for 700 us;
		
		RnW <= '1';
		Start <= '1';
		wait for 20 ns;
		Start <= '0';
		
		wait for 6 us;
		OneWire <= '0';
		wait for 55 us;
		OneWire <= 'Z';
		wait for 9 us;
		
		wait for 6 us;
		OneWire <= '0';
		wait for 55 us;
		OneWire <= 'Z';
		wait for 9 us;
		
		wait for 6 us;
		OneWire <= '0';
		wait for 55 us;
		OneWire <= 'Z';
		wait for 9 us;
		
		wait for 6 us;
		OneWire <= '0';
		wait for 55 us;
		OneWire <= 'Z';
		wait for 9 us;
		
		wait for 6 us;
		OneWire <= '1';
		wait for 55 us;
		OneWire <= 'Z';
		wait for 9 us;
		
		wait for 6 us;
		OneWire <= '1';
		wait for 55 us;
		OneWire <= 'Z';
		wait for 9 us;
		
		wait for 6 us;
		OneWire <= '1';
		wait for 55 us;
		OneWire <= 'Z';
		wait for 9 us;
		
		wait for 6 us;
		OneWire <= '1';
		wait for 55 us;
		OneWire <= 'Z';
		wait for 9 us;
		
      WAIT; -- will wait forever
		
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
