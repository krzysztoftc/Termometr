<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="Clk" />
        <signal name="OneWire" />
        <signal name="Start" />
        <signal name="RnW" />
        <signal name="XLXN_19" />
        <signal name="Byte_in(7:0)" />
        <signal name="Byte_out(7:0)" />
        <signal name="Busy" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <port polarity="Input" name="Clk" />
        <port polarity="BiDirectional" name="OneWire" />
        <port polarity="Input" name="Start" />
        <port polarity="Input" name="RnW" />
        <port polarity="Input" name="Byte_in(7:0)" />
        <port polarity="Output" name="Byte_out(7:0)" />
        <port polarity="Output" name="Busy" />
        <blockdef name="ByteModule">
            <timestamp>2016-3-28T12:38:13</timestamp>
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
        <blockdef name="BusController">
            <timestamp>2016-3-28T12:40:31</timestamp>
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
        <block symbolname="ByteModule" name="XLXI_1">
            <blockpin signalname="Clk" name="CLK" />
            <blockpin signalname="XLXN_12" name="Bit_in" />
            <blockpin signalname="Start" name="Start" />
            <blockpin signalname="RnW" name="RnW" />
            <blockpin signalname="XLXN_13" name="Busy_bit" />
            <blockpin signalname="Byte_in(7:0)" name="Byte_In(7:0)" />
            <blockpin signalname="XLXN_9" name="Bit_out" />
            <blockpin signalname="Busy" name="Busy" />
            <blockpin signalname="XLXN_10" name="RnW_bit" />
            <blockpin signalname="XLXN_11" name="Start_bit" />
            <blockpin signalname="Byte_out(7:0)" name="Byte_Out(7:0)" />
        </block>
        <block symbolname="BusController" name="XLXI_2">
            <blockpin signalname="XLXN_28" name="Bus_in" />
            <blockpin signalname="Clk" name="CLK" />
            <blockpin signalname="XLXN_9" name="Data_in" />
            <blockpin signalname="XLXN_19" name="Reset" />
            <blockpin signalname="XLXN_10" name="RnW" />
            <blockpin signalname="XLXN_11" name="Start" />
            <blockpin signalname="XLXN_27" name="Bus_out" />
            <blockpin signalname="XLXN_13" name="Busy" />
            <blockpin signalname="XLXN_12" name="Read_out" />
        </block>
        <block symbolname="iobuf" name="XLXI_3">
            <blockpin signalname="XLXN_8" name="I" />
            <blockpin signalname="OneWire" name="IO" />
            <blockpin signalname="XLXN_28" name="O" />
            <blockpin signalname="XLXN_27" name="T" />
        </block>
        <block symbolname="gnd" name="XLXI_4">
            <blockpin signalname="XLXN_8" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_19" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="896" y="1600" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1568" y="1584" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2048" y="1152" name="XLXI_3" orien="R0" />
        <instance x="1824" y="1152" name="XLXI_4" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1888" y1="1008" y2="1024" x1="1888" />
            <wire x2="1920" y1="1008" y2="1008" x1="1888" />
            <wire x2="1920" y1="1008" y2="1024" x1="1920" />
            <wire x2="2048" y1="1024" y2="1024" x1="1920" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1440" y1="1248" y2="1248" x1="1312" />
            <wire x2="1440" y1="1248" y2="1360" x1="1440" />
            <wire x2="1568" y1="1360" y2="1360" x1="1440" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1440" y1="1408" y2="1408" x1="1312" />
            <wire x2="1440" y1="1408" y2="1488" x1="1440" />
            <wire x2="1568" y1="1488" y2="1488" x1="1440" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1424" y1="1488" y2="1488" x1="1312" />
            <wire x2="1424" y1="1488" y2="1552" x1="1424" />
            <wire x2="1568" y1="1552" y2="1552" x1="1424" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="896" y1="1312" y2="1312" x1="832" />
            <wire x2="832" y1="1312" y2="1680" x1="832" />
            <wire x2="2032" y1="1680" y2="1680" x1="832" />
            <wire x2="2032" y1="1552" y2="1552" x1="1952" />
            <wire x2="2032" y1="1552" y2="1680" x1="2032" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="896" y1="1504" y2="1504" x1="848" />
            <wire x2="848" y1="1504" y2="1648" x1="848" />
            <wire x2="2000" y1="1648" y2="1648" x1="848" />
            <wire x2="2000" y1="1392" y2="1392" x1="1952" />
            <wire x2="2000" y1="1392" y2="1648" x1="2000" />
        </branch>
        <branch name="Clk">
            <wire x2="816" y1="1184" y2="1184" x1="784" />
            <wire x2="1472" y1="1184" y2="1184" x1="816" />
            <wire x2="1472" y1="1184" y2="1296" x1="1472" />
            <wire x2="1568" y1="1296" y2="1296" x1="1472" />
            <wire x2="816" y1="1184" y2="1248" x1="816" />
            <wire x2="896" y1="1248" y2="1248" x1="816" />
        </branch>
        <branch name="OneWire">
            <wire x2="2304" y1="1024" y2="1024" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1024" name="OneWire" orien="R0" />
        <branch name="Start">
            <wire x2="896" y1="1376" y2="1376" x1="752" />
        </branch>
        <branch name="RnW">
            <wire x2="896" y1="1440" y2="1440" x1="752" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1568" y1="1424" y2="1424" x1="1552" />
            <wire x2="1552" y1="1424" y2="1808" x1="1552" />
        </branch>
        <instance x="1488" y="1936" name="XLXI_5" orien="R0" />
        <branch name="Byte_in(7:0)">
            <wire x2="896" y1="1568" y2="1568" x1="752" />
        </branch>
        <branch name="Byte_out(7:0)">
            <wire x2="1328" y1="1568" y2="1568" x1="1312" />
            <wire x2="1328" y1="1568" y2="1840" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="784" y="1184" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="752" y="1376" name="Start" orien="R180" />
        <iomarker fontsize="28" x="752" y="1440" name="RnW" orien="R180" />
        <iomarker fontsize="28" x="752" y="1568" name="Byte_in(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1328" y="1840" name="Byte_out(7:0)" orien="R90" />
        <branch name="Busy">
            <wire x2="1392" y1="1328" y2="1328" x1="1312" />
            <wire x2="1392" y1="1328" y2="1840" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1392" y="1840" name="Busy" orien="R90" />
        <branch name="XLXN_27">
            <wire x2="2528" y1="1232" y2="1232" x1="1952" />
            <wire x2="2048" y1="896" y2="960" x1="2048" />
            <wire x2="2528" y1="896" y2="896" x1="2048" />
            <wire x2="2528" y1="896" y2="1232" x1="2528" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2016" y1="1120" y2="1120" x1="1488" />
            <wire x2="1488" y1="1120" y2="1232" x1="1488" />
            <wire x2="1568" y1="1232" y2="1232" x1="1488" />
            <wire x2="2048" y1="1088" y2="1088" x1="2016" />
            <wire x2="2016" y1="1088" y2="1120" x1="2016" />
        </branch>
    </sheet>
</drawing>