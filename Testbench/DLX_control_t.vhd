-- Vhdl test bench created from schematic E:\adlx\C4\Home_S29_03-01-2021_NATAN3\DLX_control.sch - Sat Jan 22 10:02:08 2022
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY DLX_control_DLX_control_sch_tb IS
END DLX_control_DLX_control_sch_tb;
ARCHITECTURE behavioral OF DLX_control_DLX_control_sch_tb IS 

   COMPONENT DLX_control
   PORT( clk	:	IN	STD_LOGIC; 
          ack_n	:	IN	STD_LOGIC; 
          step_en	:	IN	STD_LOGIC; 
          reset	:	IN	STD_LOGIC; 
          opcode	:	IN	STD_LOGIC_VECTOR (5 DOWNTO 0); 
          AEQZ	:	IN	STD_LOGIC; 
          imm	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          mac_state	:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          mw	:	OUT	STD_LOGIC; 
          in_init	:	OUT	STD_LOGIC; 
          gpr_we	:	OUT	STD_LOGIC; 
          IR_ce	:	OUT	STD_LOGIC; 
          PC_ce	:	OUT	STD_LOGIC; 
          MAR_ce	:	OUT	STD_LOGIC; 
          MDR_ce	:	OUT	STD_LOGIC; 
          A_sel	:	OUT	STD_LOGIC; 
          shift_en	:	OUT	STD_LOGIC; 
          MDR_sel	:	OUT	STD_LOGIC; 
          DINT_sel	:	OUT	STD_LOGIC; 
          add	:	OUT	STD_LOGIC; 
          jlink	:	OUT	STD_LOGIC; 
          itype	:	OUT	STD_LOGIC; 
          test	:	OUT	STD_LOGIC; 
          A_ce	:	OUT	STD_LOGIC; 
          B_ce	:	OUT	STD_LOGIC; 
          C_ce	:	OUT	STD_LOGIC; 
          DLX_state	:	OUT	STD_LOGIC_VECTOR (4 DOWNTO 0); 
          s1_sel	:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          s2_sel	:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          busy	:	OUT	STD_LOGIC; 
          mr	:	OUT	STD_LOGIC; 
          as_n	:	OUT	STD_LOGIC; 
          wr_n	:	OUT	STD_LOGIC; 
          stop_n	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL ack_n	:	STD_LOGIC;
   SIGNAL step_en	:	STD_LOGIC;
   SIGNAL reset	:	STD_LOGIC;
   SIGNAL opcode	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
   SIGNAL AEQZ	:	STD_LOGIC;
   SIGNAL imm	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL mac_state	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL mw	:	STD_LOGIC;
   SIGNAL in_init	:	STD_LOGIC;
   SIGNAL gpr_we	:	STD_LOGIC;
   SIGNAL IR_ce	:	STD_LOGIC;
   SIGNAL PC_ce	:	STD_LOGIC;
   SIGNAL MAR_ce	:	STD_LOGIC;
   SIGNAL MDR_ce	:	STD_LOGIC;
   SIGNAL A_sel	:	STD_LOGIC;
   SIGNAL shift_en	:	STD_LOGIC;
   SIGNAL MDR_sel	:	STD_LOGIC;
   SIGNAL DINT_sel	:	STD_LOGIC;
   SIGNAL add	:	STD_LOGIC;
   SIGNAL jlink	:	STD_LOGIC;
   SIGNAL itype	:	STD_LOGIC;
   SIGNAL test	:	STD_LOGIC;
   SIGNAL A_ce	:	STD_LOGIC;
   SIGNAL B_ce	:	STD_LOGIC;
   SIGNAL C_ce	:	STD_LOGIC;
   SIGNAL DLX_state	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
   SIGNAL s1_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL s2_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL busy	:	STD_LOGIC;
   SIGNAL mr	:	STD_LOGIC;
   SIGNAL as_n	:	STD_LOGIC;
   SIGNAL wr_n	:	STD_LOGIC;
   SIGNAL stop_n	:	STD_LOGIC;

BEGIN

   UUT: DLX_control PORT MAP(
		clk => clk, 
		ack_n => ack_n, 
		step_en => step_en, 
		reset => reset, 
		opcode => opcode, 
		AEQZ => AEQZ, 
		imm => imm, 
		mac_state => mac_state, 
		mw => mw, 
		in_init => in_init, 
		gpr_we => gpr_we, 
		IR_ce => IR_ce, 
		PC_ce => PC_ce, 
		MAR_ce => MAR_ce, 
		MDR_ce => MDR_ce, 
		A_sel => A_sel, 
		shift_en => shift_en, 
		MDR_sel => MDR_sel, 
		DINT_sel => DINT_sel, 
		add => add, 
		jlink => jlink, 
		itype => itype, 
		test => test, 
		A_ce => A_ce, 
		B_ce => B_ce, 
		C_ce => C_ce, 
		DLX_state => DLX_state, 
		s1_sel => s1_sel, 
		s2_sel => s2_sel, 
		busy => busy, 
		mr => mr, 
		as_n => as_n, 
		wr_n => wr_n, 
		stop_n => stop_n
   );

-- *** Test Bench - User Defined Section ***
	clk_process : PROCESS
	BEGIN
		clk <= '1';
		wait for 100 ns;
		clk <= '0';
		wait for 100 ns;
		end process;
   tb : PROCESS
   BEGIN
	
		reset <= '1';
		step_en <= '0';
		ack_n <= '1';
		opcode <= "101011"; -- STORE
		imm <= x"0000";
		AEQZ <= '0';
 
		wait for 202 ns;
		reset <= '0';
		step_en <= '1';
 
		wait for 200 ns;
		step_en <= '0';

		wait for 600 ns;
		ack_n <= '0';
 
		wait for 200 ns;
		ack_n <= '1';
 
		wait for 1200 ns;
		ack_n <= '0';
 
		wait for 200 ns;
		ack_n <= '1';
		
		wait for 400 ns;
		
		
		reset <= '1';
		step_en <= '0';
		ack_n <= '1';
		opcode <= "100011"; -- LOAD
		imm <= x"0000";
		AEQZ <= '0';
 
		wait for 200 ns;
		reset <= '0';
		step_en <= '1';
 
		wait for 200 ns;
		step_en <= '0';

		wait for 600 ns;
		ack_n <= '0';
 
		wait for 200 ns;
		ack_n <= '1';
 
		wait for 1000 ns;
		ack_n <= '0';
 
		wait for 200 ns;
		ack_n <= '1';
		
		wait for 600 ns;
		
		
		reset <= '1';
		step_en <= '0';
		ack_n <= '1';
		opcode <= "000000"; -- ALU
		imm <= x"0000";
		AEQZ <= '0';
 
		wait for 200 ns;
		reset <= '0';
		step_en <= '1';
 
		wait for 200 ns;
		step_en <= '0';

		wait for 600 ns;
		ack_n <= '0';
 
		wait for 200 ns;
		ack_n <= '1';
 
		wait for 1000 ns;
		
		
		reset <= '1';
		step_en <= '0';
		ack_n <= '1';
		opcode <= "011001"; -- TESTI
		imm <= x"0000";
		AEQZ <= '0';
 
		wait for 200 ns;
		reset <= '0';
		step_en <= '1';
 
		wait for 200 ns;
		step_en <= '0';

		wait for 600 ns;
		ack_n <= '0';
 
		wait for 200 ns;
		ack_n <= '1';
 
		wait for 1000 ns;
		
		
		reset <= '1';
		step_en <= '0';
		ack_n <= '1';
		opcode <= "010111"; -- JALR
		imm <= x"0000";
		AEQZ <= '0';
 
		wait for 200 ns;
		reset <= '0';
		step_en <= '1';
 
		wait for 200 ns;
		step_en <= '0';

		wait for 600 ns;
		ack_n <= '0';
 
		wait for 200 ns;
		ack_n <= '1';
 
		wait for 1000 ns;
		
		
		reset <= '1';
		step_en <= '0';
		ack_n <= '1';
		opcode <= "000101"; -- BTAKEN
		imm <= x"0000";
		AEQZ <= '0';
 
		wait for 200 ns;
		reset <= '0';
		step_en <= '1';
 
		wait for 200 ns;
		step_en <= '0';

		wait for 600 ns;
		ack_n <= '0';
 
		wait for 200 ns;
		ack_n <= '1';
 
		wait for 1000 ns;

		
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
