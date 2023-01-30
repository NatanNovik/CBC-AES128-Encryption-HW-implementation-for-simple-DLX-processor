<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="ack_n" />
        <signal name="step_en" />
        <signal name="reset" />
        <signal name="opcode(5:0)" />
        <signal name="AEQZ" />
        <signal name="imm(15:0)" />
        <signal name="mac_state(1:0)" />
        <signal name="DLX_mw">
        </signal>
        <signal name="in_init" />
        <signal name="gpr_we" />
        <signal name="IR_ce" />
        <signal name="PC_ce" />
        <signal name="MAR_ce" />
        <signal name="MDR_ce" />
        <signal name="A_sel" />
        <signal name="shift_en" />
        <signal name="MDR_sel" />
        <signal name="DINT_sel" />
        <signal name="add" />
        <signal name="jlink" />
        <signal name="itype" />
        <signal name="test" />
        <signal name="A_ce" />
        <signal name="B_ce" />
        <signal name="C_ce" />
        <signal name="DLX_state(4:0)" />
        <signal name="s1_sel(1:0)" />
        <signal name="s2_sel(1:0)" />
        <signal name="busy" />
        <signal name="DLX_mr">
        </signal>
        <signal name="as_n" />
        <signal name="wr_n" />
        <signal name="stop_n" />
        <signal name="CBC_step_en" />
        <signal name="CBC_mw" />
        <signal name="AES_sel" />
        <signal name="Dout_sel" />
        <signal name="Aout_sel" />
        <signal name="AES_kick" />
        <signal name="CBC_state(6:0)" />
        <signal name="done_cbc" />
        <signal name="IN_CALC_CBC" />
        <signal name="mr" />
        <signal name="mw" />
        <signal name="mw_sel" />
        <signal name="CBC_mr" />
        <signal name="mr_sel" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="ack_n" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="opcode(5:0)" />
        <port polarity="Input" name="AEQZ" />
        <port polarity="Input" name="imm(15:0)" />
        <port polarity="Output" name="mac_state(1:0)" />
        <port polarity="Output" name="in_init" />
        <port polarity="Output" name="gpr_we" />
        <port polarity="Output" name="IR_ce" />
        <port polarity="Output" name="PC_ce" />
        <port polarity="Output" name="MAR_ce" />
        <port polarity="Output" name="MDR_ce" />
        <port polarity="Output" name="A_sel" />
        <port polarity="Output" name="shift_en" />
        <port polarity="Output" name="MDR_sel" />
        <port polarity="Output" name="DINT_sel" />
        <port polarity="Output" name="add" />
        <port polarity="Output" name="jlink" />
        <port polarity="Output" name="itype" />
        <port polarity="Output" name="test" />
        <port polarity="Output" name="A_ce" />
        <port polarity="Output" name="B_ce" />
        <port polarity="Output" name="C_ce" />
        <port polarity="Output" name="DLX_state(4:0)" />
        <port polarity="Output" name="s1_sel(1:0)" />
        <port polarity="Output" name="s2_sel(1:0)" />
        <port polarity="Output" name="busy" />
        <port polarity="Output" name="as_n" />
        <port polarity="Output" name="wr_n" />
        <port polarity="Output" name="stop_n" />
        <port polarity="Output" name="AES_sel" />
        <port polarity="Output" name="Dout_sel" />
        <port polarity="Output" name="Aout_sel" />
        <port polarity="Output" name="AES_kick" />
        <port polarity="Output" name="CBC_state(6:0)" />
        <port polarity="Input" name="IN_CALC_CBC" />
        <port polarity="Output" name="mr" />
        <port polarity="Output" name="mw" />
        <blockdef name="MAC">
            <timestamp>2021-11-29T9:29:36</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="DLX_state_machine">
            <timestamp>2023-1-16T14:32:10</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="416" y1="32" y2="32" x1="352" />
            <line x2="0" y1="-1376" y2="-1376" x1="64" />
            <line x2="0" y1="-1152" y2="-1152" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-704" y2="-704" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-1376" y2="-1376" x1="352" />
            <line x2="416" y1="-1312" y2="-1312" x1="352" />
            <line x2="416" y1="-1248" y2="-1248" x1="352" />
            <line x2="416" y1="-1184" y2="-1184" x1="352" />
            <line x2="416" y1="-1120" y2="-1120" x1="352" />
            <line x2="416" y1="-1056" y2="-1056" x1="352" />
            <line x2="416" y1="-992" y2="-992" x1="352" />
            <line x2="416" y1="-928" y2="-928" x1="352" />
            <line x2="416" y1="-864" y2="-864" x1="352" />
            <line x2="416" y1="-800" y2="-800" x1="352" />
            <line x2="416" y1="-736" y2="-736" x1="352" />
            <line x2="416" y1="-672" y2="-672" x1="352" />
            <line x2="416" y1="-608" y2="-608" x1="352" />
            <line x2="416" y1="-544" y2="-544" x1="352" />
            <line x2="416" y1="-480" y2="-480" x1="352" />
            <line x2="416" y1="-416" y2="-416" x1="352" />
            <line x2="416" y1="-352" y2="-352" x1="352" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-1408" height="1536" />
        </blockdef>
        <blockdef name="CBC_State_Machine">
            <timestamp>2023-1-16T14:33:30</timestamp>
            <rect width="304" x="64" y="-640" height="640" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-464" y2="-464" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-176" y2="-176" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
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
        <block symbolname="MAC" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="mr" name="mr" />
            <blockpin signalname="mw" name="mw" />
            <blockpin signalname="ack_n" name="ack_n" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="as_n" name="as_n" />
            <blockpin signalname="wr_n" name="wr_n" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="mac_state(1:0)" name="state(1:0)" />
        </block>
        <block symbolname="DLX_state_machine" name="XLXI_10">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="AEQZ" name="AEQZ" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="done_cbc" name="done_cbc" />
            <blockpin signalname="opcode(5:0)" name="opcode(5:0)" />
            <blockpin signalname="imm(15:0)" name="imm(15:0)" />
            <blockpin signalname="DLX_mr" name="mr" />
            <blockpin signalname="DLX_mw" name="mw" />
            <blockpin signalname="in_init" name="in_init" />
            <blockpin signalname="gpr_we" name="gpr_we" />
            <blockpin signalname="IR_ce" name="IR_ce" />
            <blockpin signalname="PC_ce" name="PC_ce" />
            <blockpin signalname="MAR_ce" name="MAR_ce" />
            <blockpin signalname="MDR_ce" name="MDR_ce" />
            <blockpin signalname="A_sel" name="Asel" />
            <blockpin signalname="shift_en" name="shift_en" />
            <blockpin signalname="MDR_sel" name="MDR_sel" />
            <blockpin signalname="DINT_sel" name="DINTsel" />
            <blockpin signalname="add" name="add" />
            <blockpin signalname="jlink" name="jlink" />
            <blockpin signalname="itype" name="itype" />
            <blockpin signalname="test" name="test" />
            <blockpin signalname="A_ce" name="A_ce" />
            <blockpin signalname="B_ce" name="B_ce" />
            <blockpin signalname="C_ce" name="C_ce" />
            <blockpin signalname="CBC_step_en" name="CBC_step_en" />
            <blockpin signalname="DLX_state(4:0)" name="state_out(4:0)" />
            <blockpin signalname="s1_sel(1:0)" name="S1sel(1:0)" />
            <blockpin signalname="s2_sel(1:0)" name="S2sel(1:0)" />
        </block>
        <block symbolname="CBC_State_Machine" name="XLXI_11">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="CBC_step_en" name="CBC_step_en" />
            <blockpin signalname="ack_n" name="ack_n" />
            <blockpin signalname="IN_CALC_CBC" name="IN_CALC_AES" />
            <blockpin signalname="CBC_mr" name="mr" />
            <blockpin signalname="CBC_mw" name="mw" />
            <blockpin signalname="AES_sel" name="AES_sel" />
            <blockpin signalname="mr_sel" name="mr_sel" />
            <blockpin signalname="mw_sel" name="mw_sel" />
            <blockpin signalname="Dout_sel" name="Dout_sel" />
            <blockpin signalname="Aout_sel" name="Aout_sel" />
            <blockpin signalname="AES_kick" name="AES_kick" />
            <blockpin signalname="done_cbc" name="DONE_CBC" />
            <blockpin signalname="CBC_state(6:0)" name="state(6:0)" />
        </block>
        <block symbolname="m2_1" name="XLXI_12">
            <blockpin signalname="DLX_mr" name="D0" />
            <blockpin signalname="CBC_mr" name="D1" />
            <blockpin signalname="mr_sel" name="S0" />
            <blockpin signalname="mr" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_13">
            <blockpin signalname="DLX_mw" name="D0" />
            <blockpin signalname="CBC_mw" name="D1" />
            <blockpin signalname="mw_sel" name="S0" />
            <blockpin signalname="mw" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="560" y1="144" y2="144" x1="288" />
        </branch>
        <branch name="ack_n">
            <wire x2="544" y1="304" y2="304" x1="288" />
        </branch>
        <branch name="step_en">
            <wire x2="560" y1="240" y2="240" x1="288" />
        </branch>
        <branch name="reset">
            <wire x2="544" y1="400" y2="400" x1="288" />
        </branch>
        <branch name="opcode(5:0)">
            <wire x2="560" y1="464" y2="464" x1="288" />
        </branch>
        <branch name="AEQZ">
            <wire x2="544" y1="624" y2="624" x1="288" />
        </branch>
        <branch name="imm(15:0)">
            <wire x2="576" y1="528" y2="528" x1="304" />
        </branch>
        <iomarker fontsize="28" x="288" y="144" name="clk" orien="R180" />
        <iomarker fontsize="28" x="288" y="240" name="step_en" orien="R180" />
        <iomarker fontsize="28" x="288" y="304" name="ack_n" orien="R180" />
        <iomarker fontsize="28" x="288" y="400" name="reset" orien="R180" />
        <iomarker fontsize="28" x="288" y="464" name="opcode(5:0)" orien="R180" />
        <iomarker fontsize="28" x="304" y="528" name="imm(15:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="624" name="AEQZ" orien="R180" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="192" type="branch" />
            <wire x2="1568" y1="192" y2="192" x1="1440" />
        </branch>
        <branch name="ack_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="384" type="branch" />
            <wire x2="1568" y1="384" y2="384" x1="1424" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="448" type="branch" />
            <wire x2="1568" y1="448" y2="448" x1="1424" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="832" type="branch" />
            <wire x2="1568" y1="832" y2="832" x1="1424" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1056" type="branch" />
            <wire x2="1568" y1="1056" y2="1056" x1="1408" />
        </branch>
        <branch name="AEQZ">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1280" type="branch" />
            <wire x2="1568" y1="1280" y2="1280" x1="1376" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1504" type="branch" />
            <wire x2="1568" y1="1504" y2="1504" x1="1360" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1728" type="branch" />
            <wire x2="1568" y1="1728" y2="1728" x1="1376" />
        </branch>
        <branch name="opcode(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1952" type="branch" />
            <wire x2="1568" y1="1952" y2="1952" x1="1376" />
        </branch>
        <branch name="imm(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="2176" type="branch" />
            <wire x2="1568" y1="2176" y2="2176" x1="1344" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="192" type="branch" />
            <wire x2="2176" y1="192" y2="192" x1="1952" />
        </branch>
        <branch name="mac_state(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="448" type="branch" />
            <wire x2="2176" y1="448" y2="448" x1="1952" />
        </branch>
        <branch name="DLX_mr">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="832" type="branch" />
            <wire x2="2192" y1="832" y2="832" x1="1984" />
        </branch>
        <branch name="DLX_mw">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="896" type="branch" />
            <wire x2="2192" y1="896" y2="896" x1="1984" />
        </branch>
        <branch name="in_init">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="960" type="branch" />
            <wire x2="2192" y1="960" y2="960" x1="1984" />
        </branch>
        <branch name="gpr_we">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1024" type="branch" />
            <wire x2="2208" y1="1024" y2="1024" x1="1984" />
        </branch>
        <branch name="IR_ce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1088" type="branch" />
            <wire x2="2208" y1="1088" y2="1088" x1="1984" />
        </branch>
        <branch name="PC_ce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1152" type="branch" />
            <wire x2="2192" y1="1152" y2="1152" x1="1984" />
        </branch>
        <branch name="MAR_ce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1216" type="branch" />
            <wire x2="2192" y1="1216" y2="1216" x1="1984" />
        </branch>
        <branch name="MDR_ce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1280" type="branch" />
            <wire x2="2192" y1="1280" y2="1280" x1="1984" />
        </branch>
        <branch name="A_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1344" type="branch" />
            <wire x2="2176" y1="1344" y2="1344" x1="1984" />
        </branch>
        <branch name="shift_en">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1408" type="branch" />
            <wire x2="2192" y1="1408" y2="1408" x1="1984" />
        </branch>
        <branch name="MDR_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1472" type="branch" />
            <wire x2="2176" y1="1472" y2="1472" x1="1984" />
        </branch>
        <branch name="DINT_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1536" type="branch" />
            <wire x2="2176" y1="1536" y2="1536" x1="1984" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1600" type="branch" />
            <wire x2="2160" y1="1600" y2="1600" x1="1984" />
        </branch>
        <branch name="jlink">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1664" type="branch" />
            <wire x2="2176" y1="1664" y2="1664" x1="1984" />
        </branch>
        <branch name="itype">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1728" type="branch" />
            <wire x2="2160" y1="1728" y2="1728" x1="1984" />
        </branch>
        <branch name="test">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1792" type="branch" />
            <wire x2="2176" y1="1792" y2="1792" x1="1984" />
        </branch>
        <branch name="A_ce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1856" type="branch" />
            <wire x2="2176" y1="1856" y2="1856" x1="1984" />
        </branch>
        <branch name="B_ce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1920" type="branch" />
            <wire x2="2176" y1="1920" y2="1920" x1="1984" />
        </branch>
        <branch name="C_ce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1984" type="branch" />
            <wire x2="2176" y1="1984" y2="1984" x1="1984" />
        </branch>
        <branch name="DLX_state(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="2048" type="branch" />
            <wire x2="2176" y1="2048" y2="2048" x1="1984" />
        </branch>
        <branch name="s1_sel(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="2112" type="branch" />
            <wire x2="2176" y1="2112" y2="2112" x1="1984" />
        </branch>
        <branch name="s2_sel(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="2176" type="branch" />
            <wire x2="2176" y1="2176" y2="2176" x1="1984" />
        </branch>
        <branch name="busy">
            <wire x2="2992" y1="208" y2="208" x1="2736" />
        </branch>
        <branch name="as_n">
            <wire x2="2992" y1="272" y2="272" x1="2736" />
        </branch>
        <branch name="wr_n">
            <wire x2="2992" y1="336" y2="336" x1="2736" />
        </branch>
        <branch name="stop_n">
            <wire x2="2992" y1="416" y2="416" x1="2736" />
        </branch>
        <branch name="mac_state(1:0)">
            <wire x2="3008" y1="496" y2="496" x1="2752" />
        </branch>
        <branch name="in_init">
            <wire x2="3008" y1="704" y2="704" x1="2752" />
        </branch>
        <branch name="gpr_we">
            <wire x2="3008" y1="800" y2="800" x1="2752" />
        </branch>
        <branch name="IR_ce">
            <wire x2="3008" y1="864" y2="864" x1="2752" />
        </branch>
        <branch name="PC_ce">
            <wire x2="3008" y1="928" y2="928" x1="2752" />
        </branch>
        <branch name="MAR_ce">
            <wire x2="3008" y1="1008" y2="1008" x1="2752" />
        </branch>
        <branch name="MDR_ce">
            <wire x2="3008" y1="1104" y2="1104" x1="2752" />
        </branch>
        <branch name="A_sel">
            <wire x2="3008" y1="1168" y2="1168" x1="2752" />
        </branch>
        <branch name="shift_en">
            <wire x2="3008" y1="1232" y2="1232" x1="2752" />
        </branch>
        <branch name="MDR_sel">
            <wire x2="3008" y1="1312" y2="1312" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="2992" y="208" name="busy" orien="R0" />
        <iomarker fontsize="28" x="2992" y="272" name="as_n" orien="R0" />
        <iomarker fontsize="28" x="2992" y="336" name="wr_n" orien="R0" />
        <iomarker fontsize="28" x="2992" y="416" name="stop_n" orien="R0" />
        <iomarker fontsize="28" x="3008" y="496" name="mac_state(1:0)" orien="R0" />
        <iomarker fontsize="28" x="3008" y="560" name="mr" orien="R0" />
        <iomarker fontsize="28" x="3008" y="624" name="mw" orien="R0" />
        <iomarker fontsize="28" x="3008" y="704" name="in_init" orien="R0" />
        <iomarker fontsize="28" x="3008" y="800" name="gpr_we" orien="R0" />
        <iomarker fontsize="28" x="3008" y="864" name="IR_ce" orien="R0" />
        <iomarker fontsize="28" x="3008" y="928" name="PC_ce" orien="R0" />
        <iomarker fontsize="28" x="3008" y="1008" name="MAR_ce" orien="R0" />
        <iomarker fontsize="28" x="3008" y="1104" name="MDR_ce" orien="R0" />
        <iomarker fontsize="28" x="3008" y="1168" name="A_sel" orien="R0" />
        <iomarker fontsize="28" x="3008" y="1232" name="shift_en" orien="R0" />
        <iomarker fontsize="28" x="3008" y="1312" name="MDR_sel" orien="R0" />
        <instance x="1568" y="480" name="XLXI_3" orien="R0">
        </instance>
        <branch name="as_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="256" type="branch" />
            <wire x2="2160" y1="256" y2="256" x1="1952" />
        </branch>
        <branch name="wr_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="320" type="branch" />
            <wire x2="2160" y1="320" y2="320" x1="1952" />
        </branch>
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="384" type="branch" />
            <wire x2="2144" y1="384" y2="384" x1="1952" />
        </branch>
        <branch name="DINT_sel">
            <wire x2="3024" y1="1440" y2="1440" x1="2768" />
        </branch>
        <branch name="add">
            <wire x2="3024" y1="1504" y2="1504" x1="2768" />
        </branch>
        <branch name="jlink">
            <wire x2="3024" y1="1568" y2="1568" x1="2768" />
        </branch>
        <branch name="itype">
            <wire x2="3024" y1="1648" y2="1648" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="3024" y="1440" name="DINT_sel" orien="R0" />
        <iomarker fontsize="28" x="3024" y="1504" name="add" orien="R0" />
        <iomarker fontsize="28" x="3024" y="1568" name="jlink" orien="R0" />
        <iomarker fontsize="28" x="3024" y="1648" name="itype" orien="R0" />
        <branch name="test">
            <wire x2="3040" y1="1792" y2="1792" x1="2784" />
        </branch>
        <branch name="A_ce">
            <wire x2="3040" y1="1856" y2="1856" x1="2784" />
        </branch>
        <branch name="B_ce">
            <wire x2="3040" y1="1920" y2="1920" x1="2784" />
        </branch>
        <branch name="C_ce">
            <wire x2="3040" y1="2000" y2="2000" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="3040" y="1792" name="test" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1856" name="A_ce" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1920" name="B_ce" orien="R0" />
        <iomarker fontsize="28" x="3040" y="2000" name="C_ce" orien="R0" />
        <branch name="DLX_state(4:0)">
            <wire x2="3040" y1="2112" y2="2112" x1="2784" />
        </branch>
        <branch name="s1_sel(1:0)">
            <wire x2="3040" y1="2176" y2="2176" x1="2784" />
        </branch>
        <branch name="s2_sel(1:0)">
            <wire x2="3040" y1="2240" y2="2240" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="3040" y="2112" name="DLX_state(4:0)" orien="R0" />
        <iomarker fontsize="28" x="3040" y="2176" name="s1_sel(1:0)" orien="R0" />
        <iomarker fontsize="28" x="3040" y="2240" name="s2_sel(1:0)" orien="R0" />
        <branch name="CBC_step_en">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="2240" type="branch" />
            <wire x2="2144" y1="2240" y2="2240" x1="1984" />
        </branch>
        <instance x="1568" y="2208" name="XLXI_10" orien="R0">
        </instance>
        <instance x="400" y="1856" name="XLXI_11" orien="R0">
        </instance>
        <branch name="CBC_mr">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1248" type="branch" />
            <wire x2="928" y1="1248" y2="1248" x1="832" />
        </branch>
        <branch name="CBC_mw">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1312" type="branch" />
            <wire x2="928" y1="1312" y2="1312" x1="832" />
        </branch>
        <branch name="AES_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1376" type="branch" />
            <wire x2="928" y1="1376" y2="1376" x1="832" />
        </branch>
        <branch name="mr_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1440" type="branch" />
            <wire x2="928" y1="1440" y2="1440" x1="832" />
        </branch>
        <branch name="mw_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1504" type="branch" />
            <wire x2="928" y1="1504" y2="1504" x1="832" />
        </branch>
        <branch name="Dout_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1568" type="branch" />
            <wire x2="928" y1="1568" y2="1568" x1="832" />
        </branch>
        <branch name="Aout_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1632" type="branch" />
            <wire x2="928" y1="1632" y2="1632" x1="832" />
        </branch>
        <branch name="AES_kick">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1696" type="branch" />
            <wire x2="928" y1="1696" y2="1696" x1="832" />
        </branch>
        <branch name="CBC_state(6:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1824" type="branch" />
            <wire x2="928" y1="1824" y2="1824" x1="832" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1248" type="branch" />
            <wire x2="400" y1="1248" y2="1248" x1="304" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1392" type="branch" />
            <wire x2="400" y1="1392" y2="1392" x1="304" />
        </branch>
        <branch name="CBC_step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1536" type="branch" />
            <wire x2="400" y1="1536" y2="1536" x1="304" />
        </branch>
        <branch name="ack_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1680" type="branch" />
            <wire x2="400" y1="1680" y2="1680" x1="304" />
        </branch>
        <branch name="IN_CALC_CBC">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1824" type="branch" />
            <wire x2="400" y1="1824" y2="1824" x1="304" />
        </branch>
        <branch name="done_cbc">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="2240" type="branch" />
            <wire x2="1568" y1="2240" y2="2240" x1="1440" />
        </branch>
        <branch name="done_cbc">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1760" type="branch" />
            <wire x2="928" y1="1760" y2="1760" x1="832" />
        </branch>
        <branch name="IN_CALC_CBC">
            <wire x2="528" y1="752" y2="752" x1="336" />
        </branch>
        <iomarker fontsize="28" x="336" y="752" name="IN_CALC_CBC" orien="R180" />
        <instance x="992" y="384" name="XLXI_12" orien="R0" />
        <instance x="848" y="624" name="XLXI_13" orien="R0" />
        <branch name="mr">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="256" type="branch" />
            <wire x2="1408" y1="256" y2="256" x1="1312" />
            <wire x2="1568" y1="256" y2="256" x1="1408" />
        </branch>
        <branch name="mw">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="496" type="branch" />
            <wire x2="1232" y1="496" y2="496" x1="1168" />
            <wire x2="1312" y1="496" y2="496" x1="1232" />
            <wire x2="1312" y1="320" y2="496" x1="1312" />
            <wire x2="1568" y1="320" y2="320" x1="1312" />
        </branch>
        <branch name="DLX_mw">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="464" type="branch" />
            <wire x2="848" y1="464" y2="464" x1="816" />
        </branch>
        <branch name="CBC_mw">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="528" type="branch" />
            <wire x2="848" y1="528" y2="528" x1="800" />
        </branch>
        <branch name="mw_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="592" type="branch" />
            <wire x2="848" y1="592" y2="592" x1="800" />
        </branch>
        <branch name="DLX_mr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="224" type="branch" />
            <wire x2="992" y1="224" y2="224" x1="960" />
        </branch>
        <branch name="CBC_mr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="288" type="branch" />
            <wire x2="992" y1="288" y2="288" x1="944" />
        </branch>
        <branch name="mr_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="352" type="branch" />
            <wire x2="992" y1="352" y2="352" x1="944" />
        </branch>
        <branch name="AES_sel">
            <wire x2="3008" y1="2384" y2="2384" x1="2784" />
        </branch>
        <branch name="Dout_sel">
            <wire x2="3008" y1="2480" y2="2480" x1="2784" />
        </branch>
        <branch name="Aout_sel">
            <wire x2="3008" y1="2576" y2="2576" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="3008" y="2384" name="AES_sel" orien="R0" />
        <iomarker fontsize="28" x="3008" y="2480" name="Dout_sel" orien="R0" />
        <iomarker fontsize="28" x="3008" y="2576" name="Aout_sel" orien="R0" />
        <branch name="AES_kick">
            <wire x2="3008" y1="2672" y2="2672" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="3008" y="2672" name="AES_kick" orien="R0" />
        <branch name="CBC_state(6:0)">
            <wire x2="3024" y1="2320" y2="2320" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="3024" y="2320" name="CBC_state(6:0)" orien="R0" />
        <branch name="mr">
            <wire x2="3008" y1="560" y2="560" x1="2752" />
        </branch>
        <branch name="mw">
            <wire x2="3008" y1="624" y2="624" x1="2752" />
        </branch>
    </sheet>
</drawing>