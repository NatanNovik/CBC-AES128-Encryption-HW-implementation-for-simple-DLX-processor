<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="add" />
        <signal name="XLXN_5" />
        <signal name="sol_1(15:0)" />
        <signal name="COUT_1" />
        <signal name="COUT_2" />
        <signal name="sol_2(15:0)" />
        <signal name="carry" />
        <signal name="out_value(15:0)" />
        <signal name="out_value(31:0)" />
        <signal name="NEG" />
        <signal name="XLXN_26" />
        <signal name="out_value(31:16)" />
        <signal name="XLXN_30" />
        <signal name="A(31)" />
        <signal name="B(31)" />
        <signal name="sub" />
        <signal name="A(31:0)" />
        <signal name="B(31:0)" />
        <signal name="A(31:16)" />
        <signal name="B(31:16)" />
        <signal name="A(15:0)" />
        <signal name="B(15:0)" />
        <port polarity="Input" name="add" />
        <port polarity="Output" name="out_value(31:0)" />
        <port polarity="Output" name="NEG" />
        <port polarity="Input" name="A(31:0)" />
        <port polarity="Input" name="B(31:0)" />
        <blockdef name="adsu16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <rect width="64" x="0" y="-204" height="24" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="48" y1="-64" y2="-64" x1="128" />
            <line x2="128" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <blockdef name="MUX16bit">
            <timestamp>2015-7-12T12:5:16</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="xor4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="60" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="208" y1="-160" y2="-160" x1="256" />
            <arc ex="64" ey="-208" sx="64" sy="-112" r="56" cx="32" cy="-160" />
            <line x2="64" y1="-208" y2="-208" x1="128" />
            <line x2="64" y1="-112" y2="-112" x1="128" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <arc ex="128" ey="-208" sx="208" sy="-160" r="88" cx="132" cy="-120" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="208" ey="-160" sx="128" sy="-112" r="88" cx="132" cy="-200" />
        </blockdef>
        <block symbolname="adsu16" name="XLXI_1">
            <blockpin signalname="A(31:16)" name="A(15:0)" />
            <blockpin signalname="add" name="ADD" />
            <blockpin signalname="B(31:16)" name="B(15:0)" />
            <blockpin signalname="XLXN_26" name="CI" />
            <blockpin signalname="COUT_1" name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="sol_1(15:0)" name="S(15:0)" />
        </block>
        <block symbolname="adsu16" name="XLXI_2">
            <blockpin signalname="A(31:16)" name="A(15:0)" />
            <blockpin signalname="add" name="ADD" />
            <blockpin signalname="B(31:16)" name="B(15:0)" />
            <blockpin signalname="XLXN_5" name="CI" />
            <blockpin signalname="COUT_2" name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="sol_2(15:0)" name="S(15:0)" />
        </block>
        <block symbolname="adsu16" name="XLXI_3">
            <blockpin signalname="A(15:0)" name="A(15:0)" />
            <blockpin signalname="add" name="ADD" />
            <blockpin signalname="B(15:0)" name="B(15:0)" />
            <blockpin signalname="sub" name="CI" />
            <blockpin signalname="carry" name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="out_value(15:0)" name="S(15:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_7">
            <blockpin signalname="XLXN_26" name="G" />
        </block>
        <block symbolname="MUX16bit" name="XLXI_8">
            <blockpin signalname="carry" name="sel" />
            <blockpin signalname="sol_1(15:0)" name="A(15:0)" />
            <blockpin signalname="sol_2(15:0)" name="B(15:0)" />
            <blockpin signalname="out_value(31:16)" name="O(15:0)" />
        </block>
        <block symbolname="m2_1" name="XLXI_10">
            <blockpin signalname="COUT_1" name="D0" />
            <blockpin signalname="COUT_2" name="D1" />
            <blockpin signalname="carry" name="S0" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="xor4" name="XLXI_11">
            <blockpin signalname="sub" name="I0" />
            <blockpin signalname="B(31)" name="I1" />
            <blockpin signalname="A(31)" name="I2" />
            <blockpin signalname="XLXN_30" name="I3" />
            <blockpin signalname="NEG" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="add" name="I" />
            <blockpin signalname="sub" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1360" y="880" name="XLXI_1" orien="R0" />
        <instance x="1360" y="1472" name="XLXI_2" orien="R0" />
        <instance x="1376" y="2176" name="XLXI_3" orien="R0" />
        <branch name="A(31:0)">
            <wire x2="704" y1="432" y2="432" x1="416" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="704" y1="592" y2="592" x1="416" />
        </branch>
        <branch name="add">
            <wire x2="704" y1="752" y2="752" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="432" name="A(31:0)" orien="R180" />
        <iomarker fontsize="28" x="416" y="592" name="B(31:0)" orien="R180" />
        <iomarker fontsize="28" x="416" y="752" name="add" orien="R180" />
        <branch name="XLXN_5">
            <wire x2="1040" y1="976" y2="1024" x1="1040" />
            <wire x2="1136" y1="1024" y2="1024" x1="1040" />
            <wire x2="1360" y1="1024" y2="1024" x1="1136" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="816" type="branch" />
            <wire x2="1360" y1="816" y2="816" x1="1216" />
        </branch>
        <branch name="sol_1(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="624" type="branch" />
            <wire x2="1936" y1="624" y2="624" x1="1808" />
        </branch>
        <branch name="COUT_1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="816" type="branch" />
            <wire x2="1920" y1="816" y2="816" x1="1808" />
        </branch>
        <branch name="COUT_2">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1408" type="branch" />
            <wire x2="1904" y1="1408" y2="1408" x1="1808" />
        </branch>
        <branch name="sol_2(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1216" type="branch" />
            <wire x2="1920" y1="1216" y2="1216" x1="1808" />
        </branch>
        <branch name="sub">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1728" type="branch" />
            <wire x2="1376" y1="1728" y2="1728" x1="1200" />
        </branch>
        <branch name="carry">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="2112" type="branch" />
            <wire x2="1936" y1="2112" y2="2112" x1="1824" />
        </branch>
        <branch name="out_value(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1920" type="branch" />
            <wire x2="2000" y1="1920" y2="1920" x1="1824" />
        </branch>
        <branch name="out_value(31:0)">
            <wire x2="2896" y1="464" y2="464" x1="2640" />
        </branch>
        <branch name="NEG">
            <wire x2="2896" y1="608" y2="608" x1="2640" />
        </branch>
        <iomarker fontsize="28" x="2896" y="464" name="out_value(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2896" y="608" name="NEG" orien="R0" />
        <instance x="976" y="976" name="XLXI_6" orien="R0" />
        <instance x="976" y="576" name="XLXI_7" orien="R0" />
        <branch name="XLXN_26">
            <wire x2="1360" y1="432" y2="432" x1="1040" />
            <wire x2="1040" y1="432" y2="448" x1="1040" />
        </branch>
        <instance x="2368" y="1168" name="XLXI_8" orien="R0">
        </instance>
        <branch name="sol_1(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1072" type="branch" />
            <wire x2="2368" y1="1072" y2="1072" x1="2208" />
        </branch>
        <branch name="sol_2(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1136" type="branch" />
            <wire x2="2368" y1="1136" y2="1136" x1="2208" />
        </branch>
        <branch name="out_value(31:16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="1008" type="branch" />
            <wire x2="2976" y1="1008" y2="1008" x1="2752" />
        </branch>
        <instance x="1680" y="2496" name="XLXI_10" orien="R0" />
        <instance x="2368" y="2640" name="XLXI_11" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="2368" y1="2368" y2="2368" x1="2000" />
            <wire x2="2368" y1="2368" y2="2384" x1="2368" />
        </branch>
        <branch name="COUT_1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="2336" type="branch" />
            <wire x2="1680" y1="2336" y2="2336" x1="1552" />
        </branch>
        <branch name="COUT_2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="2400" type="branch" />
            <wire x2="1680" y1="2400" y2="2400" x1="1552" />
        </branch>
        <branch name="carry">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="2464" type="branch" />
            <wire x2="1680" y1="2464" y2="2464" x1="1552" />
        </branch>
        <branch name="A(31)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="2448" type="branch" />
            <wire x2="2368" y1="2448" y2="2448" x1="2192" />
        </branch>
        <branch name="B(31)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="2512" type="branch" />
            <wire x2="2368" y1="2512" y2="2512" x1="2192" />
        </branch>
        <branch name="NEG">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="2480" type="branch" />
            <wire x2="2816" y1="2480" y2="2480" x1="2624" />
        </branch>
        <instance x="1664" y="2608" name="XLXI_9" orien="R0" />
        <branch name="sub">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="2576" type="branch" />
            <wire x2="2000" y1="2576" y2="2576" x1="1888" />
            <wire x2="2096" y1="2576" y2="2576" x1="2000" />
            <wire x2="2192" y1="2576" y2="2576" x1="2096" />
            <wire x2="2368" y1="2576" y2="2576" x1="2192" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="2576" type="branch" />
            <wire x2="1664" y1="2576" y2="2576" x1="1440" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="2112" type="branch" />
            <wire x2="1376" y1="2112" y2="2112" x1="1136" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1408" type="branch" />
            <wire x2="1360" y1="1408" y2="1408" x1="1120" />
        </branch>
        <branch name="A(31:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="560" type="branch" />
            <wire x2="1360" y1="560" y2="560" x1="1216" />
        </branch>
        <branch name="B(31:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="688" type="branch" />
            <wire x2="1360" y1="688" y2="688" x1="1216" />
        </branch>
        <branch name="A(31:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="1152" type="branch" />
            <wire x2="1360" y1="1152" y2="1152" x1="1216" />
        </branch>
        <branch name="B(31:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1280" type="branch" />
            <wire x2="1360" y1="1280" y2="1280" x1="1200" />
        </branch>
        <branch name="A(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="1856" type="branch" />
            <wire x2="1376" y1="1856" y2="1856" x1="1216" />
        </branch>
        <branch name="B(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="1984" type="branch" />
            <wire x2="1376" y1="1984" y2="1984" x1="1216" />
        </branch>
        <branch name="carry">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1008" type="branch" />
            <wire x2="2368" y1="1008" y2="1008" x1="2256" />
        </branch>
    </sheet>
</drawing>