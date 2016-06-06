--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Init_Test.vhf
-- /___/   /\     Timestamp : 05/24/2016 10:38:28
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /windows/STUDIA/SEMESTR_VI/UCISK/VHDL/second/Init_Test.vhf -w /windows/STUDIA/SEMESTR_VI/UCISK/VHDL/second/Init_Test.sch
--Design Name: Init_Test
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

entity Init_Test is
   port ( CLK       : in    std_logic; 
          Freq_down : in    std_logic; 
          Freq_up   : in    std_logic; 
          LCD_E     : out   std_logic; 
          LCD_RS    : out   std_logic; 
          LCD_RW    : out   std_logic; 
          SF_CE     : out   std_logic; 
          DS18S20   : inout std_logic; 
          LCD_D     : inout std_logic_vector (3 downto 0));
end Init_Test;

architecture BEHAVIORAL of Init_Test is
   attribute IOSTANDARD       : string ;
   attribute SLEW             : string ;
   attribute DRIVE            : string ;
   attribute IBUF_DELAY_VALUE : string ;
   attribute IFD_DELAY_VALUE  : string ;
   attribute BOX_TYPE         : string ;
   signal Line                    : std_logic_vector (63 downto 0);
   signal XLXN_1                  : std_logic;
   signal XLXN_2                  : std_logic;
   signal XLXN_10                 : std_logic;
   signal XLXN_12                 : std_logic;
   signal XLXN_13                 : std_logic;
   signal XLXN_19                 : std_logic_vector (7 downto 0);
   signal XLXN_24                 : std_logic;
   signal XLXN_25                 : std_logic;
   signal XLXN_132                : std_logic;
   signal XLXN_140                : std_logic_vector (7 downto 0);
   signal XLXN_142                : std_logic;
   signal XLXN_145                : std_logic;
   signal XLXN_146                : std_logic_vector (15 downto 0);
   signal XLXN_167                : std_logic;
   signal XLXN_178                : std_logic;
   signal XLXN_179                : std_logic;
   signal XLXN_180                : std_logic;
   signal XLXI_3_Reset_openSignal : std_logic;
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
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
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
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   XLXN_146(15 downto 0) <= x"0000";
   XLXI_1 : BusController
      port map (Bus_in=>XLXN_25,
                CLK=>CLK,
                Data_in=>XLXN_1,
                Reset=>XLXN_24,
                RnW=>XLXN_2,
                Start=>XLXN_180,
                Busy=>XLXN_167,
                Bus_out=>XLXN_142,
                Read_out=>XLXN_145);
   
   XLXI_2 : ByteModule
      port map (Bit_in=>XLXN_145,
                Busy_bit=>XLXN_167,
                Byte_In(7 downto 0)=>XLXN_19(7 downto 0),
                CLK=>CLK,
                RnW=>XLXN_10,
                Start=>XLXN_12,
                Bit_out=>XLXN_1,
                Busy=>XLXN_13,
                Byte_Out(7 downto 0)=>XLXN_140(7 downto 0),
                RnW_bit=>XLXN_2,
                Start_bit=>XLXN_179);
   
   XLXI_3 : LCD1x64
      port map (Blank(15 downto 0)=>XLXN_146(15 downto 0),
                Clk_50MHz=>CLK,
                Line(63 downto 0)=>Line(63 downto 0),
                Reset=>XLXI_3_Reset_openSignal,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
   XLXI_5 : Controller
      port map (Bit_in=>XLXN_145,
                Busy_in=>XLXN_13,
                Byte_in(7 downto 0)=>XLXN_140(7 downto 0),
                CLK=>CLK,
                c_Busy_in_bit=>XLXN_167,
                Freq_down=>Freq_down,
                Freq_up=>Freq_up,
                Byte_out(7 downto 0)=>XLXN_19(7 downto 0),
                Data_out(15 downto 0)=>Line(15 downto 0),
                Freq_state=>open,
                Reset=>XLXN_24,
                Reset_start=>XLXN_178,
                RnW=>XLXN_10,
                Start=>XLXN_12);
   
   XLXI_6 : IOBUF
      port map (I=>XLXN_132,
                T=>XLXN_142,
                O=>XLXN_25,
                IO=>DS18S20);
   
   XLXI_18 : GND
      port map (G=>XLXN_132);
   
   XLXI_20 : OR2
      port map (I0=>XLXN_178,
                I1=>XLXN_179,
                O=>XLXN_180);
   
end BEHAVIORAL;


