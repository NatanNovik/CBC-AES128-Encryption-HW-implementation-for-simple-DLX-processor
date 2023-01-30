<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(31:0)" />
        <signal name="B(31:0)" />
        <signal name="test" />
        <signal name="add" />
        <signal name="S(31:0)" />
        <signal name="NEG" />
        <signal name="XLXN_6" />
        <signal name="XLXN_12" />
        <signal name="XLXN_21" />
        <signal name="XLXN_24(2:0)" />
        <signal name="ALUF(2:0)" />
        <signal name="XLXN_35(31:0)" />
        <signal name="XLXN_36(31:0)" />
        <signal name="XLXN_38(31:0)" />
        <signal name="XLXN_42(31:0)" />
        <signal name="XLXN_43(31:0)" />
        <signal name="XLXN_46(31:0)" />
        <signal name="XLXN_47(31:0)" />
        <signal name="ALU_OUT(31:0)" />
        <signal name="COMP_OUT" />
        <signal name="F(2:0)" />
        <signal name="F(0)" />
        <signal name="F(1)" />
        <signal name="F(2)" />
        <port polarity="Input" name="A(31:0)" />
        <port polarity="Input" name="B(31:0)" />
        <port polarity="Input" name="test" />
        <port polarity="Input" name="add" />
        <port polarity="Input" name="ALUF(2:0)" />
        <port polarity="Output" name="ALU_OUT(31:0)" />
        <blockdef name="comparator">
            <timestamp>2022-1-3T8:13:18</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="cond_adder">
            <timestamp>2022-1-3T8:35:40</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <blockdef name="MUX3BIT">
            <timestamp>2021-2-28T11:43:40</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="constant_011">
            <timestamp>2022-1-3T8:53:26</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="OR32">
            <timestamp>2010-8-16T14:59:0</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="XOR32">
            <timestamp>2015-7-12T12:3:52</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="MUX32bit">
            <timestamp>2015-7-12T12:4:38</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="AND32">
            <timestamp>2022-1-3T9:6:42</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="zeros_before">
            <timestamp>2022-1-3T9:20:2</timestamp>
            <rect width="304" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <block symbolname="cond_adder" name="XLXI_2">
            <blockpin signalname="XLXN_6" name="add" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="S(31:0)" name="out_value(31:0)" />
            <blockpin signalname="NEG" name="NEG" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="XLXN_12" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="test" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="F(0)" name="I" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="MUX3BIT" name="XLXI_10">
            <blockpin signalname="add" name="sel" />
            <blockpin signalname="ALUF(2:0)" name="A0(2:0)" />
            <blockpin signalname="XLXN_24(2:0)" name="A1(2:0)" />
            <blockpin signalname="F(2:0)" name="O(2:0)" />
        </block>
        <block symbolname="constant_011" name="XLXI_11">
            <blockpin signalname="XLXN_24(2:0)" name="out_011(2:0)" />
        </block>
        <block symbolname="OR32" name="XLXI_12">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_36(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="XOR32" name="XLXI_13">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_35(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_16">
            <blockpin signalname="F(0)" name="sel" />
            <blockpin signalname="XLXN_35(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_36(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_38(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_17">
            <blockpin signalname="F(1)" name="sel" />
            <blockpin signalname="XLXN_38(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_42(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_43(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="AND32" name="XLXI_18">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_42(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_19">
            <blockpin signalname="F(2)" name="sel" />
            <blockpin signalname="S(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_43(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_46(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_20">
            <blockpin signalname="test" name="sel" />
            <blockpin signalname="XLXN_46(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_47(31:0)" name="B(31:0)" />
            <blockpin signalname="ALU_OUT(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="zeros_before" name="XLXI_21">
            <blockpin signalname="COMP_OUT" name="LBS_IN" />
            <blockpin signalname="XLXN_47(31:0)" name="zeros_and_lbs(31:0)" />
        </block>
        <block symbolname="comparator" name="XLXI_1">
            <blockpin signalname="S(31:0)" name="S(31:0)" />
            <blockpin signalname="NEG" name="NEG" />
            <blockpin signalname="F(2:0)" name="F(2:0)" />
            <blockpin signalname="COMP_OUT" name="comp_out" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="A(31:0)">
            <wire x2="640" y1="272" y2="272" x1="304" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="320" y1="400" y2="400" x1="304" />
            <wire x2="640" y1="400" y2="400" x1="320" />
        </branch>
        <branch name="ALUF(2:0)">
            <wire x2="320" y1="544" y2="544" x1="304" />
            <wire x2="640" y1="544" y2="544" x1="320" />
        </branch>
        <branch name="test">
            <wire x2="640" y1="704" y2="704" x1="320" />
        </branch>
        <branch name="add">
            <wire x2="640" y1="880" y2="880" x1="272" />
        </branch>
        <iomarker fontsize="28" x="304" y="272" name="A(31:0)" orien="R180" />
        <iomarker fontsize="28" x="304" y="400" name="B(31:0)" orien="R180" />
        <iomarker fontsize="28" x="304" y="544" name="ALUF(2:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="704" name="test" orien="R180" />
        <iomarker fontsize="28" x="272" y="880" name="add" orien="R180" />
        <instance x="2032" y="592" name="XLXI_2" orien="R0">
        </instance>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="304" type="branch" />
            <wire x2="2032" y1="304" y2="304" x1="1824" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="368" type="branch" />
            <wire x2="2032" y1="368" y2="368" x1="1824" />
        </branch>
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="304" type="branch" />
            <wire x2="2608" y1="304" y2="304" x1="2416" />
        </branch>
        <branch name="NEG">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="560" type="branch" />
            <wire x2="2608" y1="560" y2="560" x1="2416" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="2032" y1="432" y2="432" x1="1904" />
        </branch>
        <instance x="1680" y="464" name="XLXI_4" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="1680" y1="432" y2="432" x1="1648" />
        </branch>
        <instance x="1392" y="528" name="XLXI_5" orien="R0" />
        <branch name="test">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="400" type="branch" />
            <wire x2="1392" y1="400" y2="400" x1="1264" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1392" y1="464" y2="464" x1="1360" />
        </branch>
        <instance x="1136" y="496" name="XLXI_9" orien="R0" />
        <instance x="1136" y="2320" name="XLXI_10" orien="R0">
        </instance>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="2160" type="branch" />
            <wire x2="1136" y1="2160" y2="2160" x1="1008" />
        </branch>
        <branch name="ALUF(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="2224" type="branch" />
            <wire x2="1136" y1="2224" y2="2224" x1="1008" />
        </branch>
        <branch name="XLXN_24(2:0)">
            <wire x2="1136" y1="2288" y2="2288" x1="816" />
        </branch>
        <instance x="432" y="2320" name="XLXI_11" orien="R0">
        </instance>
        <instance x="400" y="1648" name="XLXI_12" orien="R0">
        </instance>
        <instance x="400" y="1312" name="XLXI_13" orien="R0">
        </instance>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="1216" type="branch" />
            <wire x2="400" y1="1216" y2="1216" x1="288" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="1280" type="branch" />
            <wire x2="400" y1="1280" y2="1280" x1="288" />
        </branch>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="1552" type="branch" />
            <wire x2="400" y1="1552" y2="1552" x1="288" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="1616" type="branch" />
            <wire x2="400" y1="1616" y2="1616" x1="288" />
        </branch>
        <instance x="976" y="1440" name="XLXI_16" orien="R0">
        </instance>
        <branch name="XLXN_35(31:0)">
            <wire x2="880" y1="1216" y2="1216" x1="784" />
            <wire x2="880" y1="1216" y2="1344" x1="880" />
            <wire x2="976" y1="1344" y2="1344" x1="880" />
        </branch>
        <branch name="XLXN_36(31:0)">
            <wire x2="880" y1="1552" y2="1552" x1="784" />
            <wire x2="880" y1="1408" y2="1552" x1="880" />
            <wire x2="976" y1="1408" y2="1408" x1="880" />
        </branch>
        <instance x="1616" y="1568" name="XLXI_17" orien="R0">
        </instance>
        <branch name="XLXN_38(31:0)">
            <wire x2="1488" y1="1280" y2="1280" x1="1360" />
            <wire x2="1488" y1="1280" y2="1472" x1="1488" />
            <wire x2="1616" y1="1472" y2="1472" x1="1488" />
        </branch>
        <instance x="976" y="1760" name="XLXI_18" orien="R0">
        </instance>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1664" type="branch" />
            <wire x2="976" y1="1664" y2="1664" x1="928" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1728" type="branch" />
            <wire x2="976" y1="1728" y2="1728" x1="928" />
        </branch>
        <branch name="XLXN_42(31:0)">
            <wire x2="1488" y1="1664" y2="1664" x1="1360" />
            <wire x2="1488" y1="1536" y2="1664" x1="1488" />
            <wire x2="1616" y1="1536" y2="1536" x1="1488" />
        </branch>
        <branch name="XLXN_43(31:0)">
            <wire x2="2208" y1="1408" y2="1408" x1="2000" />
        </branch>
        <instance x="2208" y="1440" name="XLXI_19" orien="R0">
        </instance>
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="1344" type="branch" />
            <wire x2="2208" y1="1344" y2="1344" x1="2128" />
        </branch>
        <branch name="XLXN_46(31:0)">
            <wire x2="2736" y1="1280" y2="1280" x1="2592" />
        </branch>
        <branch name="XLXN_47(31:0)">
            <wire x2="2624" y1="1600" y2="1600" x1="2608" />
            <wire x2="2736" y1="1344" y2="1344" x1="2624" />
            <wire x2="2624" y1="1344" y2="1600" x1="2624" />
        </branch>
        <branch name="ALU_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="1216" type="branch" />
            <wire x2="3248" y1="1216" y2="1216" x1="3120" />
        </branch>
        <branch name="test">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="1216" type="branch" />
            <wire x2="2736" y1="1216" y2="1216" x1="2688" />
        </branch>
        <instance x="2176" y="1632" name="XLXI_21" orien="R0">
        </instance>
        <branch name="ALU_OUT(31:0)">
            <wire x2="3216" y1="400" y2="400" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="3216" y="400" name="ALU_OUT(31:0)" orien="R0" />
        <instance x="2736" y="1376" name="XLXI_20" orien="R0">
        </instance>
        <instance x="1776" y="2000" name="XLXI_1" orien="R0">
        </instance>
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="1840" type="branch" />
            <wire x2="1776" y1="1840" y2="1840" x1="1616" />
        </branch>
        <branch name="NEG">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="1904" type="branch" />
            <wire x2="1776" y1="1904" y2="1904" x1="1616" />
        </branch>
        <branch name="COMP_OUT">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="1744" type="branch" />
            <wire x2="2112" y1="1600" y2="1744" x1="2112" />
            <wire x2="2224" y1="1744" y2="1744" x1="2112" />
            <wire x2="2224" y1="1744" y2="1840" x1="2224" />
            <wire x2="2176" y1="1600" y2="1600" x1="2112" />
            <wire x2="2224" y1="1840" y2="1840" x1="2160" />
        </branch>
        <branch name="F(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="2160" type="branch" />
            <wire x2="1600" y1="2160" y2="2160" x1="1520" />
            <wire x2="1648" y1="2160" y2="2160" x1="1600" />
            <wire x2="1648" y1="1968" y2="2160" x1="1648" />
            <wire x2="1776" y1="1968" y2="1968" x1="1648" />
        </branch>
        <branch name="F(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="1280" type="branch" />
            <wire x2="976" y1="1280" y2="1280" x1="944" />
        </branch>
        <branch name="F(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="1408" type="branch" />
            <wire x2="1616" y1="1408" y2="1408" x1="1568" />
        </branch>
        <branch name="F(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1280" type="branch" />
            <wire x2="2208" y1="1280" y2="1280" x1="2176" />
        </branch>
        <branch name="F(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="464" type="branch" />
            <wire x2="1136" y1="464" y2="464" x1="1072" />
        </branch>
    </sheet>
</drawing>