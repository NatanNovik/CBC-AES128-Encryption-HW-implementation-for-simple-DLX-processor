<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S(31:0)" />
        <signal name="NEG" />
        <signal name="F(2:0)" />
        <signal name="ZERO" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="F(1)" />
        <signal name="F(2)" />
        <signal name="F(0)" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="comp_out" />
        <port polarity="Input" name="S(31:0)" />
        <port polarity="Input" name="NEG" />
        <port polarity="Input" name="F(2:0)" />
        <port polarity="Output" name="comp_out" />
        <blockdef name="AEQZ">
            <timestamp>2015-7-12T12:3:8</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="AEQZ" name="XLXI_1">
            <blockpin signalname="S(31:0)" name="Din(31:0)" />
            <blockpin signalname="ZERO" name="A_eqz" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="F(1)" name="I0" />
            <blockpin signalname="ZERO" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="NEG" name="I0" />
            <blockpin signalname="F(2)" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="F(0)" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="comp_out" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="ZERO" name="I" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="NEG" name="I" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="S(31:0)">
            <wire x2="704" y1="320" y2="320" x1="368" />
        </branch>
        <branch name="NEG">
            <wire x2="688" y1="464" y2="464" x1="368" />
        </branch>
        <branch name="F(2:0)">
            <wire x2="672" y1="624" y2="624" x1="368" />
        </branch>
        <instance x="1088" y="1024" name="XLXI_1" orien="R0">
        </instance>
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="992" type="branch" />
            <wire x2="1088" y1="992" y2="992" x1="864" />
        </branch>
        <iomarker fontsize="28" x="368" y="320" name="S(31:0)" orien="R180" />
        <iomarker fontsize="28" x="368" y="464" name="NEG" orien="R180" />
        <iomarker fontsize="28" x="368" y="624" name="F(2:0)" orien="R180" />
        <branch name="ZERO">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="992" type="branch" />
            <wire x2="1536" y1="992" y2="992" x1="1472" />
            <wire x2="1696" y1="992" y2="992" x1="1536" />
            <wire x2="1968" y1="992" y2="992" x1="1696" />
        </branch>
        <instance x="1968" y="1120" name="XLXI_2" orien="R0" />
        <instance x="1968" y="1376" name="XLXI_3" orien="R0" />
        <instance x="1968" y="1664" name="XLXI_4" orien="R0" />
        <instance x="2432" y="1232" name="XLXI_5" orien="R0" />
        <instance x="2880" y="1424" name="XLXI_6" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="2784" y1="1136" y2="1136" x1="2688" />
            <wire x2="2784" y1="1136" y2="1296" x1="2784" />
            <wire x2="2880" y1="1296" y2="1296" x1="2784" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="2864" y1="1600" y2="1600" x1="2672" />
            <wire x2="2880" y1="1360" y2="1360" x1="2864" />
            <wire x2="2864" y1="1360" y2="1600" x1="2864" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2320" y1="1024" y2="1024" x1="2224" />
            <wire x2="2320" y1="1024" y2="1104" x1="2320" />
            <wire x2="2432" y1="1104" y2="1104" x1="2320" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="2320" y1="1280" y2="1280" x1="2224" />
            <wire x2="2320" y1="1168" y2="1280" x1="2320" />
            <wire x2="2432" y1="1168" y2="1168" x1="2320" />
        </branch>
        <instance x="2416" y="1696" name="XLXI_7" orien="R0" />
        <branch name="XLXN_10">
            <wire x2="2416" y1="1568" y2="1568" x1="2224" />
        </branch>
        <branch name="F(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1056" type="branch" />
            <wire x2="1968" y1="1056" y2="1056" x1="1824" />
        </branch>
        <branch name="F(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1248" type="branch" />
            <wire x2="1968" y1="1248" y2="1248" x1="1840" />
        </branch>
        <branch name="NEG">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1312" type="branch" />
            <wire x2="1968" y1="1312" y2="1312" x1="1840" />
        </branch>
        <branch name="F(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1536" type="branch" />
            <wire x2="1968" y1="1536" y2="1536" x1="1824" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1968" y1="1600" y2="1600" x1="1840" />
        </branch>
        <instance x="1952" y="1840" name="XLXI_8" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="2288" y1="1808" y2="1808" x1="2176" />
            <wire x2="2288" y1="1632" y2="1808" x1="2288" />
            <wire x2="2416" y1="1632" y2="1632" x1="2288" />
        </branch>
        <branch name="ZERO">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1808" type="branch" />
            <wire x2="1952" y1="1808" y2="1808" x1="1808" />
        </branch>
        <instance x="1616" y="1632" name="XLXI_9" orien="R0" />
        <branch name="NEG">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1600" type="branch" />
            <wire x2="1616" y1="1600" y2="1600" x1="1472" />
        </branch>
        <branch name="comp_out">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3296" y="1328" type="branch" />
            <wire x2="3296" y1="1328" y2="1328" x1="3136" />
        </branch>
        <branch name="comp_out">
            <wire x2="3200" y1="336" y2="336" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="3200" y="336" name="comp_out" orien="R0" />
    </sheet>
</drawing>