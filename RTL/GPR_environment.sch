<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="Aadr(4:0)" />
        <signal name="Badr(4:0)" />
        <signal name="Cadr(4:0)" />
        <signal name="Dadr(4:0)" />
        <signal name="C(31:0)" />
        <signal name="GPR_we" />
        <signal name="XLXN_17" />
        <signal name="WE" />
        <signal name="XLXN_28(4:0)" />
        <signal name="XLXN_33(4:0)" />
        <signal name="XLXN_37(4:0)" />
        <signal name="A(31:0)" />
        <signal name="B(31:0)" />
        <signal name="D(31:0)" />
        <signal name="AEQZ1" />
        <signal name="Cadr(0)" />
        <signal name="Cadr(1)" />
        <signal name="Cadr(2)" />
        <signal name="Cadr(3)" />
        <signal name="Cadr(4)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="Aadr(4:0)" />
        <port polarity="Input" name="Badr(4:0)" />
        <port polarity="Input" name="Cadr(4:0)" />
        <port polarity="Input" name="Dadr(4:0)" />
        <port polarity="Input" name="C(31:0)" />
        <port polarity="Input" name="GPR_we" />
        <port polarity="Output" name="A(31:0)" />
        <port polarity="Output" name="B(31:0)" />
        <port polarity="Output" name="D(31:0)" />
        <port polarity="Output" name="AEQZ1" />
        <blockdef name="MUX5BIT">
            <timestamp>2015-7-12T8:16:28</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="RAM32X32S">
            <timestamp>2015-7-12T12:4:4</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="or5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="72" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <arc ex="192" ey="-192" sx="112" sy="-144" r="88" cx="116" cy="-232" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <line x2="48" y1="-64" y2="-144" x1="48" />
            <line x2="48" y1="-320" y2="-240" x1="48" />
            <arc ex="112" ey="-240" sx="192" sy="-192" r="88" cx="116" cy="-152" />
            <arc ex="48" ey="-240" sx="48" sy="-144" r="56" cx="16" cy="-192" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="AEQZ">
            <timestamp>2015-7-12T12:3:8</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="MUX5BIT" name="XLXI_1">
            <blockpin signalname="GPR_we" name="sel" />
            <blockpin signalname="Aadr(4:0)" name="A0(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="A1(4:0)" />
            <blockpin signalname="XLXN_28(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="MUX5BIT" name="XLXI_2">
            <blockpin signalname="GPR_we" name="sel" />
            <blockpin signalname="Badr(4:0)" name="A0(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="A1(4:0)" />
            <blockpin signalname="XLXN_33(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="MUX5BIT" name="XLXI_3">
            <blockpin signalname="GPR_we" name="sel" />
            <blockpin signalname="Dadr(4:0)" name="A0(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="A1(4:0)" />
            <blockpin signalname="XLXN_37(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="RAM32X32S" name="XLXI_4">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="WE" name="WE" />
            <blockpin signalname="C(31:0)" name="D(31:0)" />
            <blockpin signalname="XLXN_28(4:0)" name="ADD(4:0)" />
            <blockpin signalname="A(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="RAM32X32S" name="XLXI_5">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="WE" name="WE" />
            <blockpin signalname="C(31:0)" name="D(31:0)" />
            <blockpin signalname="XLXN_33(4:0)" name="ADD(4:0)" />
            <blockpin signalname="B(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="RAM32X32S" name="XLXI_6">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="WE" name="WE" />
            <blockpin signalname="C(31:0)" name="D(31:0)" />
            <blockpin signalname="XLXN_37(4:0)" name="ADD(4:0)" />
            <blockpin signalname="D(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="or5" name="XLXI_8">
            <blockpin signalname="Cadr(4)" name="I0" />
            <blockpin signalname="Cadr(3)" name="I1" />
            <blockpin signalname="Cadr(2)" name="I2" />
            <blockpin signalname="Cadr(1)" name="I3" />
            <blockpin signalname="Cadr(0)" name="I4" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="GPR_we" name="I1" />
            <blockpin signalname="WE" name="O" />
        </block>
        <block symbolname="AEQZ" name="XLXI_10">
            <blockpin signalname="A(31:0)" name="Din(31:0)" />
            <blockpin signalname="AEQZ1" name="A_eqz" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="304" y1="320" y2="320" x1="192" />
        </branch>
        <branch name="Aadr(4:0)">
            <wire x2="304" y1="400" y2="400" x1="192" />
        </branch>
        <branch name="Badr(4:0)">
            <wire x2="320" y1="464" y2="464" x1="192" />
        </branch>
        <branch name="Cadr(4:0)">
            <wire x2="304" y1="544" y2="544" x1="192" />
        </branch>
        <branch name="Dadr(4:0)">
            <wire x2="304" y1="624" y2="624" x1="192" />
        </branch>
        <branch name="C(31:0)">
            <wire x2="320" y1="688" y2="688" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="320" name="clk" orien="R180" />
        <iomarker fontsize="28" x="192" y="400" name="Aadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="192" y="464" name="Badr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="192" y="544" name="Cadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="192" y="624" name="Dadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="192" y="688" name="C(31:0)" orien="R180" />
        <branch name="GPR_we">
            <wire x2="320" y1="768" y2="768" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="768" name="GPR_we" orien="R180" />
        <instance x="1088" y="1056" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1088" y="1520" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1088" y="1952" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1872" y="896" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1856" y="1376" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1840" y="1824" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1168" y="576" name="XLXI_8" orien="R0" />
        <instance x="1536" y="448" name="XLXI_9" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="1536" y1="384" y2="384" x1="1424" />
        </branch>
        <branch name="Cadr(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="256" type="branch" />
            <wire x2="1168" y1="256" y2="256" x1="1104" />
        </branch>
        <branch name="Cadr(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="320" type="branch" />
            <wire x2="1168" y1="320" y2="320" x1="1104" />
        </branch>
        <branch name="Cadr(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="384" type="branch" />
            <wire x2="1168" y1="384" y2="384" x1="1104" />
        </branch>
        <branch name="Cadr(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="448" type="branch" />
            <wire x2="1168" y1="448" y2="448" x1="1088" />
        </branch>
        <branch name="Cadr(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="512" type="branch" />
            <wire x2="1168" y1="512" y2="512" x1="1088" />
        </branch>
        <branch name="WE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="352" type="branch" />
            <wire x2="1856" y1="352" y2="352" x1="1792" />
        </branch>
        <branch name="GPR_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="320" type="branch" />
            <wire x2="1536" y1="320" y2="320" x1="1488" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="672" type="branch" />
            <wire x2="1872" y1="672" y2="672" x1="1808" />
        </branch>
        <branch name="WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="736" type="branch" />
            <wire x2="1872" y1="736" y2="736" x1="1808" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="800" type="branch" />
            <wire x2="1872" y1="800" y2="800" x1="1808" />
        </branch>
        <branch name="XLXN_28(4:0)">
            <wire x2="1536" y1="896" y2="896" x1="1472" />
            <wire x2="1792" y1="896" y2="896" x1="1536" />
            <wire x2="1872" y1="864" y2="864" x1="1792" />
            <wire x2="1792" y1="864" y2="896" x1="1792" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1152" type="branch" />
            <wire x2="1856" y1="1152" y2="1152" x1="1792" />
        </branch>
        <branch name="WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1216" type="branch" />
            <wire x2="1856" y1="1216" y2="1216" x1="1792" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1280" type="branch" />
            <wire x2="1856" y1="1280" y2="1280" x1="1792" />
        </branch>
        <branch name="XLXN_33(4:0)">
            <wire x2="1552" y1="1360" y2="1360" x1="1472" />
            <wire x2="1776" y1="1360" y2="1360" x1="1552" />
            <wire x2="1856" y1="1344" y2="1344" x1="1776" />
            <wire x2="1776" y1="1344" y2="1360" x1="1776" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1600" type="branch" />
            <wire x2="1840" y1="1600" y2="1600" x1="1776" />
        </branch>
        <branch name="WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1664" type="branch" />
            <wire x2="1840" y1="1664" y2="1664" x1="1776" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1728" type="branch" />
            <wire x2="1840" y1="1728" y2="1728" x1="1776" />
        </branch>
        <branch name="XLXN_37(4:0)">
            <wire x2="1488" y1="1792" y2="1792" x1="1472" />
            <wire x2="1568" y1="1792" y2="1792" x1="1488" />
            <wire x2="1568" y1="1792" y2="1808" x1="1568" />
            <wire x2="1760" y1="1808" y2="1808" x1="1568" />
            <wire x2="1840" y1="1792" y2="1792" x1="1760" />
            <wire x2="1760" y1="1792" y2="1808" x1="1760" />
        </branch>
        <branch name="GPR_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="896" type="branch" />
            <wire x2="1088" y1="896" y2="896" x1="1024" />
        </branch>
        <branch name="Aadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="960" type="branch" />
            <wire x2="1088" y1="960" y2="960" x1="1024" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1024" type="branch" />
            <wire x2="1088" y1="1024" y2="1024" x1="1024" />
        </branch>
        <branch name="GPR_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1360" type="branch" />
            <wire x2="1088" y1="1360" y2="1360" x1="1024" />
        </branch>
        <branch name="Badr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1424" type="branch" />
            <wire x2="1088" y1="1424" y2="1424" x1="1024" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1488" type="branch" />
            <wire x2="1088" y1="1488" y2="1488" x1="1024" />
        </branch>
        <branch name="GPR_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1792" type="branch" />
            <wire x2="1088" y1="1792" y2="1792" x1="1024" />
        </branch>
        <branch name="Dadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1856" type="branch" />
            <wire x2="1088" y1="1856" y2="1856" x1="1024" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1920" type="branch" />
            <wire x2="1088" y1="1920" y2="1920" x1="1024" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1600" type="branch" />
            <wire x2="2288" y1="1600" y2="1600" x1="2224" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="1152" type="branch" />
            <wire x2="2304" y1="1152" y2="1152" x1="2240" />
        </branch>
        <branch name="A(31:0)">
            <wire x2="2928" y1="416" y2="416" x1="2864" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="2928" y1="480" y2="480" x1="2864" />
        </branch>
        <branch name="D(31:0)">
            <wire x2="2928" y1="544" y2="544" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="2928" y="416" name="A(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2928" y="480" name="B(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2928" y="544" name="D(31:0)" orien="R0" />
        <branch name="AEQZ1">
            <wire x2="2928" y1="656" y2="656" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="2928" y="656" name="AEQZ1" orien="R0" />
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="672" type="branch" />
            <wire x2="2336" y1="672" y2="672" x1="2256" />
        </branch>
        <instance x="1968" y="2304" name="XLXI_10" orien="R0">
        </instance>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="2272" type="branch" />
            <wire x2="1968" y1="2272" y2="2272" x1="1872" />
        </branch>
        <branch name="AEQZ1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="2272" type="branch" />
            <wire x2="2512" y1="2272" y2="2272" x1="2352" />
        </branch>
    </sheet>
</drawing>