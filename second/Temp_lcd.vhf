--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Temp_lcd.vhf
-- /___/   /\     Timestamp : 05/10/2016 10:38:22
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/second/Temp_lcd.vhf -w C:/Users/lab/Desktop/second/Temp_lcd.sch
--Design Name: Temp_lcd
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

entity Temp_lcd is
   port ( CLK     : in    std_logic; 
          rot_a   : in    std_logic; 
          rot_b   : in    std_logic; 
          half    : out   std_logic; 
          LCD_E   : out   std_logic; 
          LCD_RS  : out   std_logic; 
          LCD_RW  : out   std_logic; 
          LED     : out   std_logic_vector (3 downto 0); 
          SF_CE   : out   std_logic; 
          DS18S20 : inout std_logic; 
          LCD_D   : inout std_logic_vector (3 downto 0));
end Temp_lcd;

architecture BEHAVIORAL of Temp_lcd is
   attribute IOSTANDARD       : string ;
   attribute SLEW             : string ;
   attribute DRIVE            : string ;
   attribute IBUF_DELAY_VALUE : string ;
   attribute IFD_DELAY_VALUE  : string ;
   attribute BOX_TYPE         : string ;
   signal DATA                      : std_logic_vector (15 downto 0);
   signal XLXN_1                    : std_logic;
   signal XLXN_2                    : std_logic;
   signal XLXN_5                    : std_logic;
   signal XLXN_10                   : std_logic;
   signal XLXN_12                   : std_logic;
   signal XLXN_13                   : std_logic;
   signal XLXN_19                   : std_logic_vector (7 downto 0);
   signal XLXN_24                   : std_logic;
   signal XLXN_132                  : std_logic;
   signal XLXN_140                  : std_logic_vector (7 downto 0);
   signal XLXN_142                  : std_logic;
   signal XLXN_167                  : std_logic;
   signal XLXN_178                  : std_logic;
   signal XLXN_179                  : std_logic;
   signal XLXN_180                  : std_logic;
   signal XLXN_183                  : std_logic_vector (3 downto 0);
   signal XLXN_184                  : std_logic_vector (3 downto 0);
   signal XLXN_185                  : std_logic_vector (3 downto 0);
   signal XLXN_186                  : std_logic;
   signal XLXN_188                  : std_logic;
   signal XLXN_189                  : std_logic_vector (7 downto 0);
   signal XLXN_190                  : std_logic;
   signal XLXN_191                  : std_logic;
   signal XLXN_194                  : std_logic_vector (6 downto 0);
   signal XLXN_211                  : std_logic;
   signal XLXN_214                  : std_logic;
   signal XLXN_216                  : std_logic;
   signal half_DUMMY                : std_logic;
   signal XLXI_22_Blink_openSignal  : std_logic;
   signal XLXI_22_Cursor_openSignal : std_logic;
   signal XLXI_22_Reset_openSignal  : std_logic;
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
   
   component double_dabble
      port ( BYTE_IN : in    std_logic_vector (6 downto 0); 
             J       : out   std_logic_vector (3 downto 0); 
             D       : out   std_logic_vector (3 downto 0); 
             S       : out   std_logic_vector (3 downto 0));
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
   
   component Interpreter
      port ( DATA  : in    std_logic_vector (15 downto 0); 
             HALF  : out   std_logic; 
             SIGN  : out   std_logic; 
             VALUE : out   std_logic_vector (6 downto 0));
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
   
   component RotaryEnc
      port ( ROT_A : in    std_logic; 
             ROT_B : in    std_logic; 
             RotL  : out   std_logic; 
             RotR  : out   std_logic; 
             Clk   : in    std_logic);
   end component;
   
begin
   half <= half_DUMMY;
   XLXI_1 : ByteModule
      port map (Bit_in=>XLXN_211,
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
   
   XLXI_3 : BusController
      port map (Bus_in=>XLXN_5,
                CLK=>CLK,
                Data_in=>XLXN_1,
                Reset=>XLXN_24,
                RnW=>XLXN_2,
                Start=>XLXN_180,
                Busy=>XLXN_167,
                Bus_out=>XLXN_142,
                Read_out=>XLXN_211);
   
   XLXI_4 : IOBUF
      port map (I=>XLXN_132,
                T=>XLXN_142,
                O=>XLXN_5,
                IO=>DS18S20);
   
   XLXI_5 : Controller
      port map (Bit_in=>XLXN_211,
                Busy_in=>XLXN_13,
                Byte_in(7 downto 0)=>XLXN_140(7 downto 0),
                CLK=>CLK,
                c_Busy_in_bit=>XLXN_167,
                Freq_down=>XLXN_216,
                Freq_up=>XLXN_214,
                Byte_out(7 downto 0)=>XLXN_19(7 downto 0),
                Data_out(15 downto 0)=>DATA(15 downto 0),
                Freq_state(3 downto 0)=>LED(3 downto 0),
                Reset=>XLXN_24,
                Reset_start=>XLXN_178,
                RnW=>XLXN_10,
                Start=>XLXN_12);
   
   XLXI_18 : GND
      port map (G=>XLXN_132);
   
   XLXI_20 : OR2
      port map (I0=>XLXN_178,
                I1=>XLXN_179,
                O=>XLXN_180);
   
   XLXI_21 : double_dabble
      port map (BYTE_IN(6 downto 0)=>XLXN_194(6 downto 0),
                D(3 downto 0)=>XLXN_184(3 downto 0),
                J(3 downto 0)=>XLXN_183(3 downto 0),
                S(3 downto 0)=>XLXN_185(3 downto 0));
   
   XLXI_22 : LCDWrite
      port map (Blink=>XLXI_22_Blink_openSignal,
                Clk_Sys=>CLK,
                Clk_50MHz=>CLK,
                Cursor=>XLXI_22_Cursor_openSignal,
                DI(7 downto 0)=>XLXN_189(7 downto 0),
                DnI=>XLXN_190,
                Reset=>XLXI_22_Reset_openSignal,
                WE=>XLXN_191,
                Busy=>XLXN_188,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
   XLXI_23 : Interpreter
      port map (DATA(15 downto 0)=>DATA(15 downto 0),
                HALF=>half_DUMMY,
                SIGN=>XLXN_186,
                VALUE(6 downto 0)=>XLXN_194(6 downto 0));
   
   XLXI_24 : LCD
      port map (BUSY_LCD=>XLXN_188,
                CLK=>CLK,
                D(3 downto 0)=>XLXN_184(3 downto 0),
                HALF=>half_DUMMY,
                J(3 downto 0)=>XLXN_183(3 downto 0),
                S(3 downto 0)=>XLXN_185(3 downto 0),
                SIGN=>XLXN_186,
                Byte(7 downto 0)=>XLXN_189(7 downto 0),
                DnI=>XLXN_190,
                WE=>XLXN_191);
   
   XLXI_26 : RotaryEnc
      port map (Clk=>CLK,
                ROT_A=>rot_a,
                ROT_B=>rot_b,
                RotL=>XLXN_216,
                RotR=>XLXN_214);
   
end BEHAVIORAL;


