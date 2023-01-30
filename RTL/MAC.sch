<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="mr" />
        <signal name="mw" />
        <signal name="ack_n" />
        <signal name="reset" />
        <signal name="busy" />
        <signal name="as_n" />
        <signal name="wr_n" />
        <signal name="stop_n" />
        <signal name="req" />
        <signal name="state(1:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="mr" />
        <port polarity="Input" name="mw" />
        <port polarity="Input" name="ack_n" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="busy" />
        <port polarity="Output" name="as_n" />
        <port polarity="Output" name="wr_n" />
        <port polarity="Output" name="stop_n" />
        <port polarity="Output" name="state(1:0)" />
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
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
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
        <blockdef name="MAC_control">
            <timestamp>2021-11-29T9:29:8</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="req" name="I0" />
            <blockpin signalname="ack_n" name="I1" />
            <blockpin signalname="busy" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="mr" name="I0" />
            <blockpin signalname="mw" name="I1" />
            <blockpin signalname="req" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_4">
            <blockpin signalname="busy" name="I0" />
            <blockpin signalname="mw" name="I1" />
            <blockpin signalname="wr_n" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="busy" name="I" />
            <blockpin signalname="as_n" name="O" />
        </block>
        <block symbolname="MAC_control" name="XLXI_6">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="ack_n" name="ack_n" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="req" name="req" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="state(1:0)" name="state(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="288" y1="256" y2="256" x1="192" />
        </branch>
        <branch name="mr">
            <wire x2="288" y1="304" y2="304" x1="192" />
        </branch>
        <branch name="mw">
            <wire x2="288" y1="368" y2="368" x1="192" />
        </branch>
        <branch name="ack_n">
            <wire x2="288" y1="416" y2="416" x1="192" />
        </branch>
        <branch name="reset">
            <wire x2="288" y1="480" y2="480" x1="192" />
        </branch>
        <branch name="busy">
            <wire x2="3024" y1="256" y2="256" x1="2928" />
        </branch>
        <branch name="as_n">
            <wire x2="3024" y1="304" y2="304" x1="2928" />
        </branch>
        <branch name="wr_n">
            <wire x2="3024" y1="368" y2="368" x1="2928" />
        </branch>
        <branch name="state(1:0)">
            <wire x2="3024" y1="416" y2="416" x1="2928" />
        </branch>
        <branch name="stop_n">
            <wire x2="3024" y1="480" y2="480" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="192" y="256" name="clk" orien="R180" />
        <iomarker fontsize="28" x="192" y="304" name="mr" orien="R180" />
        <iomarker fontsize="28" x="192" y="368" name="mw" orien="R180" />
        <iomarker fontsize="28" x="192" y="416" name="ack_n" orien="R180" />
        <iomarker fontsize="28" x="192" y="480" name="reset" orien="R180" />
        <iomarker fontsize="28" x="3024" y="256" name="busy" orien="R0" />
        <iomarker fontsize="28" x="3024" y="304" name="as_n" orien="R0" />
        <iomarker fontsize="28" x="3024" y="368" name="wr_n" orien="R0" />
        <iomarker fontsize="28" x="3024" y="416" name="state(1:0)" orien="R0" />
        <iomarker fontsize="28" x="3024" y="480" name="stop_n" orien="R0" />
        <instance x="1632" y="1232" name="XLXI_2" orien="R0" />
        <instance x="1632" y="1520" name="XLXI_3" orien="R0" />
        <instance x="1632" y="1792" name="XLXI_4" orien="R0" />
        <instance x="1632" y="2000" name="XLXI_5" orien="R0" />
        <branch name="req">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1168" type="branch" />
            <wire x2="1632" y1="1168" y2="1168" x1="1584" />
        </branch>
        <branch name="ack_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1104" type="branch" />
            <wire x2="1632" y1="1104" y2="1104" x1="1584" />
        </branch>
        <branch name="mr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1456" type="branch" />
            <wire x2="1632" y1="1456" y2="1456" x1="1584" />
        </branch>
        <branch name="mw">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1392" type="branch" />
            <wire x2="1632" y1="1392" y2="1392" x1="1584" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1728" type="branch" />
            <wire x2="1632" y1="1728" y2="1728" x1="1584" />
        </branch>
        <branch name="mw">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1664" type="branch" />
            <wire x2="1632" y1="1664" y2="1664" x1="1584" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="480" type="branch" />
            <wire x2="1584" y1="480" y2="480" x1="1488" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="544" type="branch" />
            <wire x2="1584" y1="544" y2="544" x1="1488" />
        </branch>
        <branch name="ack_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="608" type="branch" />
            <wire x2="1584" y1="608" y2="608" x1="1488" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="672" type="branch" />
            <wire x2="1584" y1="672" y2="672" x1="1488" />
        </branch>
        <branch name="req">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="736" type="branch" />
            <wire x2="1584" y1="736" y2="736" x1="1504" />
        </branch>
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="480" type="branch" />
            <wire x2="2048" y1="480" y2="480" x1="1968" />
        </branch>
        <branch name="state(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="736" type="branch" />
            <wire x2="2080" y1="736" y2="736" x1="1968" />
        </branch>
        <branch name="req">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1424" type="branch" />
            <wire x2="1984" y1="1424" y2="1424" x1="1888" />
        </branch>
        <branch name="wr_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1696" type="branch" />
            <wire x2="1984" y1="1696" y2="1696" x1="1888" />
        </branch>
        <branch name="as_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="1968" type="branch" />
            <wire x2="1968" y1="1968" y2="1968" x1="1856" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="1968" type="branch" />
            <wire x2="1632" y1="1968" y2="1968" x1="1552" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1136" type="branch" />
            <wire x2="2000" y1="1136" y2="1136" x1="1888" />
        </branch>
        <instance x="1584" y="768" name="XLXI_6" orien="R0">
        </instance>
    </sheet>
</drawing>