<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="XLXN_19(7:0)" />
        <signal name="XLXN_2" />
        <signal name="XLXN_1" />
        <signal name="XLXN_5" />
        <signal name="XLXN_132" />
        <signal name="XLXN_142" />
        <signal name="XLXN_146(15:0)" />
        <signal name="DS18S20" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <signal name="XLXN_17" />
        <signal name="XLXN_24" />
        <signal name="XLXN_10" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_167" />
        <signal name="XLXN_140(7:0)" />
        <signal name="XLXN_24(7:0)" />
        <signal name="XLXN_13" />
        <signal name="XLXN_12" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_145" />
        <signal name="XLXN_178" />
        <signal name="XLXN_179" />
        <signal name="XLXN_180" />
        <port polarity="Input" name="CLK" />
        <port polarity="BiDirectional" name="DS18S20" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="SF_CE" />
        <blockdef name="ByteModule">
            <timestamp>2016-4-11T18:40:35</timestamp>
            <rect width="288" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-352" y2="-352" x1="352" />
            <line x2="416" y1="-272" y2="-272" x1="352" />
            <line x2="416" y1="-192" y2="-192" x1="352" />
            <line x2="416" y1="-112" y2="-112" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2008-9-19T11:10:6</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="BusController">
            <timestamp>2016-4-11T18:40:45</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="iobuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="128" y1="-128" y2="-128" x1="224" />
            <line x2="128" y1="-64" y2="-64" x1="160" />
            <line x2="160" y1="-128" y2="-64" x1="160" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="96" y1="-140" y2="-192" x1="96" />
            <line x2="96" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-96" y2="-160" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="128" />
            <line x2="128" y1="-160" y2="-128" x1="64" />
            <line x2="128" y1="-96" y2="-32" x1="128" />
            <line x2="128" y1="-64" y2="-96" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="Controller">
            <timestamp>2016-4-17T8:41:0</timestamp>
            <line x2="432" y1="64" y2="64" x1="368" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-256" y2="-256" x1="368" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-76" height="24" />
            <line x2="432" y1="-64" y2="-64" x1="368" />
            <rect width="304" x="64" y="-384" height="480" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="double_dabble">
            <timestamp>2016-4-20T18:42:40</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="ByteModule" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_145" name="Bit_in" />
            <blockpin signalname="XLXN_12" name="Start" />
            <blockpin signalname="XLXN_10" name="RnW" />
            <blockpin signalname="XLXN_167" name="Busy_bit" />
            <blockpin signalname="XLXN_19(7:0)" name="Byte_In(7:0)" />
            <blockpin signalname="XLXN_1" name="Bit_out" />
            <blockpin signalname="XLXN_13" name="Busy" />
            <blockpin signalname="XLXN_2" name="RnW_bit" />
            <blockpin signalname="XLXN_179" name="Start_bit" />
            <blockpin signalname="XLXN_140(7:0)" name="Byte_Out(7:0)" />
        </block>
        <block symbolname="LCD1x64" name="XLXI_2">
            <blockpin signalname="CLK" name="Clk_50MHz" />
            <blockpin name="Reset" />
            <blockpin name="Line(63:0)" />
            <blockpin signalname="XLXN_146(15:0)" name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="BusController" name="XLXI_3">
            <blockpin signalname="XLXN_5" name="Bus_in" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_1" name="Data_in" />
            <blockpin signalname="XLXN_24" name="Reset" />
            <blockpin signalname="XLXN_2" name="RnW" />
            <blockpin signalname="XLXN_180" name="Start" />
            <blockpin signalname="XLXN_142" name="Bus_out" />
            <blockpin signalname="XLXN_167" name="Busy" />
            <blockpin signalname="XLXN_145" name="Read_out" />
        </block>
        <block symbolname="iobuf" name="XLXI_4">
            <blockpin signalname="XLXN_132" name="I" />
            <blockpin signalname="DS18S20" name="IO" />
            <blockpin signalname="XLXN_5" name="O" />
            <blockpin signalname="XLXN_142" name="T" />
        </block>
        <block symbolname="gnd" name="XLXI_18">
            <blockpin signalname="XLXN_132" name="G" />
        </block>
        <block symbolname="Controller" name="XLXI_5">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_13" name="Busy_in" />
            <blockpin signalname="XLXN_167" name="c_Busy_in_bit" />
            <blockpin signalname="XLXN_145" name="Bit_in" />
            <blockpin signalname="XLXN_140(7:0)" name="Byte_in(7:0)" />
            <blockpin signalname="XLXN_12" name="Start" />
            <blockpin signalname="XLXN_10" name="RnW" />
            <blockpin signalname="XLXN_24" name="Reset" />
            <blockpin name="Data_out(15:0)" />
            <blockpin signalname="XLXN_19(7:0)" name="Byte_out(7:0)" />
            <blockpin signalname="XLXN_178" name="Reset_start" />
        </block>
        <block symbolname="or2" name="XLXI_20">
            <blockpin signalname="XLXN_178" name="I0" />
            <blockpin signalname="XLXN_179" name="I1" />
            <blockpin signalname="XLXN_180" name="O" />
        </block>
        <block symbolname="double_dabble" name="XLXI_21">
            <blockpin name="BYTE_IN(6:0)" />
            <blockpin name="J(3:0)" />
            <blockpin name="D(3:0)" />
            <blockpin name="S(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK">
            <wire x2="432" y1="1024" y2="1024" x1="256" />
            <wire x2="736" y1="1024" y2="1024" x1="432" />
            <wire x2="432" y1="1024" y2="1568" x1="432" />
            <wire x2="1376" y1="1568" y2="1568" x1="432" />
            <wire x2="2288" y1="1568" y2="1568" x1="1376" />
            <wire x2="2288" y1="1568" y2="1936" x1="2288" />
            <wire x2="2416" y1="1936" y2="1936" x1="2288" />
            <wire x2="1376" y1="1040" y2="1568" x1="1376" />
            <wire x2="1520" y1="1040" y2="1040" x1="1376" />
            <wire x2="2288" y1="1104" y2="1568" x1="2288" />
            <wire x2="2432" y1="1104" y2="1104" x1="2288" />
        </branch>
        <branch name="XLXN_19(7:0)">
            <wire x2="1344" y1="1312" y2="1312" x1="1168" />
            <wire x2="1344" y1="1312" y2="1360" x1="1344" />
            <wire x2="1520" y1="1360" y2="1360" x1="1344" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="2176" y1="1200" y2="1200" x1="1936" />
            <wire x2="2176" y1="1200" y2="1296" x1="2176" />
            <wire x2="2432" y1="1296" y2="1296" x1="2176" />
        </branch>
        <branch name="XLXN_1">
            <wire x2="2176" y1="1040" y2="1040" x1="1936" />
            <wire x2="2176" y1="1040" y2="1168" x1="2176" />
            <wire x2="2432" y1="1168" y2="1168" x1="2176" />
        </branch>
        <instance x="1520" y="1392" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2416" y="1968" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2432" y="1392" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2992" y="960" name="XLXI_4" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="2416" y1="960" y2="1040" x1="2416" />
            <wire x2="2432" y1="1040" y2="1040" x1="2416" />
            <wire x2="2992" y1="960" y2="960" x1="2416" />
            <wire x2="2992" y1="896" y2="960" x1="2992" />
        </branch>
        <instance x="2864" y="960" name="XLXI_18" orien="R0" />
        <branch name="XLXN_132">
            <wire x2="2928" y1="784" y2="832" x1="2928" />
            <wire x2="2960" y1="784" y2="784" x1="2928" />
            <wire x2="2960" y1="784" y2="832" x1="2960" />
            <wire x2="2992" y1="832" y2="832" x1="2960" />
        </branch>
        <branch name="XLXN_142">
            <wire x2="2992" y1="768" y2="768" x1="2816" />
            <wire x2="2816" y1="768" y2="1040" x1="2816" />
        </branch>
        <branch name="XLXN_146(15:0)">
            <wire x2="2416" y1="1744" y2="1744" x1="2176" />
        </branch>
        <branch name="DS18S20">
            <wire x2="3248" y1="832" y2="832" x1="3216" />
        </branch>
        <branch name="LCD_E">
            <wire x2="2864" y1="1680" y2="1680" x1="2832" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="2864" y1="1744" y2="1744" x1="2832" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="2864" y1="1808" y2="1808" x1="2832" />
        </branch>
        <branch name="LCD_D(3:0)">
            <wire x2="2864" y1="1872" y2="1872" x1="2832" />
        </branch>
        <branch name="SF_CE">
            <wire x2="2864" y1="1936" y2="1936" x1="2832" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1184" y1="1120" y2="1120" x1="1168" />
            <wire x2="2256" y1="816" y2="816" x1="1184" />
            <wire x2="2256" y1="816" y2="1232" x1="2256" />
            <wire x2="2432" y1="1232" y2="1232" x1="2256" />
            <wire x2="1184" y1="816" y2="1120" x1="1184" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1344" y1="1024" y2="1024" x1="1168" />
            <wire x2="1344" y1="1024" y2="1232" x1="1344" />
            <wire x2="1520" y1="1232" y2="1232" x1="1344" />
        </branch>
        <branch name="XLXN_167">
            <wire x2="688" y1="1376" y2="1472" x1="688" />
            <wire x2="736" y1="1472" y2="1472" x1="688" />
            <wire x2="736" y1="1472" y2="2112" x1="736" />
            <wire x2="3152" y1="2112" y2="2112" x1="736" />
            <wire x2="736" y1="1376" y2="1376" x1="688" />
            <wire x2="1456" y1="1296" y2="1472" x1="1456" />
            <wire x2="2976" y1="1472" y2="1472" x1="1456" />
            <wire x2="1520" y1="1296" y2="1296" x1="1456" />
            <wire x2="2976" y1="1200" y2="1200" x1="2816" />
            <wire x2="2976" y1="1200" y2="1344" x1="2976" />
            <wire x2="2976" y1="1344" y2="1472" x1="2976" />
            <wire x2="3152" y1="1344" y2="1344" x1="2976" />
            <wire x2="3152" y1="1344" y2="2112" x1="3152" />
        </branch>
        <branch name="XLXN_140(7:0)">
            <wire x2="672" y1="1344" y2="1536" x1="672" />
            <wire x2="2016" y1="1536" y2="1536" x1="672" />
            <wire x2="736" y1="1344" y2="1344" x1="672" />
            <wire x2="2016" y1="1360" y2="1360" x1="1936" />
            <wire x2="2016" y1="1360" y2="1536" x1="2016" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2096" y1="896" y2="896" x1="592" />
            <wire x2="2096" y1="896" y2="1120" x1="2096" />
            <wire x2="592" y1="896" y2="1216" x1="592" />
            <wire x2="736" y1="1216" y2="1216" x1="592" />
            <wire x2="2096" y1="1120" y2="1120" x1="1936" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="560" y1="1152" y2="1456" x1="560" />
            <wire x2="1312" y1="1456" y2="1456" x1="560" />
            <wire x2="736" y1="1152" y2="1152" x1="560" />
            <wire x2="1312" y1="1168" y2="1456" x1="1312" />
            <wire x2="1520" y1="1168" y2="1168" x1="1312" />
        </branch>
        <instance x="736" y="1376" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_145">
            <wire x2="736" y1="1280" y2="1280" x1="720" />
            <wire x2="720" y1="1280" y2="1504" x1="720" />
            <wire x2="1424" y1="1504" y2="1504" x1="720" />
            <wire x2="1520" y1="1104" y2="1104" x1="1424" />
            <wire x2="1424" y1="1104" y2="1440" x1="1424" />
            <wire x2="2832" y1="1440" y2="1440" x1="1424" />
            <wire x2="1424" y1="1440" y2="1504" x1="1424" />
            <wire x2="2832" y1="1360" y2="1360" x1="2816" />
            <wire x2="2832" y1="1360" y2="1440" x1="2832" />
        </branch>
        <branch name="XLXN_178">
            <wire x2="1184" y1="1440" y2="1440" x1="1168" />
            <wire x2="1184" y1="1408" y2="1440" x1="1184" />
            <wire x2="2000" y1="1408" y2="1408" x1="1184" />
            <wire x2="2000" y1="1392" y2="1408" x1="2000" />
            <wire x2="2128" y1="1392" y2="1392" x1="2000" />
        </branch>
        <instance x="2128" y="1456" name="XLXI_20" orien="R0" />
        <branch name="XLXN_179">
            <wire x2="2032" y1="1280" y2="1280" x1="1936" />
            <wire x2="2032" y1="1280" y2="1328" x1="2032" />
            <wire x2="2128" y1="1328" y2="1328" x1="2032" />
        </branch>
        <branch name="XLXN_180">
            <wire x2="2432" y1="1360" y2="1360" x1="2384" />
        </branch>
        <iomarker fontsize="28" x="3248" y="832" name="DS18S20" orien="R0" />
        <iomarker fontsize="28" x="2864" y="1680" name="LCD_E" orien="R0" />
        <iomarker fontsize="28" x="2864" y="1872" name="LCD_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2864" y="1936" name="SF_CE" orien="R0" />
        <iomarker fontsize="28" x="2864" y="1808" name="LCD_RW" orien="R0" />
        <iomarker fontsize="28" x="2864" y="1744" name="LCD_RS" orien="R0" />
        <iomarker fontsize="28" x="256" y="1024" name="CLK" orien="R180" />
        <instance x="1248" y="1904" name="XLXI_21" orien="R0">
        </instance>
    </sheet>
</drawing>