-- Vhdl test bench created from schematic F:\second\Init_Test.sch - Tue Apr 12 09:53:37 2016
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
ENTITY Init_Test_Init_Test_sch_tb IS
END Init_Test_Init_Test_sch_tb;
ARCHITECTURE behavioral OF Init_Test_Init_Test_sch_tb IS 

   COMPONENT Init_Test
   PORT( CLK	:	IN	STD_LOGIC; 
          DS18S20	:	INOUT	STD_LOGIC; 
          LCD_E	:	OUT	STD_LOGIC; 
          LCD_RS	:	OUT	STD_LOGIC; 
          LCD_RW	:	OUT	STD_LOGIC; 
          LCD_D	:	INOUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          FREQ_DOWN : IN STD_LOGIC;
			 FREQ_UP : IN STD_LOGIC;
			 SF_CE	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL DS18S20	:	STD_LOGIC;
   SIGNAL LCD_E	:	STD_LOGIC;
   SIGNAL LCD_RS	:	STD_LOGIC;
   SIGNAL LCD_RW	:	STD_LOGIC;
   SIGNAL LCD_D	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL SF_CE	:	STD_LOGIC;
	SIGNAL FREQ_DOWN : STD_LOGIC;
	SIGNAL FREQ_UP : STD_LOGIC;
	
	-- Clock period definitions
   constant CLK_period : time := 20 ns;
	
BEGIN

   UUT: Init_Test PORT MAP(
		CLK => CLK, 
		DS18S20 => DS18S20, 
		LCD_E => LCD_E, 
		LCD_RS => LCD_RS, 
		LCD_RW => LCD_RW, 
		LCD_D => LCD_D, 
		SF_CE => SF_CE,
		FREQ_DOWN => FREQ_DOWN,
		FREQ_UP => FREQ_UP
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
		FREQ_DOWN <= '1';
		wait for CLK_period;
		FREQ_DOWN <= '0';
	
      WAIT; -- will wait forever
   END PROCESS;
	
	   -- Presence pulse; DS18S20 = inout port of 1-Wire interface
   DS18S20 <= 'H';

   process
   begin
      DS18S20 <= 'Z';
      loop
         wait until  DS18S20'Delayed'Last_event > 450 us  and  DS18S20'Last_value = '0';
         DS18S20 <= '0' after 10 us, 'Z' after 310 us;
      end loop;
   end process;
	
-- *** End Test Bench - User Defined Section ***

END;
