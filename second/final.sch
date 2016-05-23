<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="rot_a" />
        <signal name="rot_b" />
        <signal name="LED(3:0)" />
        <signal name="XLXN_8(15:0)" />
        <signal name="XLXN_16(6:0)" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22(3:0)" />
        <signal name="XLXN_23(3:0)" />
        <signal name="XLXN_24(3:0)" />
        <signal name="XLXN_25(6:0)" />
        <signal name="XLXN_26(6:0)" />
        <signal name="XLXN_27(7:0)" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="DS18s20" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="rot_a" />
        <port polarity="Input" name="rot_b" />
        <port polarity="Output" name="LED(3:0)" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="BiDirectional" name="DS18s20" />
        <blockdef name="termometer">
            <timestamp>2016-5-23T16:22:53</timestamp>
            <rect width="288" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="RotaryEnc">
            <timestamp>2016-5-10T8:24:4</timestamp>
            <rect width="256" x="64" y="-256" height="192" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="Interpreter">
            <timestamp>2016-5-23T16:40:8</timestamp>
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="double_dabble">
            <timestamp>2016-5-23T16:36:33</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="20" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="LCD">
            <timestamp>2016-5-10T6:20:16</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="LCDWrite">
            <timestamp>2016-5-10T6:20:16</timestamp>
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <block symbolname="double_dabble" name="XLXI_4">
            <blockpin signalname="XLXN_16(6:0)" name="BYTE_IN(6:0)" />
            <blockpin signalname="XLXN_22(3:0)" name="D(3:0)" />
            <blockpin signalname="XLXN_23(3:0)" name="S(3:0)" />
            <blockpin signalname="XLXN_24(3:0)" name="J(3:0)" />
        </block>
        <block symbolname="termometer" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_2" name="Freq_up" />
            <blockpin signalname="XLXN_3" name="Freq_down" />
            <blockpin signalname="LED(3:0)" name="Freq(3:0)" />
            <blockpin signalname="XLXN_8(15:0)" name="Data_out(15:0)" />
            <blockpin signalname="DS18s20" name="DS18S20" />
        </block>
        <block symbolname="RotaryEnc" name="XLXI_2">
            <blockpin signalname="rot_a" name="ROT_A" />
            <blockpin signalname="rot_b" name="ROT_B" />
            <blockpin signalname="XLXN_2" name="RotL" />
            <blockpin signalname="XLXN_3" name="RotR" />
            <blockpin signalname="CLK" name="Clk" />
        </block>
        <block symbolname="Interpreter" name="XLXI_3">
            <blockpin signalname="XLXN_8(15:0)" name="DATA(15:0)" />
            <blockpin signalname="XLXN_16(6:0)" name="VALUE(6:0)" />
            <blockpin signalname="XLXN_21" name="HALF" />
            <blockpin signalname="XLXN_20" name="SIGN" />
        </block>
        <block symbolname="LCD" name="XLXI_8">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_20" name="SIGN" />
            <blockpin signalname="XLXN_21" name="HALF" />
            <blockpin signalname="XLXN_36" name="BUSY_LCD" />
            <blockpin signalname="XLXN_23(3:0)" name="S(3:0)" />
            <blockpin signalname="XLXN_22(3:0)" name="D(3:0)" />
            <blockpin signalname="XLXN_24(3:0)" name="J(3:0)" />
            <blockpin signalname="XLXN_29" name="WE" />
            <blockpin signalname="XLXN_28" name="DnI" />
            <blockpin signalname="XLXN_27(7:0)" name="Byte(7:0)" />
        </block>
        <block symbolname="LCDWrite" name="XLXI_10">
            <blockpin signalname="XLXN_29" name="WE" />
            <blockpin signalname="XLXN_28" name="DnI" />
            <blockpin name="Reset" />
            <blockpin name="Cursor" />
            <blockpin name="Blink" />
            <blockpin signalname="XLXN_27(7:0)" name="DI(7:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="SF_CE" name="SF_CE" />
            <blockpin signalname="XLXN_36" name="Busy" />
            <blockpin signalname="CLK" name="Clk_50MHz" />
            <blockpin signalname="CLK" name="Clk_Sys" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK">
            <wire x2="272" y1="848" y2="848" x1="192" />
            <wire x2="272" y1="848" y2="1200" x1="272" />
            <wire x2="448" y1="1200" y2="1200" x1="272" />
            <wire x2="272" y1="1200" y2="1680" x1="272" />
            <wire x2="2736" y1="1680" y2="1680" x1="272" />
            <wire x2="2864" y1="1680" y2="1680" x1="2736" />
            <wire x2="800" y1="848" y2="848" x1="272" />
            <wire x2="800" y1="848" y2="1008" x1="800" />
            <wire x2="864" y1="1008" y2="1008" x1="800" />
            <wire x2="2368" y1="848" y2="848" x1="800" />
            <wire x2="2368" y1="848" y2="976" x1="2368" />
            <wire x2="2432" y1="976" y2="976" x1="2368" />
            <wire x2="2864" y1="1616" y2="1616" x1="2736" />
            <wire x2="2736" y1="1616" y2="1680" x1="2736" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="864" y1="1072" y2="1072" x1="832" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="864" y1="1136" y2="1136" x1="832" />
        </branch>
        <branch name="rot_a">
            <wire x2="448" y1="1072" y2="1072" x1="432" />
        </branch>
        <branch name="rot_b">
            <wire x2="448" y1="1136" y2="1136" x1="432" />
        </branch>
        <branch name="LED(3:0)">
            <wire x2="1312" y1="1008" y2="1008" x1="1280" />
        </branch>
        <branch name="XLXN_8(15:0)">
            <wire x2="1408" y1="1072" y2="1072" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="192" y="848" name="CLK" orien="R180" />
        <branch name="XLXN_16(6:0)">
            <wire x2="1808" y1="1200" y2="1200" x1="1792" />
            <wire x2="1808" y1="1200" y2="1232" x1="1808" />
            <wire x2="1968" y1="1232" y2="1232" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="432" y="1072" name="rot_a" orien="R180" />
        <iomarker fontsize="28" x="432" y="1136" name="rot_b" orien="R180" />
        <instance x="448" y="1296" name="XLXI_2" orien="R0">
        </instance>
        <instance x="864" y="1168" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1312" y="1008" name="LED(3:0)" orien="R0" />
        <instance x="1408" y="1232" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2432" y="1392" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_20">
            <wire x2="1808" y1="1072" y2="1072" x1="1792" />
            <wire x2="1808" y1="1040" y2="1072" x1="1808" />
            <wire x2="2432" y1="1040" y2="1040" x1="1808" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1808" y1="1136" y2="1136" x1="1792" />
            <wire x2="1808" y1="1104" y2="1136" x1="1808" />
            <wire x2="2432" y1="1104" y2="1104" x1="1808" />
        </branch>
        <branch name="XLXN_22(3:0)">
            <wire x2="2432" y1="1296" y2="1296" x1="2352" />
        </branch>
        <branch name="XLXN_23(3:0)">
            <wire x2="2432" y1="1232" y2="1232" x1="2352" />
        </branch>
        <branch name="XLXN_24(3:0)">
            <wire x2="2432" y1="1360" y2="1360" x1="2352" />
        </branch>
        <instance x="1968" y="1392" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_27(7:0)">
            <wire x2="2832" y1="1360" y2="1360" x1="2816" />
            <wire x2="2864" y1="1360" y2="1360" x1="2832" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2816" y1="1168" y2="1184" x1="2816" />
            <wire x2="2816" y1="1184" y2="1296" x1="2816" />
            <wire x2="2864" y1="1296" y2="1296" x1="2816" />
        </branch>
        <branch name="LCD_E">
            <wire x2="3264" y1="1232" y2="1232" x1="3248" />
            <wire x2="3360" y1="1232" y2="1232" x1="3264" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="3264" y1="1296" y2="1296" x1="3248" />
            <wire x2="3344" y1="1296" y2="1296" x1="3264" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="3328" y1="1360" y2="1360" x1="3248" />
            <wire x2="3344" y1="1360" y2="1360" x1="3328" />
        </branch>
        <iomarker fontsize="28" x="3344" y="1360" name="LCD_RW" orien="R0" />
        <branch name="LCD_D(3:0)">
            <wire x2="3264" y1="1424" y2="1424" x1="3248" />
            <wire x2="3312" y1="1424" y2="1424" x1="3264" />
        </branch>
        <branch name="SF_CE">
            <wire x2="3264" y1="1488" y2="1488" x1="3248" />
            <wire x2="3376" y1="1488" y2="1488" x1="3264" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="2832" y1="976" y2="976" x1="2816" />
            <wire x2="2832" y1="976" y2="1232" x1="2832" />
            <wire x2="2864" y1="1232" y2="1232" x1="2832" />
        </branch>
        <instance x="2864" y="1712" name="XLXI_10" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3376" y="1488" name="SF_CE" orien="R0" />
        <branch name="XLXN_36">
            <wire x2="2432" y1="1168" y2="1168" x1="2400" />
            <wire x2="2400" y1="1168" y2="1728" x1="2400" />
            <wire x2="3248" y1="1728" y2="1728" x1="2400" />
            <wire x2="3264" y1="1728" y2="1728" x1="3248" />
            <wire x2="3264" y1="1680" y2="1680" x1="3248" />
            <wire x2="3264" y1="1680" y2="1728" x1="3264" />
        </branch>
        <iomarker fontsize="28" x="1328" y="1440" name="DS18s20" orien="R0" />
        <branch name="DS18s20">
            <wire x2="1296" y1="1136" y2="1136" x1="1280" />
            <wire x2="1296" y1="1136" y2="1440" x1="1296" />
            <wire x2="1328" y1="1440" y2="1440" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="3312" y="1424" name="LCD_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3344" y="1296" name="LCD_RS" orien="R0" />
        <iomarker fontsize="28" x="3360" y="1232" name="LCD_E" orien="R0" />
    </sheet>
</drawing>