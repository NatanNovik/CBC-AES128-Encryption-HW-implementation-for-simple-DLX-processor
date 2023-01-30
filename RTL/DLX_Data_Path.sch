<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="C_ce" />
        <signal name="XLXN_10(31:0)" />
        <signal name="XLXN_11(31:0)" />
        <signal name="XLXN_12(31:0)" />
        <signal name="A_ce" />
        <signal name="B_ce" />
        <signal name="clk" />
        <signal name="XLXN_33(31:0)" />
        <signal name="XLXN_34(31:0)" />
        <signal name="DINT_sel" />
        <signal name="ALU_O(31:0)" />
        <signal name="SHIFT_O(31:0)" />
        <signal name="DINT(31:0)" />
        <signal name="PC_ce" />
        <signal name="PC(31:0)" />
        <signal name="PC_resert" />
        <signal name="MAR_ce" />
        <signal name="MAR_O(31:0)" />
        <signal name="MMU_sel" />
        <signal name="AO(31:0)" />
        <signal name="simm(31:0)" />
        <signal name="const_0(31:0)" />
        <signal name="const_1(31:0)" />
        <signal name="MDR_sel" />
        <signal name="XLXN_66(31:0)" />
        <signal name="MDR_ce" />
        <signal name="DO(31:0)" />
        <signal name="DI(31:0)" />
        <signal name="shift" />
        <signal name="right" />
        <signal name="test" />
        <signal name="add" />
        <signal name="Dadr(4:0)" />
        <signal name="GPR_we" />
        <signal name="D_gpr(31:0)" />
        <signal name="AEQZ" />
        <signal name="A(31:0)" />
        <signal name="B(31:0)" />
        <signal name="ALUF(2:0)" />
        <signal name="opcode(5:0)" />
        <signal name="rd(4:0)" />
        <signal name="rs2(4:0)" />
        <signal name="rs1(4:0)" />
        <signal name="IR_ce" />
        <signal name="itype" />
        <signal name="jlink" />
        <signal name="S2_sel(1:0)" />
        <signal name="S1_sel(1:0)" />
        <signal name="IR(31:0)" />
        <signal name="IR(1)" />
        <signal name="XLXN_166(31:0)" />
        <port polarity="Input" name="C_ce" />
        <port polarity="Input" name="A_ce" />
        <port polarity="Input" name="B_ce" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="DINT_sel" />
        <port polarity="Input" name="PC_ce" />
        <port polarity="Input" name="PC_resert" />
        <port polarity="Input" name="MAR_ce" />
        <port polarity="Input" name="MMU_sel" />
        <port polarity="Output" name="AO(31:0)" />
        <port polarity="Input" name="MDR_sel" />
        <port polarity="Input" name="MDR_ce" />
        <port polarity="Output" name="DO(31:0)" />
        <port polarity="Input" name="DI(31:0)" />
        <port polarity="Input" name="shift" />
        <port polarity="Input" name="test" />
        <port polarity="Input" name="add" />
        <port polarity="Input" name="Dadr(4:0)" />
        <port polarity="Input" name="GPR_we" />
        <port polarity="Output" name="D_gpr(31:0)" />
        <port polarity="Output" name="AEQZ" />
        <port polarity="Output" name="ALUF(2:0)" />
        <port polarity="Input" name="IR_ce" />
        <port polarity="Input" name="itype" />
        <port polarity="Input" name="jlink" />
        <port polarity="Input" name="S2_sel(1:0)" />
        <port polarity="Input" name="S1_sel(1:0)" />
        <port polarity="Output" name="IR(31:0)" />
        <blockdef name="ALU_env">
            <timestamp>2022-1-3T9:40:14</timestamp>
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-300" height="24" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
        </blockdef>
        <blockdef name="MUX4_32bit">
            <timestamp>2015-7-12T12:4:22</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="SHIFT_Env">
            <timestamp>2022-1-10T9:10:14</timestamp>
            <rect width="320" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
        </blockdef>
        <blockdef name="GPR_environment">
            <timestamp>2021-11-28T16:13:50</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="REG32CE">
            <timestamp>2015-7-12T8:30:6</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <blockdef name="REG32RST">
            <timestamp>2015-7-12T8:34:40</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="IR_env_DLX">
            <timestamp>2022-1-27T7:42:56</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="MMU">
            <timestamp>2022-1-17T16:26:29</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="ALU_env" name="XLXI_1">
            <blockpin signalname="XLXN_33(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_34(31:0)" name="B(31:0)" />
            <blockpin signalname="test" name="test" />
            <blockpin signalname="add" name="add" />
            <blockpin signalname="ALUF(2:0)" name="ALUF(2:0)" />
            <blockpin signalname="ALU_O(31:0)" name="ALU_OUT(31:0)" />
        </block>
        <block symbolname="MUX4_32bit" name="XLXI_2">
            <blockpin signalname="B(31:0)" name="A0(31:0)" />
            <blockpin signalname="simm(31:0)" name="A1(31:0)" />
            <blockpin signalname="const_0(31:0)" name="A2(31:0)" />
            <blockpin signalname="const_1(31:0)" name="A3(31:0)" />
            <blockpin signalname="S2_sel(1:0)" name="sel(1:0)" />
            <blockpin signalname="XLXN_34(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX4_32bit" name="XLXI_3">
            <blockpin signalname="PC(31:0)" name="A0(31:0)" />
            <blockpin signalname="A(31:0)" name="A1(31:0)" />
            <blockpin signalname="B(31:0)" name="A2(31:0)" />
            <blockpin signalname="DO(31:0)" name="A3(31:0)" />
            <blockpin signalname="S1_sel(1:0)" name="sel(1:0)" />
            <blockpin signalname="XLXN_33(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="SHIFT_Env" name="XLXI_4">
            <blockpin signalname="shift" name="shift" />
            <blockpin signalname="right" name="right" />
            <blockpin signalname="XLXN_33(31:0)" name="Data_In(31:0)" />
            <blockpin signalname="SHIFT_O(31:0)" name="Data_Out(31:0)" />
        </block>
        <block symbolname="GPR_environment" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rs1(4:0)" name="Aadr(4:0)" />
            <blockpin signalname="rs2(4:0)" name="Badr(4:0)" />
            <blockpin signalname="rd(4:0)" name="Cadr(4:0)" />
            <blockpin signalname="Dadr(4:0)" name="Dadr(4:0)" />
            <blockpin signalname="XLXN_10(31:0)" name="C(31:0)" />
            <blockpin signalname="GPR_we" name="GPR_we" />
            <blockpin signalname="XLXN_11(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_12(31:0)" name="B(31:0)" />
            <blockpin signalname="D_gpr(31:0)" name="D(31:0)" />
            <blockpin signalname="AEQZ" name="AEQZ1" />
        </block>
        <block symbolname="REG32CE" name="XLXI_7">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="B_ce" name="CE" />
            <blockpin signalname="XLXN_12(31:0)" name="DIN(31:0)" />
            <blockpin signalname="B(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="REG32CE" name="XLXI_8">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="A_ce" name="CE" />
            <blockpin signalname="XLXN_11(31:0)" name="DIN(31:0)" />
            <blockpin signalname="A(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="REG32CE" name="XLXI_6">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="C_ce" name="CE" />
            <blockpin signalname="DINT(31:0)" name="DIN(31:0)" />
            <blockpin signalname="XLXN_10(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_11">
            <blockpin signalname="DINT_sel" name="sel" />
            <blockpin signalname="ALU_O(31:0)" name="A(31:0)" />
            <blockpin signalname="SHIFT_O(31:0)" name="B(31:0)" />
            <blockpin signalname="DINT(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="REG32RST" name="XLXI_13">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="PC_ce" name="CE" />
            <blockpin signalname="PC_resert" name="RST" />
            <blockpin signalname="DINT(31:0)" name="DIN(31:0)" />
            <blockpin signalname="PC(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="REG32CE" name="XLXI_14">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="MAR_ce" name="CE" />
            <blockpin signalname="DINT(31:0)" name="DIN(31:0)" />
            <blockpin signalname="MAR_O(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_15">
            <blockpin signalname="MMU_sel" name="sel" />
            <blockpin signalname="PC(31:0)" name="A(31:0)" />
            <blockpin signalname="MAR_O(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_166(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="IR_env_DLX" name="XLXI_16">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="IR_ce" name="IR_ce" />
            <blockpin signalname="itype" name="itype" />
            <blockpin signalname="jlink" name="jlink" />
            <blockpin signalname="DI(31:0)" name="DI(31:0)" />
            <blockpin signalname="IR(31:0)" name="IR(31:0)" />
            <blockpin signalname="rs1(4:0)" name="rs1(4:0)" />
            <blockpin signalname="rs2(4:0)" name="rs2(4:0)" />
            <blockpin signalname="rd(4:0)" name="rd(4:0)" />
            <blockpin signalname="opcode(5:0)" name="opcode(5:0)" />
            <blockpin signalname="simm(31:0)" name="simm(31:0)" />
            <blockpin signalname="ALUF(2:0)" name="ALUF(2:0)" />
        </block>
        <block symbolname="constant" name="XLXI_17">
            <attr value="00000000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="const_0(31:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_18">
            <attr value="00000001" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="const_1(31:0)" name="O" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_19">
            <blockpin signalname="MDR_sel" name="sel" />
            <blockpin signalname="DINT(31:0)" name="A(31:0)" />
            <blockpin signalname="DI(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_66(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="REG32CE" name="XLXI_20">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="MDR_ce" name="CE" />
            <blockpin signalname="XLXN_66(31:0)" name="DIN(31:0)" />
            <blockpin signalname="DO(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="MMU" name="XLXI_21">
            <blockpin signalname="XLXN_166(31:0)" name="AO(31:0)" />
            <blockpin signalname="AO(31:0)" name="Dout(31:0)" />
        </block>
        <block symbolname="buf" name="XLXI_22">
            <blockpin signalname="IR(1)" name="I" />
            <blockpin signalname="right" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1280" y="528" name="XLXI_5" orien="R0">
        </instance>
        <instance x="656" y="592" name="XLXI_6" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="432" type="branch" />
            <wire x2="656" y1="432" y2="432" x1="544" />
        </branch>
        <branch name="C_ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="496" type="branch" />
            <wire x2="656" y1="496" y2="496" x1="560" />
        </branch>
        <branch name="DINT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="560" type="branch" />
            <wire x2="656" y1="560" y2="560" x1="544" />
        </branch>
        <branch name="XLXN_10(31:0)">
            <wire x2="1280" y1="432" y2="432" x1="1040" />
        </branch>
        <instance x="2064" y="272" name="XLXI_8" orien="R0">
        </instance>
        <instance x="2064" y="576" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_11(31:0)">
            <wire x2="1856" y1="112" y2="112" x1="1664" />
            <wire x2="1856" y1="112" y2="240" x1="1856" />
            <wire x2="2064" y1="240" y2="240" x1="1856" />
        </branch>
        <branch name="XLXN_12(31:0)">
            <wire x2="1840" y1="240" y2="240" x1="1664" />
            <wire x2="1840" y1="240" y2="544" x1="1840" />
            <wire x2="2064" y1="544" y2="544" x1="1840" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="112" type="branch" />
            <wire x2="2064" y1="112" y2="112" x1="1984" />
        </branch>
        <branch name="A_ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="176" type="branch" />
            <wire x2="2064" y1="176" y2="176" x1="1984" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="416" type="branch" />
            <wire x2="2064" y1="416" y2="416" x1="1968" />
        </branch>
        <branch name="B_ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="480" type="branch" />
            <wire x2="2064" y1="480" y2="480" x1="1968" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="112" type="branch" />
            <wire x2="1280" y1="112" y2="112" x1="1168" />
        </branch>
        <instance x="512" y="1104" name="XLXI_3" orien="R0">
        </instance>
        <instance x="512" y="1552" name="XLXI_2" orien="R0">
        </instance>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="368" y="816" type="branch" />
            <wire x2="512" y1="816" y2="816" x1="368" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1008" type="branch" />
            <wire x2="512" y1="1008" y2="1008" x1="368" />
        </branch>
        <branch name="S1_sel(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1072" type="branch" />
            <wire x2="512" y1="1072" y2="1072" x1="368" />
        </branch>
        <branch name="simm(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="384" y="1328" type="branch" />
            <wire x2="512" y1="1328" y2="1328" x1="384" />
        </branch>
        <branch name="S2_sel(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="384" y="1520" type="branch" />
            <wire x2="512" y1="1520" y2="1520" x1="384" />
        </branch>
        <instance x="1152" y="992" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_34(31:0)">
            <wire x2="1184" y1="1264" y2="1264" x1="896" />
        </branch>
        <instance x="1184" y="1488" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_33(31:0)">
            <wire x2="1024" y1="816" y2="816" x1="896" />
            <wire x2="1024" y1="816" y2="960" x1="1024" />
            <wire x2="1152" y1="960" y2="960" x1="1024" />
            <wire x2="1024" y1="960" y2="1200" x1="1024" />
            <wire x2="1184" y1="1200" y2="1200" x1="1024" />
        </branch>
        <branch name="ALU_O(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="1008" type="branch" />
            <wire x2="2144" y1="1008" y2="1008" x1="2048" />
        </branch>
        <branch name="SHIFT_O(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1072" type="branch" />
            <wire x2="2144" y1="1072" y2="1072" x1="2032" />
        </branch>
        <branch name="SHIFT_O(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="832" type="branch" />
            <wire x2="1696" y1="832" y2="832" x1="1600" />
        </branch>
        <branch name="ALU_O(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="1200" type="branch" />
            <wire x2="1696" y1="1200" y2="1200" x1="1600" />
        </branch>
        <instance x="2144" y="1104" name="XLXI_11" orien="R0">
        </instance>
        <branch name="DINT_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="944" type="branch" />
            <wire x2="2144" y1="944" y2="944" x1="2064" />
        </branch>
        <branch name="DINT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="944" type="branch" />
            <wire x2="2672" y1="944" y2="944" x1="2528" />
        </branch>
        <branch name="PC_ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1792" type="branch" />
            <wire x2="512" y1="1792" y2="1792" x1="400" />
        </branch>
        <branch name="PC_resert">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1856" type="branch" />
            <wire x2="512" y1="1856" y2="1856" x1="400" />
        </branch>
        <branch name="DINT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1920" type="branch" />
            <wire x2="512" y1="1920" y2="1920" x1="400" />
        </branch>
        <instance x="512" y="1952" name="XLXI_13" orien="R0">
        </instance>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1728" type="branch" />
            <wire x2="1008" y1="1728" y2="1728" x1="896" />
            <wire x2="1008" y1="1728" y2="1808" x1="1008" />
            <wire x2="1312" y1="1808" y2="1808" x1="1008" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1728" type="branch" />
            <wire x2="512" y1="1728" y2="1728" x1="400" />
        </branch>
        <instance x="2144" y="1472" name="XLXI_14" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="1312" type="branch" />
            <wire x2="2144" y1="1312" y2="1312" x1="2048" />
        </branch>
        <branch name="MAR_ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="1376" type="branch" />
            <wire x2="2144" y1="1376" y2="1376" x1="2048" />
        </branch>
        <branch name="DINT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="1440" type="branch" />
            <wire x2="2144" y1="1440" y2="1440" x1="2048" />
        </branch>
        <branch name="MAR_O(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="1312" type="branch" />
            <wire x2="2672" y1="1312" y2="1312" x1="2528" />
        </branch>
        <instance x="1312" y="1904" name="XLXI_15" orien="R0">
        </instance>
        <branch name="MMU_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1744" type="branch" />
            <wire x2="1312" y1="1744" y2="1744" x1="1200" />
        </branch>
        <branch name="MAR_O(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1872" type="branch" />
            <wire x2="1312" y1="1872" y2="1872" x1="1184" />
        </branch>
        <instance x="512" y="2480" name="XLXI_16" orien="R0">
        </instance>
        <branch name="simm(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="2384" type="branch" />
            <wire x2="992" y1="2384" y2="2384" x1="896" />
        </branch>
        <instance x="240" y="1424" name="XLXI_18" orien="R0">
        </instance>
        <instance x="96" y="1360" name="XLXI_17" orien="R0">
        </instance>
        <branch name="const_0(31:0)">
            <wire x2="512" y1="1392" y2="1392" x1="240" />
        </branch>
        <branch name="const_1(31:0)">
            <wire x2="512" y1="1456" y2="1456" x1="384" />
        </branch>
        <instance x="1968" y="2256" name="XLXI_20" orien="R0">
        </instance>
        <instance x="1312" y="2256" name="XLXI_19" orien="R0">
        </instance>
        <branch name="MDR_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="2096" type="branch" />
            <wire x2="1312" y1="2096" y2="2096" x1="1248" />
        </branch>
        <branch name="DINT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="2160" type="branch" />
            <wire x2="1312" y1="2160" y2="2160" x1="1248" />
        </branch>
        <branch name="XLXN_66(31:0)">
            <wire x2="1728" y1="2096" y2="2096" x1="1696" />
            <wire x2="1728" y1="2096" y2="2224" x1="1728" />
            <wire x2="1968" y1="2224" y2="2224" x1="1728" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="2096" type="branch" />
            <wire x2="1968" y1="2096" y2="2096" x1="1904" />
        </branch>
        <branch name="MDR_ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="2160" type="branch" />
            <wire x2="1968" y1="2160" y2="2160" x1="1904" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2432" y="2096" type="branch" />
            <wire x2="2432" y1="2096" y2="2096" x1="2352" />
        </branch>
        <branch name="DI(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="448" y="2448" type="branch" />
            <wire x2="512" y1="2448" y2="2448" x1="448" />
        </branch>
        <branch name="DI(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="2224" type="branch" />
            <wire x2="1312" y1="2224" y2="2224" x1="1248" />
        </branch>
        <instance x="1856" y="1776" name="XLXI_21" orien="R0">
        </instance>
        <branch name="AO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="1744" type="branch" />
            <wire x2="2368" y1="1744" y2="1744" x1="2240" />
        </branch>
        <branch name="shift">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="832" type="branch" />
            <wire x2="1152" y1="832" y2="832" x1="1104" />
        </branch>
        <branch name="right">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="896" type="branch" />
            <wire x2="1152" y1="896" y2="896" x1="1104" />
        </branch>
        <branch name="test">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1328" type="branch" />
            <wire x2="1184" y1="1328" y2="1328" x1="1136" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1392" type="branch" />
            <wire x2="1184" y1="1392" y2="1392" x1="1136" />
        </branch>
        <branch name="ALUF(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1456" type="branch" />
            <wire x2="1184" y1="1456" y2="1456" x1="1120" />
        </branch>
        <branch name="rs1(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="176" type="branch" />
            <wire x2="1280" y1="176" y2="176" x1="1232" />
        </branch>
        <branch name="rs2(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="240" type="branch" />
            <wire x2="1280" y1="240" y2="240" x1="1232" />
        </branch>
        <branch name="rd(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="304" type="branch" />
            <wire x2="1280" y1="304" y2="304" x1="1232" />
        </branch>
        <branch name="Dadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="368" type="branch" />
            <wire x2="1280" y1="368" y2="368" x1="1232" />
        </branch>
        <branch name="GPR_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="496" type="branch" />
            <wire x2="1280" y1="496" y2="496" x1="1232" />
        </branch>
        <branch name="D_gpr(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="368" type="branch" />
            <wire x2="1696" y1="368" y2="368" x1="1664" />
        </branch>
        <branch name="AEQZ">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="496" type="branch" />
            <wire x2="1696" y1="496" y2="496" x1="1664" />
        </branch>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="112" type="branch" />
            <wire x2="2496" y1="112" y2="112" x1="2448" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="416" type="branch" />
            <wire x2="2496" y1="416" y2="416" x1="2448" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1264" type="branch" />
            <wire x2="512" y1="1264" y2="1264" x1="400" />
        </branch>
        <branch name="ALUF(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="2448" type="branch" />
            <wire x2="928" y1="2448" y2="2448" x1="896" />
        </branch>
        <branch name="opcode(5:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="2320" type="branch" />
            <wire x2="928" y1="2320" y2="2320" x1="896" />
        </branch>
        <branch name="rd(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="2256" type="branch" />
            <wire x2="928" y1="2256" y2="2256" x1="896" />
        </branch>
        <branch name="rs2(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="2192" type="branch" />
            <wire x2="928" y1="2192" y2="2192" x1="896" />
        </branch>
        <branch name="rs1(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="2128" type="branch" />
            <wire x2="928" y1="2128" y2="2128" x1="896" />
        </branch>
        <branch name="IR(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="2064" type="branch" />
            <wire x2="928" y1="2064" y2="2064" x1="896" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="2064" type="branch" />
            <wire x2="512" y1="2064" y2="2064" x1="480" />
        </branch>
        <branch name="IR_ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="2160" type="branch" />
            <wire x2="512" y1="2160" y2="2160" x1="480" />
        </branch>
        <branch name="itype">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="2256" type="branch" />
            <wire x2="512" y1="2256" y2="2256" x1="480" />
        </branch>
        <branch name="jlink">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="2352" type="branch" />
            <wire x2="512" y1="2352" y2="2352" x1="480" />
        </branch>
        <branch name="clk">
            <wire x2="288" y1="80" y2="80" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="80" name="clk" orien="R180" />
        <branch name="B_ce">
            <wire x2="304" y1="176" y2="176" x1="208" />
        </branch>
        <branch name="A_ce">
            <wire x2="224" y1="128" y2="128" x1="208" />
            <wire x2="320" y1="128" y2="128" x1="224" />
        </branch>
        <iomarker fontsize="28" x="208" y="128" name="A_ce" orien="R180" />
        <iomarker fontsize="28" x="208" y="176" name="B_ce" orien="R180" />
        <branch name="C_ce">
            <wire x2="304" y1="224" y2="224" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="224" name="C_ce" orien="R180" />
        <branch name="Dadr(4:0)">
            <wire x2="304" y1="272" y2="272" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="272" name="Dadr(4:0)" orien="R180" />
        <branch name="GPR_we">
            <wire x2="304" y1="320" y2="320" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="320" name="GPR_we" orien="R180" />
        <branch name="S1_sel(1:0)">
            <wire x2="320" y1="368" y2="368" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="368" name="S1_sel(1:0)" orien="R180" />
        <branch name="S2_sel(1:0)">
            <wire x2="320" y1="416" y2="416" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="416" name="S2_sel(1:0)" orien="R180" />
        <branch name="shift">
            <wire x2="288" y1="464" y2="464" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="464" name="shift" orien="R180" />
        <branch name="MMU_sel">
            <wire x2="272" y1="2048" y2="2048" x1="176" />
        </branch>
        <branch name="itype">
            <wire x2="288" y1="2144" y2="2144" x1="192" />
        </branch>
        <branch name="IR_ce">
            <wire x2="208" y1="2096" y2="2096" x1="192" />
            <wire x2="304" y1="2096" y2="2096" x1="208" />
        </branch>
        <branch name="jlink">
            <wire x2="288" y1="2192" y2="2192" x1="192" />
        </branch>
        <branch name="MDR_sel">
            <wire x2="288" y1="2240" y2="2240" x1="192" />
        </branch>
        <branch name="MDR_ce">
            <wire x2="288" y1="2288" y2="2288" x1="192" />
        </branch>
        <branch name="DI(31:0)">
            <wire x2="304" y1="2336" y2="2336" x1="208" />
        </branch>
        <branch name="PC_resert">
            <wire x2="304" y1="2384" y2="2384" x1="208" />
        </branch>
        <iomarker fontsize="28" x="176" y="2048" name="MMU_sel" orien="R180" />
        <iomarker fontsize="28" x="192" y="2096" name="IR_ce" orien="R180" />
        <iomarker fontsize="28" x="192" y="2144" name="itype" orien="R180" />
        <iomarker fontsize="28" x="192" y="2192" name="jlink" orien="R180" />
        <iomarker fontsize="28" x="192" y="2240" name="MDR_sel" orien="R180" />
        <iomarker fontsize="28" x="192" y="2288" name="MDR_ce" orien="R180" />
        <iomarker fontsize="28" x="208" y="2336" name="DI(31:0)" orien="R180" />
        <iomarker fontsize="28" x="208" y="2384" name="PC_resert" orien="R180" />
        <branch name="test">
            <wire x2="288" y1="512" y2="512" x1="192" />
        </branch>
        <branch name="add">
            <wire x2="288" y1="560" y2="560" x1="192" />
        </branch>
        <branch name="DINT_sel">
            <wire x2="288" y1="608" y2="608" x1="192" />
        </branch>
        <branch name="MAR_ce">
            <wire x2="288" y1="656" y2="656" x1="192" />
        </branch>
        <branch name="PC_ce">
            <wire x2="288" y1="704" y2="704" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="512" name="test" orien="R180" />
        <iomarker fontsize="28" x="192" y="560" name="add" orien="R180" />
        <iomarker fontsize="28" x="192" y="608" name="DINT_sel" orien="R180" />
        <iomarker fontsize="28" x="192" y="656" name="MAR_ce" orien="R180" />
        <iomarker fontsize="28" x="192" y="704" name="PC_ce" orien="R180" />
        <instance x="1488" y="688" name="XLXI_22" orien="R0" />
        <branch name="IR(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="656" type="branch" />
            <wire x2="1488" y1="656" y2="656" x1="1456" />
        </branch>
        <branch name="right">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="656" type="branch" />
            <wire x2="1760" y1="656" y2="656" x1="1712" />
        </branch>
        <branch name="AO(31:0)">
            <wire x2="2192" y1="2368" y2="2368" x1="2096" />
        </branch>
        <branch name="DO(31:0)">
            <wire x2="2192" y1="2416" y2="2416" x1="2096" />
        </branch>
        <branch name="D_gpr(31:0)">
            <wire x2="2192" y1="2464" y2="2464" x1="2096" />
        </branch>
        <branch name="AEQZ">
            <wire x2="2192" y1="2512" y2="2512" x1="2096" />
        </branch>
        <branch name="ALUF(2:0)">
            <wire x2="2192" y1="2608" y2="2608" x1="2096" />
        </branch>
        <branch name="IR(31:0)">
            <wire x2="2192" y1="2560" y2="2560" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2192" y="2368" name="AO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2192" y="2416" name="DO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2192" y="2464" name="D_gpr(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2192" y="2512" name="AEQZ" orien="R0" />
        <iomarker fontsize="28" x="2192" y="2560" name="IR(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2192" y="2608" name="ALUF(2:0)" orien="R0" />
        <branch name="XLXN_166(31:0)">
            <wire x2="1856" y1="1744" y2="1744" x1="1696" />
        </branch>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="448" y="880" type="branch" />
            <wire x2="512" y1="880" y2="880" x1="448" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="944" type="branch" />
            <wire x2="512" y1="944" y2="944" x1="208" />
        </branch>
    </sheet>
</drawing>