--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : termometer.vhf
-- /___/   /\     Timestamp : 05/23/2016 19:20:52
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /windows/STUDIA/SEMESTR_VI/UCISK/VHDL/second/termometer.vhf -w /windows/STUDIA/SEMESTR_VI/UCISK/VHDL/second/termometer.sch
--Design Name: termometer
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

entity termometer is
   port ( CLK       : in    std_logic; 
          Freq_down : in    std_logic; 
          Freq_up   : in    std_logic; 
          Data_out  : out   std_logic_vector (15 downto 0); 
          Freq      : out   std_logic_vector (3 downto 0); 
          DS18S20   : inout std_logic);
end termometer;

architecture BEHAVIORAL of termometer is
   attribute IOSTANDARD       : string ;
   attribute SLEW             : string ;
   attribute DRIVE            : string ;
   attribute IBUF_DELAY_VALUE : string ;
   attribute IFD_DELAY_VALUE  : string ;
   attribute BOX_TYPE         : string ;
   signal XLXN_43   : std_logic;
   signal XLXN_44   : std_logic;
   signal XLXN_45   : std_logic;
   signal XLXN_47   : std_logic_vector (7 downto 0);
   signal XLXN_49   : std_logic;
   signal XLXN_55   : std_logic;
   signal XLXN_56   : std_logic;
   signal XLXN_57   : std_logic;
   signal XLXN_58   : std_logic;
   signal XLXN_59   : std_logic;
   signal XLXN_60   : std_logic_vector (7 downto 0);
   signal XLXN_61   : std_logic;
   signal XLXN_62   : std_logic;
   signal XLXN_63   : std_logic;
   signal XLXN_66   : std_logic;
   signal XLXN_67   : std_logic;
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
   
   component Controller
      port ( CLK           : in    std_logic; 
             Freq_up       : in    std_logic; 
             Freq_down     : in    std_logic; 
             Busy_in       : in    std_logic; 
             c_Busy_in_bit : in    std_logic; 
             Bit_in        : in    std_logic; 
             Byte_in       : in    std_logic_vector (7 downto 0); 
             Start         : out   std_logic; 
             RnW           : out   std_logic; 
             Reset         : out   std_logic; 
             Reset_start   : out   std_logic; 
             Data_out      : out   std_logic_vector (15 downto 0); 
             Byte_out      : out   std_logic_vector (7 downto 0); 
             Freq_state    : out   std_logic_vector (3 downto 0));
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
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_21 : BusController
      port map (Bus_in=>XLXN_66,
                CLK=>CLK,
                Data_in=>XLXN_55,
                Reset=>XLXN_58,
                RnW=>XLXN_57,
                Start=>XLXN_43,
                Busy=>XLXN_61,
                Bus_out=>XLXN_63,
                Read_out=>XLXN_62);
   
   XLXI_22 : ByteModule
      port map (Bit_in=>XLXN_62,
                Busy_bit=>XLXN_61,
                Byte_In(7 downto 0)=>XLXN_47(7 downto 0),
                CLK=>CLK,
                RnW=>XLXN_49,
                Start=>XLXN_59,
                Bit_out=>XLXN_55,
                Busy=>XLXN_56,
                Byte_Out(7 downto 0)=>XLXN_60(7 downto 0),
                RnW_bit=>XLXN_57,
                Start_bit=>XLXN_44);
   
   XLXI_23 : Controller
      port map (Bit_in=>XLXN_62,
                Busy_in=>XLXN_56,
                Byte_in(7 downto 0)=>XLXN_60(7 downto 0),
                CLK=>CLK,
                c_Busy_in_bit=>XLXN_61,
                Freq_down=>Freq_down,
                Freq_up=>Freq_up,
                Byte_out(7 downto 0)=>XLXN_47(7 downto 0),
                Data_out(15 downto 0)=>Data_out(15 downto 0),
                Freq_state(3 downto 0)=>Freq(3 downto 0),
                Reset=>XLXN_58,
                Reset_start=>XLXN_45,
                RnW=>XLXN_49,
                Start=>XLXN_59);
   
   XLXI_24 : IOBUF
      port map (I=>XLXN_67,
                T=>XLXN_63,
                O=>XLXN_66,
                IO=>DS18S20);
   
   XLXI_25 : OR2
      port map (I0=>XLXN_45,
                I1=>XLXN_44,
                O=>XLXN_43);
   
   XLXI_26 : GND
      port map (G=>XLXN_67);
   
end BEHAVIORAL;


