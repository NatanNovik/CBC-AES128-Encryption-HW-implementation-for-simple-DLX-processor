<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="DI(31:0)" />
        <signal name="step_en" />
        <signal name="reset" />
        <signal name="ack_n" />
        <signal name="Dadr(4:0)" />
        <signal name="mac_state(1:0)" />
        <signal name="mw" />
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
        <signal name="S1_sel(1:0)" />
        <signal name="S2_sel(1:0)" />
        <signal name="busy" />
        <signal name="mr" />
        <signal name="as_n" />
        <signal name="wr_n" />
        <signal name="stop_n" />
        <signal name="AO(31:0)" />
        <signal name="DO(31:0)" />
        <signal name="D_gpr(31:0)" />
        <signal name="AEQZ" />
        <signal name="ALUF(2:0)" />
        <signal name="IR(31:0)" />
        <signal name="IR(31:26)" />
        <signal name="IR(15:0)" />
        <signal name="IN_CALC_AES" />
        <signal name="AES_sel" />
        <signal name="Dout_sel" />
        <signal name="Aout_sel" />
        <signal name="AES_kick" />
        <signal name="CBC_state(6:0)" />
        <signal name="CBC_Dout(31:0)" />
        <signal name="CBC_Aout(31:0)" />
        <signal name="DLX_Aout(31:0)" />
        <signal name="DLX_Dout(31:0)" />
        <signal name="XLXN_158" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="DI(31:0)" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="ack_n" />
        <port polarity="Input" name="Dadr(4:0)" />
        <port polarity="Output" name="mac_state(1:0)" />
        <port polarity="Output" name="mw" />
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
        <port polarity="Output" name="S1_sel(1:0)" />
        <port polarity="Output" name="S2_sel(1:0)" />
        <port polarity="Output" name="busy" />
        <port polarity="Output" name="mr" />
        <port polarity="Output" name="as_n" />
        <port polarity="Output" name="wr_n" />
        <port polarity="Output" name="stop_n" />
        <port polarity="Output" name="AO(31:0)" />
        <port polarity="Output" name="DO(31:0)" />
        <port polarity="Output" name="D_gpr(31:0)" />
        <port polarity="Output" name="AEQZ" />
        <port polarity="Output" name="ALUF(2:0)" />
        <port polarity="Output" name="IR(31:0)" />
        <blockdef name="DLX_Data_Path">
            <timestamp>2022-1-17T17:27:12</timestamp>
            <rect width="256" x="64" y="-1408" height="1408" />
            <line x2="0" y1="-1376" y2="-1376" x1="64" />
            <line x2="0" y1="-1312" y2="-1312" x1="64" />
            <line x2="0" y1="-1248" y2="-1248" x1="64" />
            <line x2="0" y1="-1184" y2="-1184" x1="64" />
            <line x2="0" y1="-1120" y2="-1120" x1="64" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-1388" height="24" />
            <line x2="384" y1="-1376" y2="-1376" x1="320" />
            <rect width="64" x="320" y="-1132" height="24" />
            <line x2="384" y1="-1120" y2="-1120" x1="320" />
            <rect width="64" x="320" y="-876" height="24" />
            <line x2="384" y1="-864" y2="-864" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="MUX32bit">
            <timestamp>2015-7-12T12:4:37</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="DLX_control">
            <timestamp>2023-1-17T10:12:6</timestamp>
            <line x2="432" y1="608" y2="608" x1="368" />
            <line x2="432" y1="736" y2="736" x1="368" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="432" y1="224" y2="224" x1="368" />
            <line x2="432" y1="288" y2="288" x1="368" />
            <line x2="432" y1="352" y2="352" x1="368" />
            <line x2="432" y1="416" y2="416" x1="368" />
            <rect width="64" x="368" y="468" height="24" />
            <line x2="432" y1="480" y2="480" x1="368" />
            <line x2="0" y1="-1696" y2="-1696" x1="64" />
            <line x2="0" y1="-1424" y2="-1424" x1="64" />
            <line x2="0" y1="-1152" y2="-1152" x1="64" />
            <line x2="0" y1="-880" y2="-880" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-336" y2="-336" x1="64" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <rect width="64" x="368" y="-1708" height="24" />
            <line x2="432" y1="-1696" y2="-1696" x1="368" />
            <line x2="432" y1="-1568" y2="-1568" x1="368" />
            <line x2="432" y1="-1504" y2="-1504" x1="368" />
            <line x2="432" y1="-1440" y2="-1440" x1="368" />
            <line x2="432" y1="-1376" y2="-1376" x1="368" />
            <line x2="432" y1="-1312" y2="-1312" x1="368" />
            <line x2="432" y1="-1248" y2="-1248" x1="368" />
            <line x2="432" y1="-1184" y2="-1184" x1="368" />
            <line x2="432" y1="-1120" y2="-1120" x1="368" />
            <line x2="432" y1="-1056" y2="-1056" x1="368" />
            <line x2="432" y1="-992" y2="-992" x1="368" />
            <line x2="432" y1="-928" y2="-928" x1="368" />
            <line x2="432" y1="-864" y2="-864" x1="368" />
            <line x2="432" y1="-800" y2="-800" x1="368" />
            <line x2="432" y1="-736" y2="-736" x1="368" />
            <line x2="432" y1="-672" y2="-672" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <rect width="64" x="368" y="-492" height="24" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <rect width="64" x="368" y="-428" height="24" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <rect width="64" x="368" y="-364" height="24" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <rect width="304" x="64" y="-1728" height="2496" />
        </blockdef>
        <blockdef name="CBC_Data_Path">
            <timestamp>2023-1-17T11:18:44</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-220" height="24" />
            <line x2="384" y1="-208" y2="-208" x1="320" />
            <rect width="64" x="320" y="-140" height="24" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <block symbolname="DLX_Data_Path" name="XLXI_1">
            <blockpin signalname="C_ce" name="C_ce" />
            <blockpin signalname="A_ce" name="A_ce" />
            <blockpin signalname="B_ce" name="B_ce" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="DINT_sel" name="DINT_sel" />
            <blockpin signalname="PC_ce" name="PC_ce" />
            <blockpin signalname="reset" name="PC_resert" />
            <blockpin signalname="MAR_ce" name="MAR_ce" />
            <blockpin signalname="A_sel" name="MMU_sel" />
            <blockpin signalname="MDR_sel" name="MDR_sel" />
            <blockpin signalname="MDR_ce" name="MDR_ce" />
            <blockpin signalname="DI(31:0)" name="DI(31:0)" />
            <blockpin signalname="shift_en" name="shift" />
            <blockpin signalname="test" name="test" />
            <blockpin signalname="add" name="add" />
            <blockpin signalname="Dadr(4:0)" name="Dadr(4:0)" />
            <blockpin signalname="gpr_we" name="GPR_we" />
            <blockpin signalname="IR_ce" name="IR_ce" />
            <blockpin signalname="itype" name="itype" />
            <blockpin signalname="jlink" name="jlink" />
            <blockpin signalname="S2_sel(1:0)" name="S2_sel(1:0)" />
            <blockpin signalname="S1_sel(1:0)" name="S1_sel(1:0)" />
            <blockpin signalname="DLX_Aout(31:0)" name="AO(31:0)" />
            <blockpin signalname="DLX_Dout(31:0)" name="DO(31:0)" />
            <blockpin signalname="D_gpr(31:0)" name="D_gpr(31:0)" />
            <blockpin signalname="AEQZ" name="AEQZ" />
            <blockpin signalname="ALUF(2:0)" name="ALUF(2:0)" />
            <blockpin signalname="IR(31:0)" name="IR(31:0)" />
        </block>
        <block symbolname="DLX_control" name="XLXI_12">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="ack_n" name="ack_n" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="IR(31:26)" name="opcode(5:0)" />
            <blockpin signalname="AEQZ" name="AEQZ" />
            <blockpin signalname="IR(15:0)" name="imm(15:0)" />
            <blockpin signalname="IN_CALC_AES" name="IN_CALC_CBC" />
            <blockpin signalname="mac_state(1:0)" name="mac_state(1:0)" />
            <blockpin signalname="in_init" name="in_init" />
            <blockpin signalname="gpr_we" name="gpr_we" />
            <blockpin signalname="IR_ce" name="IR_ce" />
            <blockpin signalname="PC_ce" name="PC_ce" />
            <blockpin signalname="MAR_ce" name="MAR_ce" />
            <blockpin signalname="MDR_ce" name="MDR_ce" />
            <blockpin signalname="A_sel" name="A_sel" />
            <blockpin signalname="shift_en" name="shift_en" />
            <blockpin signalname="MDR_sel" name="MDR_sel" />
            <blockpin signalname="DINT_sel" name="DINT_sel" />
            <blockpin signalname="add" name="add" />
            <blockpin signalname="jlink" name="jlink" />
            <blockpin signalname="itype" name="itype" />
            <blockpin signalname="test" name="test" />
            <blockpin signalname="A_ce" name="A_ce" />
            <blockpin signalname="B_ce" name="B_ce" />
            <blockpin signalname="C_ce" name="C_ce" />
            <blockpin signalname="DLX_state(4:0)" name="DLX_state(4:0)" />
            <blockpin signalname="S1_sel(1:0)" name="s1_sel(1:0)" />
            <blockpin signalname="S2_sel(1:0)" name="s2_sel(1:0)" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="as_n" name="as_n" />
            <blockpin signalname="wr_n" name="wr_n" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="AES_sel" name="AES_sel" />
            <blockpin signalname="Dout_sel" name="Dout_sel" />
            <blockpin signalname="Aout_sel" name="Aout_sel" />
            <blockpin signalname="AES_kick" name="AES_kick" />
            <blockpin signalname="CBC_state(6:0)" name="CBC_state(6:0)" />
            <blockpin signalname="mr" name="mr" />
            <blockpin signalname="mw" name="mw" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_11">
            <blockpin signalname="Aout_sel" name="sel" />
            <blockpin signalname="DLX_Aout(31:0)" name="A(31:0)" />
            <blockpin signalname="CBC_Aout(31:0)" name="B(31:0)" />
            <blockpin signalname="AO(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_10">
            <blockpin signalname="Dout_sel" name="sel" />
            <blockpin signalname="DLX_Dout(31:0)" name="A(31:0)" />
            <blockpin signalname="CBC_Dout(31:0)" name="B(31:0)" />
            <blockpin signalname="DO(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="CBC_Data_Path" name="XLXI_27">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="DI(31:0)" name="Din(31:0)" />
            <blockpin signalname="CBC_state(6:0)" name="state(6:0)" />
            <blockpin signalname="AES_kick" name="AES_kick" />
            <blockpin signalname="AES_sel" name="AES_sel" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="IN_CALC_AES" name="IN_CALC_AES" />
            <blockpin signalname="CBC_Dout(31:0)" name="Dout(31:0)" />
            <blockpin signalname="CBC_Aout(31:0)" name="Aout(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="528" y1="304" y2="304" x1="336" />
        </branch>
        <branch name="DI(31:0)">
            <wire x2="528" y1="592" y2="592" x1="336" />
        </branch>
        <branch name="step_en">
            <wire x2="528" y1="352" y2="352" x1="336" />
        </branch>
        <branch name="reset">
            <wire x2="528" y1="480" y2="480" x1="336" />
        </branch>
        <branch name="ack_n">
            <wire x2="528" y1="416" y2="416" x1="336" />
        </branch>
        <branch name="Dadr(4:0)">
            <wire x2="528" y1="528" y2="528" x1="336" />
        </branch>
        <iomarker fontsize="28" x="336" y="304" name="clk" orien="R180" />
        <iomarker fontsize="28" x="336" y="352" name="step_en" orien="R180" />
        <iomarker fontsize="28" x="336" y="416" name="ack_n" orien="R180" />
        <iomarker fontsize="28" x="336" y="480" name="reset" orien="R180" />
        <iomarker fontsize="28" x="336" y="528" name="Dadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="336" y="592" name="DI(31:0)" orien="R180" />
        <branch name="IR_ce">
            <wire x2="3280" y1="880" y2="880" x1="3120" />
        </branch>
        <branch name="MAR_ce">
            <wire x2="3280" y1="1040" y2="1040" x1="3120" />
        </branch>
        <branch name="MDR_ce">
            <wire x2="3280" y1="1120" y2="1120" x1="3120" />
        </branch>
        <branch name="A_sel">
            <wire x2="3280" y1="1200" y2="1200" x1="3120" />
        </branch>
        <branch name="shift_en">
            <wire x2="3280" y1="1280" y2="1280" x1="3120" />
        </branch>
        <branch name="MDR_sel">
            <wire x2="3280" y1="1360" y2="1360" x1="3120" />
        </branch>
        <branch name="DINT_sel">
            <wire x2="3280" y1="1440" y2="1440" x1="3120" />
        </branch>
        <branch name="add">
            <wire x2="3280" y1="1520" y2="1520" x1="3120" />
        </branch>
        <branch name="jlink">
            <wire x2="3280" y1="1600" y2="1600" x1="3120" />
        </branch>
        <branch name="itype">
            <wire x2="3280" y1="1680" y2="1680" x1="3120" />
        </branch>
        <branch name="test">
            <wire x2="3280" y1="1760" y2="1760" x1="3120" />
        </branch>
        <branch name="A_ce">
            <wire x2="3280" y1="1840" y2="1840" x1="3120" />
        </branch>
        <branch name="B_ce">
            <wire x2="3280" y1="1920" y2="1920" x1="3120" />
        </branch>
        <branch name="C_ce">
            <wire x2="3280" y1="2000" y2="2000" x1="3120" />
        </branch>
        <branch name="DLX_state(4:0)">
            <wire x2="3280" y1="2080" y2="2080" x1="3120" />
        </branch>
        <branch name="S1_sel(1:0)">
            <wire x2="3280" y1="2160" y2="2160" x1="3120" />
        </branch>
        <branch name="S2_sel(1:0)">
            <wire x2="3280" y1="2240" y2="2240" x1="3120" />
        </branch>
        <branch name="mr">
            <wire x2="3280" y1="2320" y2="2320" x1="3120" />
        </branch>
        <branch name="as_n">
            <wire x2="3280" y1="2400" y2="2400" x1="3120" />
        </branch>
        <branch name="mac_state(1:0)">
            <wire x2="3280" y1="560" y2="560" x1="3120" />
        </branch>
        <branch name="mw">
            <wire x2="3280" y1="640" y2="640" x1="3120" />
        </branch>
        <branch name="in_init">
            <wire x2="3280" y1="720" y2="720" x1="3120" />
        </branch>
        <branch name="gpr_we">
            <wire x2="3280" y1="800" y2="800" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3280" y="560" name="mac_state(1:0)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="640" name="mw" orien="R0" />
        <iomarker fontsize="28" x="3280" y="720" name="in_init" orien="R0" />
        <iomarker fontsize="28" x="3280" y="800" name="gpr_we" orien="R0" />
        <iomarker fontsize="28" x="3280" y="880" name="IR_ce" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1040" name="MAR_ce" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1120" name="MDR_ce" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1200" name="A_sel" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1280" name="shift_en" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1360" name="MDR_sel" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1440" name="DINT_sel" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1520" name="add" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1600" name="jlink" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1680" name="itype" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1760" name="test" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1840" name="A_ce" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1920" name="B_ce" orien="R0" />
        <iomarker fontsize="28" x="3280" y="2000" name="C_ce" orien="R0" />
        <iomarker fontsize="28" x="3280" y="2080" name="DLX_state(4:0)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="2160" name="S1_sel(1:0)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="2240" name="S2_sel(1:0)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="2320" name="mr" orien="R0" />
        <iomarker fontsize="28" x="3280" y="2400" name="as_n" orien="R0" />
        <branch name="D_gpr(31:0)">
            <wire x2="3280" y1="240" y2="240" x1="3120" />
        </branch>
        <branch name="ALUF(2:0)">
            <wire x2="3280" y1="320" y2="320" x1="3120" />
        </branch>
        <branch name="IR(31:0)">
            <wire x2="3280" y1="400" y2="400" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3280" y="240" name="D_gpr(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="320" name="ALUF(2:0)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="400" name="IR(31:0)" orien="R0" />
        <branch name="wr_n">
            <wire x2="3280" y1="2480" y2="2480" x1="3120" />
        </branch>
        <branch name="stop_n">
            <wire x2="3280" y1="2560" y2="2560" x1="3120" />
        </branch>
        <branch name="busy">
            <wire x2="3280" y1="2640" y2="2640" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3280" y="2480" name="wr_n" orien="R0" />
        <iomarker fontsize="28" x="3280" y="2560" name="stop_n" orien="R0" />
        <iomarker fontsize="28" x="3280" y="2640" name="busy" orien="R0" />
        <branch name="AO(31:0)">
            <wire x2="3280" y1="80" y2="80" x1="3120" />
        </branch>
        <branch name="DO(31:0)">
            <wire x2="3280" y1="160" y2="160" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3280" y="80" name="AO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="160" name="DO(31:0)" orien="R0" />
        <branch name="AEQZ">
            <wire x2="3280" y1="480" y2="480" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3280" y="480" name="AEQZ" orien="R0" />
        <branch name="PC_ce">
            <wire x2="3280" y1="960" y2="960" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3280" y="960" name="PC_ce" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="224" type="branch" />
            <wire x2="896" y1="224" y2="224" x1="880" />
            <wire x2="960" y1="224" y2="224" x1="896" />
        </branch>
        <branch name="mac_state(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="224" type="branch" />
            <wire x2="1488" y1="224" y2="224" x1="1392" />
            <wire x2="1504" y1="224" y2="224" x1="1488" />
        </branch>
        <branch name="in_init">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="352" type="branch" />
            <wire x2="1488" y1="352" y2="352" x1="1392" />
            <wire x2="1504" y1="352" y2="352" x1="1488" />
        </branch>
        <branch name="gpr_we">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="416" type="branch" />
            <wire x2="1504" y1="416" y2="416" x1="1392" />
            <wire x2="1520" y1="416" y2="416" x1="1504" />
        </branch>
        <branch name="IR_ce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="480" type="branch" />
            <wire x2="1488" y1="480" y2="480" x1="1392" />
            <wire x2="1504" y1="480" y2="480" x1="1488" />
        </branch>
        <branch name="PC_ce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="544" type="branch" />
            <wire x2="1472" y1="544" y2="544" x1="1392" />
            <wire x2="1488" y1="544" y2="544" x1="1472" />
        </branch>
        <branch name="MAR_ce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="608" type="branch" />
            <wire x2="1488" y1="608" y2="608" x1="1392" />
            <wire x2="1504" y1="608" y2="608" x1="1488" />
        </branch>
        <branch name="MDR_ce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="672" type="branch" />
            <wire x2="1488" y1="672" y2="672" x1="1392" />
            <wire x2="1504" y1="672" y2="672" x1="1488" />
        </branch>
        <branch name="A_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="736" type="branch" />
            <wire x2="1504" y1="736" y2="736" x1="1392" />
            <wire x2="1520" y1="736" y2="736" x1="1504" />
        </branch>
        <branch name="shift_en">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="800" type="branch" />
            <wire x2="1488" y1="800" y2="800" x1="1392" />
            <wire x2="1504" y1="800" y2="800" x1="1488" />
        </branch>
        <branch name="MDR_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="864" type="branch" />
            <wire x2="1488" y1="864" y2="864" x1="1392" />
            <wire x2="1504" y1="864" y2="864" x1="1488" />
        </branch>
        <branch name="DINT_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="928" type="branch" />
            <wire x2="1488" y1="928" y2="928" x1="1392" />
            <wire x2="1504" y1="928" y2="928" x1="1488" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="992" type="branch" />
            <wire x2="1488" y1="992" y2="992" x1="1392" />
            <wire x2="1504" y1="992" y2="992" x1="1488" />
        </branch>
        <branch name="jlink">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1056" type="branch" />
            <wire x2="1520" y1="1056" y2="1056" x1="1392" />
            <wire x2="1536" y1="1056" y2="1056" x1="1520" />
        </branch>
        <branch name="itype">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1120" type="branch" />
            <wire x2="1504" y1="1120" y2="1120" x1="1392" />
            <wire x2="1520" y1="1120" y2="1120" x1="1504" />
        </branch>
        <branch name="test">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1184" type="branch" />
            <wire x2="1488" y1="1184" y2="1184" x1="1392" />
            <wire x2="1504" y1="1184" y2="1184" x1="1488" />
        </branch>
        <branch name="A_ce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1248" type="branch" />
            <wire x2="1488" y1="1248" y2="1248" x1="1392" />
            <wire x2="1504" y1="1248" y2="1248" x1="1488" />
        </branch>
        <branch name="B_ce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1312" type="branch" />
            <wire x2="1504" y1="1312" y2="1312" x1="1392" />
            <wire x2="1520" y1="1312" y2="1312" x1="1504" />
        </branch>
        <branch name="C_ce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1376" type="branch" />
            <wire x2="1504" y1="1376" y2="1376" x1="1392" />
            <wire x2="1520" y1="1376" y2="1376" x1="1504" />
        </branch>
        <branch name="DLX_state(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1440" type="branch" />
            <wire x2="1504" y1="1440" y2="1440" x1="1392" />
            <wire x2="1520" y1="1440" y2="1440" x1="1504" />
        </branch>
        <branch name="S1_sel(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="1504" type="branch" />
            <wire x2="1536" y1="1504" y2="1504" x1="1392" />
            <wire x2="1552" y1="1504" y2="1504" x1="1536" />
        </branch>
        <branch name="S2_sel(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1568" type="branch" />
            <wire x2="1520" y1="1568" y2="1568" x1="1392" />
            <wire x2="1536" y1="1568" y2="1568" x1="1520" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1632" type="branch" />
            <wire x2="1504" y1="1632" y2="1632" x1="1392" />
            <wire x2="1520" y1="1632" y2="1632" x1="1504" />
        </branch>
        <branch name="as_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1760" type="branch" />
            <wire x2="1520" y1="1760" y2="1760" x1="1392" />
            <wire x2="1536" y1="1760" y2="1760" x1="1520" />
        </branch>
        <branch name="wr_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1824" type="branch" />
            <wire x2="1504" y1="1824" y2="1824" x1="1392" />
            <wire x2="1520" y1="1824" y2="1824" x1="1504" />
        </branch>
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1888" type="branch" />
            <wire x2="1504" y1="1888" y2="1888" x1="1392" />
            <wire x2="1520" y1="1888" y2="1888" x1="1504" />
        </branch>
        <instance x="2288" y="1600" name="XLXI_1" orien="R0">
        </instance>
        <branch name="S1_sel(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1568" type="branch" />
            <wire x2="2288" y1="1568" y2="1568" x1="2192" />
        </branch>
        <branch name="S2_sel(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1504" type="branch" />
            <wire x2="2288" y1="1504" y2="1504" x1="2208" />
        </branch>
        <branch name="jlink">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1440" type="branch" />
            <wire x2="2288" y1="1440" y2="1440" x1="2192" />
        </branch>
        <branch name="itype">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="1376" type="branch" />
            <wire x2="2288" y1="1376" y2="1376" x1="2224" />
        </branch>
        <branch name="IR_ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1312" type="branch" />
            <wire x2="2288" y1="1312" y2="1312" x1="2192" />
        </branch>
        <branch name="gpr_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1248" type="branch" />
            <wire x2="2288" y1="1248" y2="1248" x1="2208" />
        </branch>
        <branch name="Dadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1184" type="branch" />
            <wire x2="2288" y1="1184" y2="1184" x1="2208" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1120" type="branch" />
            <wire x2="2288" y1="1120" y2="1120" x1="2160" />
        </branch>
        <branch name="test">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1056" type="branch" />
            <wire x2="2288" y1="1056" y2="1056" x1="2192" />
        </branch>
        <branch name="shift_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="992" type="branch" />
            <wire x2="2288" y1="992" y2="992" x1="2176" />
        </branch>
        <branch name="DI(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="928" type="branch" />
            <wire x2="2288" y1="928" y2="928" x1="2176" />
        </branch>
        <branch name="MDR_ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="864" type="branch" />
            <wire x2="2288" y1="864" y2="864" x1="2192" />
        </branch>
        <branch name="MDR_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="800" type="branch" />
            <wire x2="2288" y1="800" y2="800" x1="2160" />
        </branch>
        <branch name="A_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="736" type="branch" />
            <wire x2="2288" y1="736" y2="736" x1="2192" />
        </branch>
        <branch name="MAR_ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="672" type="branch" />
            <wire x2="2288" y1="672" y2="672" x1="2144" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="608" type="branch" />
            <wire x2="2288" y1="608" y2="608" x1="2208" />
        </branch>
        <branch name="PC_ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="544" type="branch" />
            <wire x2="2288" y1="544" y2="544" x1="2144" />
        </branch>
        <branch name="DINT_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="480" type="branch" />
            <wire x2="2288" y1="480" y2="480" x1="2240" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="416" type="branch" />
            <wire x2="2288" y1="416" y2="416" x1="2176" />
        </branch>
        <branch name="B_ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="352" type="branch" />
            <wire x2="2288" y1="352" y2="352" x1="2224" />
        </branch>
        <branch name="A_ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="288" type="branch" />
            <wire x2="2288" y1="288" y2="288" x1="2176" />
        </branch>
        <branch name="C_ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="224" type="branch" />
            <wire x2="2288" y1="224" y2="224" x1="2224" />
        </branch>
        <branch name="D_gpr(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="736" type="branch" />
            <wire x2="2752" y1="736" y2="736" x1="2672" />
        </branch>
        <branch name="AEQZ">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="992" type="branch" />
            <wire x2="2736" y1="992" y2="992" x1="2672" />
        </branch>
        <branch name="ALUF(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="1248" type="branch" />
            <wire x2="2736" y1="1248" y2="1248" x1="2672" />
        </branch>
        <branch name="IR(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="1504" type="branch" />
            <wire x2="2752" y1="1504" y2="1504" x1="2672" />
        </branch>
        <branch name="AES_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="2144" type="branch" />
            <wire x2="1472" y1="2144" y2="2144" x1="1392" />
            <wire x2="1488" y1="2144" y2="2144" x1="1472" />
        </branch>
        <branch name="Dout_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="2208" type="branch" />
            <wire x2="1472" y1="2208" y2="2208" x1="1392" />
            <wire x2="1488" y1="2208" y2="2208" x1="1472" />
        </branch>
        <branch name="Aout_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="2272" type="branch" />
            <wire x2="1472" y1="2272" y2="2272" x1="1392" />
            <wire x2="1488" y1="2272" y2="2272" x1="1472" />
        </branch>
        <branch name="AES_kick">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="2336" type="branch" />
            <wire x2="1488" y1="2336" y2="2336" x1="1392" />
            <wire x2="1504" y1="2336" y2="2336" x1="1488" />
        </branch>
        <branch name="CBC_state(6:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="2400" type="branch" />
            <wire x2="1488" y1="2400" y2="2400" x1="1392" />
            <wire x2="1504" y1="2400" y2="2400" x1="1488" />
        </branch>
        <branch name="IN_CALC_AES">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="1712" type="branch" />
            <wire x2="2688" y1="1712" y2="1712" x1="2672" />
            <wire x2="2768" y1="1712" y2="1712" x1="2688" />
        </branch>
        <branch name="CBC_Dout(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="1792" type="branch" />
            <wire x2="2688" y1="1792" y2="1792" x1="2672" />
            <wire x2="2768" y1="1792" y2="1792" x1="2688" />
        </branch>
        <branch name="CBC_Aout(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="1872" type="branch" />
            <wire x2="2688" y1="1872" y2="1872" x1="2672" />
            <wire x2="2768" y1="1872" y2="1872" x1="2688" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1712" type="branch" />
            <wire x2="2288" y1="1712" y2="1712" x1="2208" />
        </branch>
        <branch name="DI(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1776" type="branch" />
            <wire x2="2288" y1="1776" y2="1776" x1="2208" />
        </branch>
        <branch name="CBC_state(6:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1840" type="branch" />
            <wire x2="2288" y1="1840" y2="1840" x1="2192" />
        </branch>
        <branch name="AES_kick">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1904" type="branch" />
            <wire x2="2288" y1="1904" y2="1904" x1="2192" />
        </branch>
        <branch name="DLX_Aout(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2784" y="224" type="branch" />
            <wire x2="2784" y1="224" y2="224" x1="2672" />
        </branch>
        <branch name="DLX_Dout(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2784" y="480" type="branch" />
            <wire x2="2784" y1="480" y2="480" x1="2672" />
        </branch>
        <branch name="IN_CALC_AES">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="848" y="2016" type="branch" />
            <wire x2="864" y1="2016" y2="2016" x1="848" />
            <wire x2="960" y1="2016" y2="2016" x1="864" />
        </branch>
        <branch name="IR(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1856" type="branch" />
            <wire x2="800" y1="1856" y2="1856" x1="784" />
            <wire x2="960" y1="1856" y2="1856" x1="800" />
        </branch>
        <branch name="AEQZ">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="1584" type="branch" />
            <wire x2="832" y1="1584" y2="1584" x1="816" />
            <wire x2="960" y1="1584" y2="1584" x1="832" />
        </branch>
        <branch name="IR(31:26)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1312" type="branch" />
            <wire x2="816" y1="1312" y2="1312" x1="800" />
            <wire x2="960" y1="1312" y2="1312" x1="816" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1040" type="branch" />
            <wire x2="816" y1="1040" y2="1040" x1="800" />
            <wire x2="960" y1="1040" y2="1040" x1="816" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="768" type="branch" />
            <wire x2="848" y1="768" y2="768" x1="832" />
            <wire x2="960" y1="768" y2="768" x1="848" />
        </branch>
        <branch name="ack_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="496" type="branch" />
            <wire x2="880" y1="496" y2="496" x1="864" />
            <wire x2="960" y1="496" y2="496" x1="880" />
        </branch>
        <instance x="960" y="1920" name="XLXI_12" orien="R0">
        </instance>
        <branch name="mr">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="2528" type="branch" />
            <wire x2="1520" y1="2528" y2="2528" x1="1392" />
            <wire x2="1536" y1="2528" y2="2528" x1="1520" />
        </branch>
        <branch name="mw">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="2656" type="branch" />
            <wire x2="1488" y1="2656" y2="2656" x1="1392" />
            <wire x2="1504" y1="2656" y2="2656" x1="1488" />
        </branch>
        <branch name="AES_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1968" type="branch" />
            <wire x2="2288" y1="1968" y2="1968" x1="2192" />
        </branch>
        <instance x="2272" y="2656" name="XLXI_11" orien="R0">
        </instance>
        <branch name="AO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2784" y="2496" type="branch" />
            <wire x2="2784" y1="2496" y2="2496" x1="2656" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2784" y="2224" type="branch" />
            <wire x2="2784" y1="2224" y2="2224" x1="2656" />
        </branch>
        <branch name="CBC_Aout(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="2624" type="branch" />
            <wire x2="2272" y1="2624" y2="2624" x1="2192" />
        </branch>
        <branch name="DLX_Aout(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="2560" type="branch" />
            <wire x2="2272" y1="2560" y2="2560" x1="2192" />
        </branch>
        <branch name="CBC_Dout(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="2352" type="branch" />
            <wire x2="2272" y1="2352" y2="2352" x1="2192" />
        </branch>
        <branch name="DLX_Dout(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="2288" type="branch" />
            <wire x2="2272" y1="2288" y2="2288" x1="2192" />
        </branch>
        <branch name="Aout_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="2496" type="branch" />
            <wire x2="2272" y1="2496" y2="2496" x1="2224" />
        </branch>
        <branch name="Dout_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="2224" type="branch" />
            <wire x2="2272" y1="2224" y2="2224" x1="2208" />
        </branch>
        <instance x="2272" y="2384" name="XLXI_10" orien="R0">
        </instance>
        <instance x="2288" y="2000" name="XLXI_27" orien="R0">
        </instance>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="2032" type="branch" />
            <wire x2="2288" y1="2032" y2="2032" x1="2160" />
        </branch>
    </sheet>
</drawing>