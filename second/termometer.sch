<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="Freq(3:0)" />
        <signal name="XLXN_47(7:0)" />
        <signal name="Data_out(15:0)" />
        <signal name="XLXN_49" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60(7:0)" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="DS18S20" />
        <signal name="CLK" />
        <signal name="XLXN_75" />
        <signal name="XLXN_77" />
        <signal name="Freq_up" />
        <signal name="Freq_down" />
        <port polarity="Output" name="Freq(3:0)" />
        <port polarity="Output" name="Data_out(15:0)" />
        <port polarity="BiDirectional" name="DS18S20" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="Freq_up" />
        <port polarity="Input" name="Freq_down" />
        <blockdef name="ByteModule">
            <timestamp>2016-5-10T6:20:16</timestamp>
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
            <timestamp>2016-5-10T6:20:16</timestamp>
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
            <timestamp>2016-5-10T8:36:32</timestamp>
            <line x2="0" y1="128" y2="128" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="368" y="84" height="24" />
            <line x2="432" y1="96" y2="96" x1="368" />
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
            <rect width="304" x="64" y="-384" height="576" />
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
        <block symbolname="ByteModule" name="XLXI_22">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_62" name="Bit_in" />
            <blockpin signalname="XLXN_59" name="Start" />
            <blockpin signalname="XLXN_49" name="RnW" />
            <blockpin signalname="XLXN_61" name="Busy_bit" />
            <blockpin signalname="XLXN_47(7:0)" name="Byte_In(7:0)" />
            <blockpin signalname="XLXN_55" name="Bit_out" />
            <blockpin signalname="XLXN_56" name="Busy" />
            <blockpin signalname="XLXN_57" name="RnW_bit" />
            <blockpin signalname="XLXN_44" name="Start_bit" />
            <blockpin signalname="XLXN_60(7:0)" name="Byte_Out(7:0)" />
        </block>
        <block symbolname="Controller" name="XLXI_23">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="Freq_up" name="Freq_up" />
            <blockpin signalname="Freq_down" name="Freq_down" />
            <blockpin signalname="XLXN_56" name="Busy_in" />
            <blockpin signalname="XLXN_61" name="c_Busy_in_bit" />
            <blockpin signalname="XLXN_62" name="Bit_in" />
            <blockpin signalname="XLXN_60(7:0)" name="Byte_in(7:0)" />
            <blockpin signalname="XLXN_59" name="Start" />
            <blockpin signalname="XLXN_49" name="RnW" />
            <blockpin signalname="XLXN_58" name="Reset" />
            <blockpin signalname="XLXN_45" name="Reset_start" />
            <blockpin signalname="Data_out(15:0)" name="Data_out(15:0)" />
            <blockpin signalname="XLXN_47(7:0)" name="Byte_out(7:0)" />
            <blockpin signalname="Freq(3:0)" name="Freq_state(3:0)" />
        </block>
        <block symbolname="iobuf" name="XLXI_24">
            <blockpin signalname="XLXN_67" name="I" />
            <blockpin signalname="DS18S20" name="IO" />
            <blockpin signalname="XLXN_66" name="O" />
            <blockpin signalname="XLXN_63" name="T" />
        </block>
        <block symbolname="or2" name="XLXI_25">
            <blockpin signalname="XLXN_45" name="I0" />
            <blockpin signalname="XLXN_44" name="I1" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="BusController" name="XLXI_21">
            <blockpin signalname="XLXN_66" name="Bus_in" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_55" name="Data_in" />
            <blockpin signalname="XLXN_58" name="Reset" />
            <blockpin signalname="XLXN_57" name="RnW" />
            <blockpin signalname="XLXN_43" name="Start" />
            <blockpin signalname="XLXN_63" name="Bus_out" />
            <blockpin signalname="XLXN_61" name="Busy" />
            <blockpin signalname="XLXN_62" name="Read_out" />
        </block>
        <block symbolname="gnd" name="XLXI_26">
            <blockpin signalname="XLXN_67" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1936" y="1200" name="XLXI_25" orien="R0" />
        <branch name="XLXN_44">
            <wire x2="1808" y1="848" y2="848" x1="1680" />
            <wire x2="1808" y1="848" y2="1072" x1="1808" />
            <wire x2="1936" y1="1072" y2="1072" x1="1808" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1936" y1="1136" y2="1136" x1="800" />
        </branch>
        <instance x="368" y="1072" name="XLXI_23" orien="R0">
        </instance>
        <branch name="Freq(3:0)">
            <wire x2="832" y1="1168" y2="1168" x1="800" />
        </branch>
        <iomarker fontsize="28" x="832" y="1168" name="Freq(3:0)" orien="R0" />
        <branch name="XLXN_47(7:0)">
            <wire x2="1232" y1="1008" y2="1008" x1="800" />
            <wire x2="1232" y1="928" y2="1008" x1="1232" />
            <wire x2="1264" y1="928" y2="928" x1="1232" />
        </branch>
        <branch name="Data_out(15:0)">
            <wire x2="832" y1="912" y2="912" x1="800" />
        </branch>
        <iomarker fontsize="28" x="832" y="912" name="Data_out(15:0)" orien="R0" />
        <branch name="XLXN_49">
            <wire x2="896" y1="720" y2="720" x1="800" />
            <wire x2="896" y1="720" y2="800" x1="896" />
            <wire x2="1264" y1="800" y2="800" x1="896" />
        </branch>
        <instance x="1264" y="960" name="XLXI_22" orien="R0">
        </instance>
        <branch name="XLXN_56">
            <wire x2="48" y1="912" y2="1376" x1="48" />
            <wire x2="1760" y1="1376" y2="1376" x1="48" />
            <wire x2="368" y1="912" y2="912" x1="48" />
            <wire x2="1760" y1="688" y2="688" x1="1680" />
            <wire x2="1760" y1="688" y2="1376" x1="1760" />
        </branch>
        <branch name="XLXN_57">
            <wire x2="1968" y1="768" y2="768" x1="1680" />
            <wire x2="1968" y1="768" y2="864" x1="1968" />
            <wire x2="2272" y1="864" y2="864" x1="1968" />
        </branch>
        <branch name="XLXN_58">
            <wire x2="816" y1="816" y2="816" x1="800" />
            <wire x2="816" y1="816" y2="1040" x1="816" />
            <wire x2="1744" y1="1040" y2="1040" x1="816" />
            <wire x2="1744" y1="800" y2="1040" x1="1744" />
            <wire x2="2272" y1="800" y2="800" x1="1744" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="32" y1="848" y2="1456" x1="32" />
            <wire x2="1136" y1="1456" y2="1456" x1="32" />
            <wire x2="368" y1="848" y2="848" x1="32" />
            <wire x2="1264" y1="736" y2="736" x1="1136" />
            <wire x2="1136" y1="736" y2="1456" x1="1136" />
        </branch>
        <branch name="XLXN_60(7:0)">
            <wire x2="80" y1="1040" y2="1280" x1="80" />
            <wire x2="1728" y1="1280" y2="1280" x1="80" />
            <wire x2="368" y1="1040" y2="1040" x1="80" />
            <wire x2="1728" y1="928" y2="928" x1="1680" />
            <wire x2="1728" y1="928" y2="1280" x1="1728" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="96" y1="1072" y2="1328" x1="96" />
            <wire x2="1152" y1="1328" y2="1328" x1="96" />
            <wire x2="2736" y1="1328" y2="1328" x1="1152" />
            <wire x2="368" y1="1072" y2="1072" x1="96" />
            <wire x2="1264" y1="864" y2="864" x1="1152" />
            <wire x2="1152" y1="864" y2="1328" x1="1152" />
            <wire x2="2736" y1="768" y2="768" x1="2656" />
            <wire x2="2736" y1="768" y2="1328" x1="2736" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="64" y1="976" y2="1296" x1="64" />
            <wire x2="1072" y1="1296" y2="1296" x1="64" />
            <wire x2="368" y1="976" y2="976" x1="64" />
            <wire x2="1072" y1="688" y2="1296" x1="1072" />
            <wire x2="1184" y1="688" y2="688" x1="1072" />
            <wire x2="1184" y1="688" y2="1232" x1="1184" />
            <wire x2="2720" y1="1232" y2="1232" x1="1184" />
            <wire x2="1264" y1="672" y2="672" x1="1184" />
            <wire x2="1184" y1="672" y2="688" x1="1184" />
            <wire x2="2720" y1="928" y2="928" x1="2656" />
            <wire x2="2720" y1="928" y2="1232" x1="2720" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="2976" y1="608" y2="608" x1="2656" />
        </branch>
        <instance x="2976" y="800" name="XLXI_24" orien="R0" />
        <instance x="2752" y="800" name="XLXI_26" orien="R0" />
        <branch name="XLXN_67">
            <wire x2="2816" y1="624" y2="672" x1="2816" />
            <wire x2="2896" y1="624" y2="624" x1="2816" />
            <wire x2="2896" y1="624" y2="672" x1="2896" />
            <wire x2="2976" y1="672" y2="672" x1="2896" />
        </branch>
        <branch name="DS18S20">
            <wire x2="3232" y1="672" y2="672" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3232" y="672" name="DS18S20" orien="R0" />
        <iomarker fontsize="28" x="256" y="720" name="CLK" orien="R180" />
        <branch name="XLXN_43">
            <wire x2="2224" y1="1104" y2="1104" x1="2192" />
            <wire x2="2224" y1="928" y2="1104" x1="2224" />
            <wire x2="2272" y1="928" y2="928" x1="2224" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="1968" y1="608" y2="608" x1="1680" />
            <wire x2="1968" y1="608" y2="736" x1="1968" />
            <wire x2="2272" y1="736" y2="736" x1="1968" />
        </branch>
        <instance x="2272" y="960" name="XLXI_21" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="288" y1="720" y2="720" x1="256" />
            <wire x2="368" y1="720" y2="720" x1="288" />
            <wire x2="1248" y1="480" y2="480" x1="288" />
            <wire x2="1264" y1="480" y2="480" x1="1248" />
            <wire x2="2080" y1="480" y2="480" x1="1264" />
            <wire x2="2080" y1="480" y2="672" x1="2080" />
            <wire x2="2272" y1="672" y2="672" x1="2080" />
            <wire x2="1248" y1="480" y2="608" x1="1248" />
            <wire x2="1264" y1="608" y2="608" x1="1248" />
            <wire x2="288" y1="480" y2="720" x1="288" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="2880" y1="496" y2="496" x1="2256" />
            <wire x2="2880" y1="496" y2="736" x1="2880" />
            <wire x2="2976" y1="736" y2="736" x1="2880" />
            <wire x2="2256" y1="496" y2="608" x1="2256" />
            <wire x2="2272" y1="608" y2="608" x1="2256" />
        </branch>
        <branch name="Freq_up">
            <wire x2="352" y1="1120" y2="1120" x1="304" />
            <wire x2="352" y1="1120" y2="1200" x1="352" />
            <wire x2="368" y1="1200" y2="1200" x1="352" />
        </branch>
        <branch name="Freq_down">
            <wire x2="368" y1="1232" y2="1232" x1="336" />
        </branch>
        <iomarker fontsize="28" x="336" y="1232" name="Freq_down" orien="R180" />
        <iomarker fontsize="28" x="304" y="1120" name="Freq_up" orien="R180" />
    </sheet>
</drawing>