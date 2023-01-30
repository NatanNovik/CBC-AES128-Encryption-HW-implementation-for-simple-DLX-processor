<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="Din(31:0)" />
        <signal name="state(6:0)" />
        <signal name="key(127:0)" />
        <signal name="plaintext(127:0)" />
        <signal name="IN_CALC_AES" />
        <signal name="XLXN_15" />
        <signal name="XLXN_20(127:0)" />
        <signal name="Dout(31:0)" />
        <signal name="Aout(31:0)" />
        <signal name="AES_kick" />
        <signal name="AES_sel" />
        <signal name="IV(127:0)" />
        <signal name="ciphertext(127:0)" />
        <signal name="XLXN_26(127:0)" />
        <signal name="DONE_AES">
        </signal>
        <signal name="saved_cipher(127:0)" />
        <signal name="XLXN_27" />
        <signal name="XLXN_31" />
        <signal name="reset" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="Din(31:0)" />
        <port polarity="Input" name="state(6:0)" />
        <port polarity="Output" name="IN_CALC_AES" />
        <port polarity="Output" name="Dout(31:0)" />
        <port polarity="Output" name="Aout(31:0)" />
        <port polarity="Input" name="AES_kick" />
        <port polarity="Input" name="AES_sel" />
        <port polarity="Input" name="reset" />
        <blockdef name="ADDRESS_GENERATOR">
            <timestamp>2023-1-7T15:57:30</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="Buffer_IN">
            <timestamp>2023-1-7T15:57:45</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Buffer_OUT">
            <timestamp>2023-1-7T15:58:1</timestamp>
            <rect width="304" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
        </blockdef>
        <blockdef name="IN_CALC_TRIGGER">
            <timestamp>2023-1-7T15:58:11</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="reg128ce">
            <timestamp>2022-9-14T17:2:2</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="xor128bitwise">
            <timestamp>2022-9-14T17:40:38</timestamp>
            <rect width="64" x="368" y="20" height="24" />
            <line x2="432" y1="32" y2="32" x1="368" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="304" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="aes_enc">
            <timestamp>2022-9-14T15:57:3</timestamp>
            <rect width="352" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="MUX1X128">
            <timestamp>2023-1-7T17:7:23</timestamp>
            <rect width="336" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="ADDRESS_GENERATOR" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="state(6:0)" name="state(6:0)" />
            <blockpin signalname="Aout(31:0)" name="address(31:0)" />
        </block>
        <block symbolname="Buffer_IN" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="Din(31:0)" name="Din(31:0)" />
            <blockpin signalname="state(6:0)" name="state(6:0)" />
            <blockpin signalname="key(127:0)" name="key(127:0)" />
            <blockpin signalname="IV(127:0)" name="IV(127:0)" />
            <blockpin signalname="plaintext(127:0)" name="plaintext(127:0)" />
        </block>
        <block symbolname="Buffer_OUT" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="saved_cipher(127:0)" name="ciphertext(127:0)" />
            <blockpin signalname="state(6:0)" name="state(6:0)" />
            <blockpin signalname="Dout(31:0)" name="Dout(31:0)" />
        </block>
        <block symbolname="IN_CALC_TRIGGER" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="AES_kick" name="calculation_en" />
            <blockpin signalname="DONE_AES" name="done" />
            <blockpin signalname="IN_CALC_AES" name="in_calc" />
            <blockpin signalname="XLXN_15" name="ce_bit" />
        </block>
        <block symbolname="xor128bitwise" name="XLXI_6">
            <blockpin signalname="XLXN_20(127:0)" name="string1(127:0)" />
            <blockpin signalname="plaintext(127:0)" name="string2(127:0)" />
            <blockpin signalname="XLXN_26(127:0)" name="Xor_out(127:0)" />
        </block>
        <block symbolname="MUX1X128" name="XLXI_8">
            <blockpin signalname="AES_sel" name="sel" />
            <blockpin signalname="IV(127:0)" name="string1(127:0)" />
            <blockpin signalname="ciphertext(127:0)" name="string2(127:0)" />
            <blockpin signalname="XLXN_20(127:0)" name="out_string(127:0)" />
        </block>
        <block symbolname="aes_enc" name="XLXI_7">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_27" name="rst" />
            <blockpin signalname="key(127:0)" name="key(127:0)" />
            <blockpin signalname="XLXN_26(127:0)" name="plaintext(127:0)" />
            <blockpin signalname="DONE_AES" name="done" />
            <blockpin signalname="ciphertext(127:0)" name="ciphertext(127:0)" />
        </block>
        <block symbolname="reg128ce" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_15" name="ce" />
            <blockpin signalname="ciphertext(127:0)" name="Din(127:0)" />
            <blockpin signalname="saved_cipher(127:0)" name="Dout(127:0)" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="XLXN_31" name="I0" />
            <blockpin signalname="AES_kick" name="I1" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="reset" name="I" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1632" y="528" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1008" y="1520" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1568" y="2464" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="368" type="branch" />
            <wire x2="1632" y1="368" y2="368" x1="1568" />
        </branch>
        <branch name="Din(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="432" type="branch" />
            <wire x2="1632" y1="432" y2="432" x1="1568" />
        </branch>
        <branch name="state(6:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="496" type="branch" />
            <wire x2="1632" y1="496" y2="496" x1="1568" />
        </branch>
        <branch name="key(127:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="368" type="branch" />
            <wire x2="2112" y1="368" y2="368" x1="2016" />
        </branch>
        <branch name="IV(127:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="432" type="branch" />
            <wire x2="2112" y1="432" y2="432" x1="2016" />
        </branch>
        <branch name="plaintext(127:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="496" type="branch" />
            <wire x2="2112" y1="496" y2="496" x1="2016" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="1360" type="branch" />
            <wire x2="1008" y1="1360" y2="1360" x1="912" />
        </branch>
        <branch name="AES_kick">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="1424" type="branch" />
            <wire x2="1008" y1="1424" y2="1424" x1="912" />
        </branch>
        <branch name="DONE_AES">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="1488" type="branch" />
            <wire x2="1008" y1="1488" y2="1488" x1="912" />
        </branch>
        <branch name="IN_CALC_AES">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1360" type="branch" />
            <wire x2="1488" y1="1360" y2="1360" x1="1392" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1904" y1="1488" y2="1488" x1="1392" />
        </branch>
        <branch name="Dout(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="1904" type="branch" />
            <wire x2="1552" y1="1904" y2="1904" x1="1440" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="2368" type="branch" />
            <wire x2="1568" y1="2368" y2="2368" x1="1440" />
        </branch>
        <branch name="state(6:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="2432" type="branch" />
            <wire x2="1568" y1="2432" y2="2432" x1="1456" />
        </branch>
        <branch name="Aout(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="2368" type="branch" />
            <wire x2="2048" y1="2368" y2="2368" x1="1952" />
        </branch>
        <branch name="clk">
            <wire x2="624" y1="160" y2="160" x1="336" />
        </branch>
        <branch name="Din(31:0)">
            <wire x2="624" y1="288" y2="288" x1="352" />
        </branch>
        <branch name="state(6:0)">
            <wire x2="624" y1="416" y2="416" x1="336" />
        </branch>
        <iomarker fontsize="28" x="336" y="160" name="clk" orien="R180" />
        <iomarker fontsize="28" x="352" y="288" name="Din(31:0)" orien="R180" />
        <iomarker fontsize="28" x="336" y="416" name="state(6:0)" orien="R180" />
        <branch name="AES_kick">
            <wire x2="592" y1="528" y2="528" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="528" name="AES_kick" orien="R180" />
        <branch name="AES_sel">
            <wire x2="560" y1="624" y2="624" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="624" name="AES_sel" orien="R180" />
        <instance x="576" y="1024" name="XLXI_8" orien="R0">
        </instance>
        <branch name="AES_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="448" y="864" type="branch" />
            <wire x2="576" y1="864" y2="864" x1="448" />
        </branch>
        <branch name="IV(127:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="464" y="928" type="branch" />
            <wire x2="576" y1="928" y2="928" x1="464" />
        </branch>
        <branch name="ciphertext(127:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="992" type="branch" />
            <wire x2="576" y1="992" y2="992" x1="480" />
        </branch>
        <branch name="key(127:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="928" type="branch" />
            <wire x2="2416" y1="928" y2="928" x1="2336" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="800" type="branch" />
            <wire x2="2416" y1="800" y2="800" x1="2336" />
        </branch>
        <instance x="2416" y="1024" name="XLXI_7" orien="R0">
        </instance>
        <branch name="ciphertext(127:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3008" y="992" type="branch" />
            <wire x2="3008" y1="992" y2="992" x1="2896" />
        </branch>
        <branch name="DONE_AES">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="800" type="branch" />
            <wire x2="2976" y1="800" y2="800" x1="2896" />
        </branch>
        <branch name="XLXN_26(127:0)">
            <wire x2="2400" y1="992" y2="992" x1="1952" />
            <wire x2="2416" y1="992" y2="992" x1="2400" />
        </branch>
        <instance x="1904" y="1584" name="XLXI_5" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1424" type="branch" />
            <wire x2="1904" y1="1424" y2="1424" x1="1824" />
        </branch>
        <branch name="ciphertext(127:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1552" type="branch" />
            <wire x2="1904" y1="1552" y2="1552" x1="1808" />
        </branch>
        <branch name="saved_cipher(127:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="1424" type="branch" />
            <wire x2="2400" y1="1424" y2="1424" x1="2288" />
        </branch>
        <branch name="Dout(31:0)">
            <wire x2="3264" y1="384" y2="384" x1="3024" />
        </branch>
        <branch name="Aout(31:0)">
            <wire x2="3264" y1="544" y2="544" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="3264" y="384" name="Dout(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3264" y="544" name="Aout(31:0)" orien="R0" />
        <branch name="IN_CALC_AES">
            <wire x2="3248" y1="1360" y2="1360" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3248" y="1360" name="IN_CALC_AES" orien="R0" />
        <branch name="state(6:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="2032" type="branch" />
            <wire x2="1008" y1="2032" y2="2032" x1="896" />
        </branch>
        <branch name="saved_cipher(127:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="1968" type="branch" />
            <wire x2="1008" y1="1968" y2="1968" x1="896" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="1904" type="branch" />
            <wire x2="1008" y1="1904" y2="1904" x1="912" />
        </branch>
        <instance x="1008" y="2064" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_27">
            <wire x2="2272" y1="672" y2="672" x1="2240" />
            <wire x2="2272" y1="672" y2="864" x1="2272" />
            <wire x2="2416" y1="864" y2="864" x1="2272" />
        </branch>
        <instance x="1984" y="768" name="XLXI_9" orien="R0" />
        <branch name="AES_kick">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="640" type="branch" />
            <wire x2="1968" y1="640" y2="640" x1="1904" />
            <wire x2="1984" y1="640" y2="640" x1="1968" />
        </branch>
        <branch name="plaintext(127:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="928" type="branch" />
            <wire x2="1440" y1="928" y2="928" x1="1424" />
            <wire x2="1520" y1="928" y2="928" x1="1440" />
        </branch>
        <branch name="XLXN_20(127:0)">
            <wire x2="1056" y1="864" y2="864" x1="1040" />
            <wire x2="1520" y1="864" y2="864" x1="1056" />
        </branch>
        <instance x="1520" y="960" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_31">
            <wire x2="1984" y1="704" y2="704" x1="1952" />
        </branch>
        <instance x="1728" y="736" name="XLXI_10" orien="R0" />
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="704" type="branch" />
            <wire x2="1728" y1="704" y2="704" x1="1680" />
        </branch>
        <branch name="reset">
            <wire x2="544" y1="720" y2="720" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="720" name="reset" orien="R180" />
    </sheet>
</drawing>