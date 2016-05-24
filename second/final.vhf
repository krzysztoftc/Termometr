--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : final.vhf
-- /___/   /\     Timestamp : 05/24/2016 08:20:42
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/Termometr-master/second/final.vhf -w C:/Users/lab/Desktop/Termometr-master/second/final.sch
--Design Name: final
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

entity termometer_MUSER_final is
   port ( CLK       : in    std_logic; 
          Freq_down : in    std_logic; 
          Freq_up   : in    std_logic; 
          Data_out  : out   std_logic_vector (15 downto 0); 
          Freq      : out   std_logic_vector (3 downto 0); 
          DS18S20   : inout std_logic);
end termometer_MUSER_final;

architecture BEHAVIORAL of termometer_MUSER_final is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity final is
   port ( CLK     : in    std_logic; 
          rot_a   : in    std_logic; 
          rot_b   : in    std_logic; 
          LCD_E   : out   std_logic; 
          LCD_RS  : out   std_logic; 
          LCD_RW  : out   std_logic; 
          LED     : out   std_logic_vector (3 downto 0); 
          SF_CE   : out   std_logic; 
          DS18s20 : inout std_logic; 
          LCD_D   : inout std_logic_vector (3 downto 0));
end final;

architecture BEHAVIORAL of final is
   signal XLXN_2                    : std_logic;
   signal XLXN_3                    : std_logic;
   signal XLXN_8                    : std_logic_vector (15 downto 0);
   signal XLXN_16                   : std_logic_vector (6 downto 0);
   signal XLXN_20                   : std_logic;
   signal XLXN_21                   : std_logic;
   signal XLXN_22                   : std_logic_vector (3 downto 0);
   signal XLXN_23                   : std_logic_vector (3 downto 0);
   signal XLXN_24                   : std_logic_vector (3 downto 0);
   signal XLXN_27                   : std_logic_vector (7 downto 0);
   signal XLXN_28                   : std_logic;
   signal XLXN_29                   : std_logic;
   signal XLXN_36                   : std_logic;
   signal XLXI_10_Blink_openSignal  : std_logic;
   signal XLXI_10_Cursor_openSignal : std_logic;
   signal XLXI_10_Reset_openSignal  : std_logic;
   component termometer_MUSER_final
      port ( CLK       : in    std_logic; 
             Freq_up   : in    std_logic; 
             Freq_down : in    std_logic; 
             Freq      : out   std_logic_vector (3 downto 0); 
             Data_out  : out   std_logic_vector (15 downto 0); 
             DS18S20   : inout std_logic);
   end component;
   
   component RotaryEnc
      port ( ROT_A : in    std_logic; 
             ROT_B : in    std_logic; 
             RotL  : out   std_logic; 
             RotR  : out   std_logic; 
             Clk   : in    std_logic);
   end component;
   
   component Interpreter
      port ( DATA  : in    std_logic_vector (15 downto 0); 
             VALUE : out   std_logic_vector (6 downto 0); 
             HALF  : out   std_logic; 
             SIGN  : out   std_logic);
   end component;
   
   component double_dabble
      port ( BYTE_IN : in    std_logic_vector (6 downto 0); 
             D       : out   std_logic_vector (3 downto 0); 
             S       : out   std_logic_vector (3 downto 0); 
             J       : out   std_logic_vector (3 downto 0));
   end component;
   
   component LCD
      port ( CLK      : in    std_logic; 
             SIGN     : in    std_logic; 
             HALF     : in    std_logic; 
             BUSY_LCD : in    std_logic; 
             S        : in    std_logic_vector (3 downto 0); 
             D        : in    std_logic_vector (3 downto 0); 
             J        : in    std_logic_vector (3 downto 0); 
             WE       : out   std_logic; 
             DnI      : out   std_logic; 
             Byte     : out   std_logic_vector (7 downto 0));
   end component;
   
   component LCDWrite
      port ( WE        : in    std_logic; 
             DnI       : in    std_logic; 
             Reset     : in    std_logic; 
             Cursor    : in    std_logic; 
             Blink     : in    std_logic; 
             DI        : in    std_logic_vector (7 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RS    : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             SF_CE     : out   std_logic; 
             Busy      : out   std_logic; 
             Clk_50MHz : in    std_logic; 
             Clk_Sys   : in    std_logic);
   end component;
   
begin
   XLXI_1 : termometer_MUSER_final
      port map (CLK=>CLK,
                Freq_down=>XLXN_3,
                Freq_up=>XLXN_2,
                Data_out(15 downto 0)=>XLXN_8(15 downto 0),
                Freq(3 downto 0)=>LED(3 downto 0),
                DS18S20=>DS18s20);
   
   XLXI_2 : RotaryEnc
      port map (Clk=>CLK,
                ROT_A=>rot_a,
                ROT_B=>rot_b,
                RotL=>XLXN_2,
                RotR=>XLXN_3);
   
   XLXI_3 : Interpreter
      port map (DATA(15 downto 0)=>XLXN_8(15 downto 0),
                HALF=>XLXN_21,
                SIGN=>XLXN_20,
                VALUE(6 downto 0)=>XLXN_16(6 downto 0));
   
   XLXI_4 : double_dabble
      port map (BYTE_IN(6 downto 0)=>XLXN_16(6 downto 0),
                D(3 downto 0)=>XLXN_22(3 downto 0),
                J(3 downto 0)=>XLXN_24(3 downto 0),
                S(3 downto 0)=>XLXN_23(3 downto 0));
   
   XLXI_8 : LCD
      port map (BUSY_LCD=>XLXN_36,
                CLK=>CLK,
                D(3 downto 0)=>XLXN_22(3 downto 0),
                HALF=>XLXN_21,
                J(3 downto 0)=>XLXN_24(3 downto 0),
                S(3 downto 0)=>XLXN_23(3 downto 0),
                SIGN=>XLXN_20,
                Byte(7 downto 0)=>XLXN_27(7 downto 0),
                DnI=>XLXN_28,
                WE=>XLXN_29);
   
   XLXI_10 : LCDWrite
      port map (Blink=>XLXI_10_Blink_openSignal,
                Clk_Sys=>CLK,
                Clk_50MHz=>CLK,
                Cursor=>XLXI_10_Cursor_openSignal,
                DI(7 downto 0)=>XLXN_27(7 downto 0),
                DnI=>XLXN_28,
                Reset=>XLXI_10_Reset_openSignal,
                WE=>XLXN_29,
                Busy=>XLXN_36,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
end BEHAVIORAL;


