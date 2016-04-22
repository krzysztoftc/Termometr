--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Bus_byte_test.vhf
-- /___/   /\     Timestamp : 04/20/2016 20:29:04
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/user/Desktop/Termometr/second/Bus_byte_test.vhf -w C:/Users/user/Desktop/Termometr/second/Bus_byte_test.sch
--Design Name: Bus_byte_test
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Bus_byte_test is
   port ( Byte_in  : in    std_logic_vector (7 downto 0); 
          Clk      : in    std_logic; 
          RnW      : in    std_logic; 
          Start    : in    std_logic; 
          Busy     : out   std_logic; 
          Byte_out : out   std_logic_vector (7 downto 0); 
          OneWire  : inout std_logic);
end Bus_byte_test;

architecture BEHAVIORAL of Bus_byte_test is
   attribute IOSTANDARD       : string ;
   attribute SLEW             : string ;
   attribute DRIVE            : string ;
   attribute IBUF_DELAY_VALUE : string ;
   attribute IFD_DELAY_VALUE  : string ;
   attribute BOX_TYPE         : string ;
   signal XLXN_8   : std_logic;
   signal XLXN_9   : std_logic;
   signal XLXN_10  : std_logic;
   signal XLXN_11  : std_logic;
   signal XLXN_12  : std_logic;
   signal XLXN_13  : std_logic;
   signal XLXN_19  : std_logic;
   signal XLXN_27  : std_logic;
   signal XLXN_28  : std_logic;
   component ByteModule
      port ( CLK       : in    std_logic; 
             Bit_in    : in    std_logic; 
             Start     : in    std_logic; 
             RnW       : in    std_logic; 
             Busy_bit  : in    std_logic; 
             Byte_In   : in    std_logic_vector (7 downto 0); 
             Bit_out   : out   std_logic; 
             Busy      : out   std_logic; 
             RnW_bit   : out   std_logic; 
             Start_bit : out   std_logic; 
             Byte_Out  : out   std_logic_vector (7 downto 0));
   end component;
   
   component BusController
      port ( Bus_in   : in    std_logic; 
             CLK      : in    std_logic; 
             Data_in  : in    std_logic; 
             Reset    : in    std_logic; 
             RnW      : in    std_logic; 
             Start    : in    std_logic; 
             Bus_out  : out   std_logic; 
             Busy     : out   std_logic; 
             Read_out : out   std_logic);
   end component;
   
   component IOBUF
      port ( I  : in    std_logic; 
             IO : inout std_logic; 
             O  : out   std_logic; 
             T  : in    std_logic);
   end component;
   attribute IOSTANDARD of IOBUF : component is "DEFAULT";
   attribute SLEW of IOBUF : component is "SLOW";
   attribute DRIVE of IOBUF : component is "12";
   attribute IBUF_DELAY_VALUE of IOBUF : component is "0";
   attribute IFD_DELAY_VALUE of IOBUF : component is "AUTO";
   attribute BOX_TYPE of IOBUF : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_1 : ByteModule
      port map (Bit_in=>XLXN_12,
                Busy_bit=>XLXN_13,
                Byte_In(7 downto 0)=>Byte_in(7 downto 0),
                CLK=>Clk,
                RnW=>RnW,
                Start=>Start,
                Bit_out=>XLXN_9,
                Busy=>Busy,
                Byte_Out(7 downto 0)=>Byte_out(7 downto 0),
                RnW_bit=>XLXN_10,
                Start_bit=>XLXN_11);
   
   XLXI_2 : BusController
      port map (Bus_in=>XLXN_28,
                CLK=>Clk,
                Data_in=>XLXN_9,
                Reset=>XLXN_19,
                RnW=>XLXN_10,
                Start=>XLXN_11,
                Busy=>XLXN_13,
                Bus_out=>XLXN_27,
                Read_out=>XLXN_12);
   
   XLXI_3 : IOBUF
      port map (I=>XLXN_8,
                T=>XLXN_27,
                O=>XLXN_28,
                IO=>OneWire);
   
   XLXI_4 : GND
      port map (G=>XLXN_8);
   
   XLXI_5 : GND
      port map (G=>XLXN_19);
   
end BEHAVIORAL;


