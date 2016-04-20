<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_25" />
        <signal name="XLXN_24" />
        <signal name="CLK" />
        <signal name="XLXN_19(7:0)" />
        <signal name="XLXN_13" />
        <signal name="XLXN_12" />
        <signal name="XLXN_10" />
        <signal name="XLXN_2" />
        <signal name="XLXN_1" />
        <signal name="XLXN_132" />
        <signal name="XLXN_140(7:0)" />
        <signal name="XLXN_142" />
        <signal name="XLXN_146(15:0)" />
        <signal name="DS18S20" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <signal name="Line(63:0)" />
        <signal name="Line(15:0)" />
        <signal name="Line(63:16)" />
        <signal name="XLXN_167" />
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
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
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
        <block symbolname="Controller" name="XLXI_5">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_13" name="Busy_in" />
            <blockpin signalname="XLXN_167" name="c_Busy_in_bit" />
            <blockpin signalname="XLXN_145" name="Bit_in" />
            <blockpin signalname="XLXN_140(7:0)" name="Byte_in(7:0)" />
            <blockpin signalname="XLXN_12" name="Start" />
            <blockpin signalname="XLXN_10" name="RnW" />
            <blockpin signalname="XLXN_24" name="Reset" />
            <blockpin signalname="Line(15:0)" name="Data_out(15:0)" />
            <blockpin signalname="XLXN_19(7:0)" name="Byte_out(7:0)" />
            <blockpin signalname="XLXN_178" name="Reset_start" />
        </block>
        <block symbolname="ByteModule" name="XLXI_2">
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
        <block symbolname="LCD1x64" name="XLXI_3">
            <blockpin signalname="CLK" name="Clk_50MHz" />
            <blockpin name="Reset" />
            <blockpin signalname="Line(63:0)" name="Line(63:0)" />
            <blockpin signalname="XLXN_146(15:0)" name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="BusController" name="XLXI_1">
            <blockpin signalname="XLXN_25" name="Bus_in" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_1" name="Data_in" />
            <blockpin signalname="XLXN_24" name="Reset" />
            <blockpin signalname="XLXN_2" name="RnW" />
            <blockpin signalname="XLXN_180" name="Start" />
            <blockpin signalname="XLXN_142" name="Bus_out" />
            <blockpin signalname="XLXN_167" name="Busy" />
            <blockpin signalname="XLXN_145" name="Read_out" />
        </block>
        <block symbolname="iobuf" name="XLXI_6">
            <blockpin signalname="XLXN_132" name="I" />
            <blockpin signalname="DS18S20" name="IO" />
            <blockpin signalname="XLXN_25" name="O" />
            <blockpin signalname="XLXN_142" name="T" />
        </block>
        <block symbolname="gnd" name="XLXI_18">
            <blockpin signalname="XLXN_132" name="G" />
        </block>
        <block symbolname="constant" name="XLXI_19">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_146(15:0)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_20">
            <blockpin signalname="XLXN_178" name="I0" />
            <blockpin signalname="XLXN_179" name="I1" />
            <blockpin signalname="XLXN_180" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK">
            <wire x2="400" y1="1168" y2="1168" x1="224" />
            <wire x2="704" y1="1168" y2="1168" x1="400" />
            <wire x2="400" y1="1168" y2="1712" x1="400" />
            <wire x2="1344" y1="1712" y2="1712" x1="400" />
            <wire x2="2256" y1="1712" y2="1712" x1="1344" />
            <wire x2="2256" y1="1712" y2="2080" x1="2256" />
            <wire x2="2384" y1="2080" y2="2080" x1="2256" />
            <wire x2="1344" y1="1184" y2="1712" x1="1344" />
            <wire x2="1488" y1="1184" y2="1184" x1="1344" />
            <wire x2="2256" y1="1248" y2="1712" x1="2256" />
            <wire x2="2400" y1="1248" y2="1248" x1="2256" />
        </branch>
        <branch name="XLXN_19(7:0)">
            <wire x2="1312" y1="1456" y2="1456" x1="1136" />
            <wire x2="1312" y1="1456" y2="1504" x1="1312" />
            <wire x2="1488" y1="1504" y2="1504" x1="1312" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="2144" y1="1344" y2="1344" x1="1904" />
            <wire x2="2144" y1="1344" y2="1440" x1="2144" />
            <wire x2="2400" y1="1440" y2="1440" x1="2144" />
        </branch>
        <branch name="XLXN_1">
            <wire x2="2144" y1="1184" y2="1184" x1="1904" />
            <wire x2="2144" y1="1184" y2="1312" x1="2144" />
            <wire x2="2400" y1="1312" y2="1312" x1="2144" />
        </branch>
        <instance x="1488" y="1536" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2384" y="2112" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2400" y="1536" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2960" y="1104" name="XLXI_6" orien="R0" />
        <branch name="XLXN_25">
            <wire x2="2384" y1="1104" y2="1184" x1="2384" />
            <wire x2="2400" y1="1184" y2="1184" x1="2384" />
            <wire x2="2960" y1="1104" y2="1104" x1="2384" />
            <wire x2="2960" y1="1040" y2="1104" x1="2960" />
        </branch>
        <instance x="2832" y="1104" name="XLXI_18" orien="R0" />
        <branch name="XLXN_132">
            <wire x2="2896" y1="928" y2="976" x1="2896" />
            <wire x2="2928" y1="928" y2="928" x1="2896" />
            <wire x2="2928" y1="928" y2="976" x1="2928" />
            <wire x2="2960" y1="976" y2="976" x1="2928" />
        </branch>
        <branch name="XLXN_142">
            <wire x2="2960" y1="912" y2="912" x1="2784" />
            <wire x2="2784" y1="912" y2="1184" x1="2784" />
        </branch>
        <branch name="XLXN_146(15:0)">
            <wire x2="2384" y1="1888" y2="1888" x1="2144" />
        </branch>
        <instance x="2000" y="1856" name="XLXI_19" orien="R0">
        </instance>
        <branch name="DS18S20">
            <wire x2="3216" y1="976" y2="976" x1="3184" />
        </branch>
        <iomarker fontsize="28" x="3216" y="976" name="DS18S20" orien="R0" />
        <branch name="LCD_E">
            <wire x2="2832" y1="1824" y2="1824" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1824" name="LCD_E" orien="R0" />
        <branch name="LCD_RS">
            <wire x2="2832" y1="1888" y2="1888" x1="2800" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="2832" y1="1952" y2="1952" x1="2800" />
        </branch>
        <branch name="LCD_D(3:0)">
            <wire x2="2832" y1="2016" y2="2016" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="2016" name="LCD_D(3:0)" orien="R0" />
        <branch name="SF_CE">
            <wire x2="2832" y1="2080" y2="2080" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="2080" name="SF_CE" orien="R0" />
        <iomarker fontsize="28" x="2832" y="1952" name="LCD_RW" orien="R0" />
        <iomarker fontsize="28" x="2832" y="1888" name="LCD_RS" orien="R0" />
        <iomarker fontsize="28" x="224" y="1168" name="CLK" orien="R180" />
        <branch name="Line(63:0)">
            <wire x2="2384" y1="1824" y2="1824" x1="1648" />
            <wire x2="1648" y1="1824" y2="1920" x1="1648" />
            <wire x2="1648" y1="1920" y2="2000" x1="1648" />
            <wire x2="1648" y1="2000" y2="2048" x1="1648" />
        </branch>
        <bustap x2="1552" y1="2000" y2="2000" x1="1648" />
        <bustap x2="1552" y1="1920" y2="1920" x1="1648" />
        <branch name="Line(63:16)">
            <wire x2="1552" y1="1920" y2="1920" x1="1456" />
        </branch>
        <branch name="Line(15:0)">
            <wire x2="1232" y1="1360" y2="1360" x1="1136" />
            <wire x2="1232" y1="1360" y2="2000" x1="1232" />
            <wire x2="1552" y1="2000" y2="2000" x1="1232" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1152" y1="1264" y2="1264" x1="1136" />
            <wire x2="2224" y1="960" y2="960" x1="1152" />
            <wire x2="2224" y1="960" y2="1376" x1="2224" />
            <wire x2="2400" y1="1376" y2="1376" x1="2224" />
            <wire x2="1152" y1="960" y2="1264" x1="1152" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1312" y1="1168" y2="1168" x1="1136" />
            <wire x2="1312" y1="1168" y2="1376" x1="1312" />
            <wire x2="1488" y1="1376" y2="1376" x1="1312" />
        </branch>
        <branch name="XLXN_167">
            <wire x2="656" y1="1520" y2="1616" x1="656" />
            <wire x2="704" y1="1616" y2="1616" x1="656" />
            <wire x2="704" y1="1616" y2="2256" x1="704" />
            <wire x2="3120" y1="2256" y2="2256" x1="704" />
            <wire x2="704" y1="1520" y2="1520" x1="656" />
            <wire x2="1424" y1="1440" y2="1616" x1="1424" />
            <wire x2="2944" y1="1616" y2="1616" x1="1424" />
            <wire x2="1488" y1="1440" y2="1440" x1="1424" />
            <wire x2="2944" y1="1344" y2="1344" x1="2784" />
            <wire x2="2944" y1="1344" y2="1488" x1="2944" />
            <wire x2="2944" y1="1488" y2="1616" x1="2944" />
            <wire x2="3120" y1="1488" y2="1488" x1="2944" />
            <wire x2="3120" y1="1488" y2="2256" x1="3120" />
        </branch>
        <branch name="XLXN_140(7:0)">
            <wire x2="640" y1="1488" y2="1680" x1="640" />
            <wire x2="1984" y1="1680" y2="1680" x1="640" />
            <wire x2="704" y1="1488" y2="1488" x1="640" />
            <wire x2="1984" y1="1504" y2="1504" x1="1904" />
            <wire x2="1984" y1="1504" y2="1680" x1="1984" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2064" y1="1040" y2="1040" x1="560" />
            <wire x2="2064" y1="1040" y2="1264" x1="2064" />
            <wire x2="560" y1="1040" y2="1360" x1="560" />
            <wire x2="704" y1="1360" y2="1360" x1="560" />
            <wire x2="2064" y1="1264" y2="1264" x1="1904" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="528" y1="1296" y2="1600" x1="528" />
            <wire x2="1280" y1="1600" y2="1600" x1="528" />
            <wire x2="704" y1="1296" y2="1296" x1="528" />
            <wire x2="1280" y1="1312" y2="1600" x1="1280" />
            <wire x2="1488" y1="1312" y2="1312" x1="1280" />
        </branch>
        <instance x="704" y="1520" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_145">
            <wire x2="704" y1="1424" y2="1424" x1="688" />
            <wire x2="688" y1="1424" y2="1648" x1="688" />
            <wire x2="1392" y1="1648" y2="1648" x1="688" />
            <wire x2="1488" y1="1248" y2="1248" x1="1392" />
            <wire x2="1392" y1="1248" y2="1584" x1="1392" />
            <wire x2="2800" y1="1584" y2="1584" x1="1392" />
            <wire x2="1392" y1="1584" y2="1648" x1="1392" />
            <wire x2="2800" y1="1504" y2="1504" x1="2784" />
            <wire x2="2800" y1="1504" y2="1584" x1="2800" />
        </branch>
        <branch name="XLXN_178">
            <wire x2="1152" y1="1584" y2="1584" x1="1136" />
            <wire x2="1152" y1="1552" y2="1584" x1="1152" />
            <wire x2="1968" y1="1552" y2="1552" x1="1152" />
            <wire x2="1968" y1="1536" y2="1552" x1="1968" />
            <wire x2="2096" y1="1536" y2="1536" x1="1968" />
        </branch>
        <instance x="2096" y="1600" name="XLXI_20" orien="R0" />
        <branch name="XLXN_179">
            <wire x2="2000" y1="1424" y2="1424" x1="1904" />
            <wire x2="2000" y1="1424" y2="1472" x1="2000" />
            <wire x2="2096" y1="1472" y2="1472" x1="2000" />
        </branch>
        <branch name="XLXN_180">
            <wire x2="2400" y1="1504" y2="1504" x1="2352" />
        </branch>
    </sheet>
</drawing>