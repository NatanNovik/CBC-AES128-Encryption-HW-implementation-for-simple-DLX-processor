----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:38:37 01/02/2022 
-- Design Name: 
-- Module Name:    DLX_state_machine - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DLX_state_machine is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           opcode : in  STD_LOGIC_VECTOR (5 downto 0);
           imm : in  STD_LOGIC_VECTOR (15 downto 0);
           AEQZ : in  STD_LOGIC;
           busy : in  STD_LOGIC;
           step_en : in  STD_LOGIC;
           state_out : out  STD_LOGIC_VECTOR (4 downto 0);
           mr : out  STD_LOGIC;
           mw : out  STD_LOGIC;
           in_init : out  STD_LOGIC;
           gpr_we : out  STD_LOGIC;
           IR_ce : out  STD_LOGIC;
           PC_ce : out  STD_LOGIC;
           MAR_ce : out  STD_LOGIC;
           MDR_ce : out  STD_LOGIC;
           Asel : out  STD_LOGIC;
           S1sel : out  STD_LOGIC_VECTOR (1 downto 0);
           S2sel : out  STD_LOGIC_VECTOR (1 downto 0);
           shift_en : out  STD_LOGIC;
           MDR_sel : out  STD_LOGIC;
           DINTsel : out  STD_LOGIC;
           add : out  STD_LOGIC;
           jlink : out  STD_LOGIC;
           itype : out  STD_LOGIC;
           test : out  STD_LOGIC;
           A_ce : out  STD_LOGIC;
           B_ce : out  STD_LOGIC;
           C_ce : out  STD_LOGIC;
			  done_cbc : in STD_LOGIC;
			  CBC_step_en : out STD_LOGIC);
end DLX_state_machine;

architecture Behavioral of DLX_state_machine is

 
signal DLX_state: std_logic_vector(4 downto 0);
signal bt: std_logic;
constant INIT: std_logic_vector(4 downto 0):= "00011";
constant FETCH: std_logic_vector(4 downto 0):= "00001";
constant DECODE: std_logic_vector(4 downto 0):= "00000";
constant ALU: std_logic_vector(4 downto 0):= "10000";
constant SHIFT: std_logic_vector(4 downto 0):= "00010";
constant TESTI: std_logic_vector(4 downto 0):= "00101";
constant ALUI: std_logic_vector(4 downto 0):= "01101";
constant ADRCOMP: std_logic_vector(4 downto 0):= "01000";
constant LOAD: std_logic_vector(4 downto 0):= "01010";
constant STORE: std_logic_vector(4 downto 0):= "01110";
constant COPYMDR2C: std_logic_vector(4 downto 0):= "01011";
constant COPYGPR2MDR: std_logic_vector(4 downto 0):= "01100";
constant WBR: std_logic_vector(4 downto 0):= "10010";
constant WBI: std_logic_vector(4 downto 0):= "01111";
constant BRANCH: std_logic_vector(4 downto 0):= "11110";
constant BTAKEN: std_logic_vector(4 downto 0):= "11111";
constant JR: std_logic_vector(4 downto 0):= "10001";
constant SAVEPC: std_logic_vector(4 downto 0):= "10100";
constant JALR: std_logic_vector(4 downto 0):= "10110";
constant HALT : std_logic_vector(4 downto 0):= "10011";
constant RST_CBC : std_logic_vector(4 downto 0):= "00100";
constant BEGIN_CBC : std_logic_vector(4 downto 0):= "00110";
constant WAIT4DONECBC : std_logic_vector(4 downto 0):= "00111";

begin
main: process(clk,reset)
	begin
		if((clk'event) and (clk='1')) then
			if(reset='1') then
				DLX_state <= INIT;
			else
				bt <= AEQZ xor opcode(0);
				case DLX_state is
					when INIT =>
						if(step_en = '0') then
							DLX_state <= INIT;
						else
							DLX_state <= FETCH;
						end if;
 
					when FETCH =>
						if(busy = '0') then
							DLX_state <= DECODE;
						else
							DLX_state <= FETCH;
						end if;
 
					when DECODE =>
						if(opcode(5 downto 0) = "110000") then
							if (step_en = '1') then
								DLX_state <= FETCH;
							else
								DLX_state <= INIT;
							end if;
						elsif(opcode(5 downto 0) = "110010") then
							DLX_state <= BEGIN_CBC;
						elsif(opcode(5 downto 2) = "0000") then
							if (imm(5) = '1') then
								DLX_state <= ALU;
							else
								DLX_state <= SHIFT;
							end if;
						elsif (opcode(5 downto 3) = "001") then
							DLX_state <= ALUI;
						elsif (opcode(5 downto 3) = "011") then
							DLX_state <= TESTI;
						elsif (opcode(5 downto 4) = "10") then
							DLX_state <= ADRCOMP;
						elsif (opcode(5 downto 3) = "010") then
							if (opcode(0) = '1') then
								DLX_state <= SAVEPC;
							else
								DLX_state <= JR;
							end if;
						elsif (opcode(5 downto 2) = "0001") then
							DLX_state <= BRANCH;
						else
							DLX_state <= HALT;
						end if;
 
					when ALU =>
						DLX_state <= WBR;
						
					when SHIFT =>
						DLX_state <= WBR;
 
					when WBR =>
						if (step_en = '1') then
							DLX_state <= FETCH;
						else
							DLX_state <= INIT;
						end if;
 
					when ALUI =>
						DLX_state <= WBI;
						
					when TESTI =>
						DLX_state <= WBI;
 
					when WBI =>
						if (step_en = '1') then
							DLX_state <= FETCH;
						else
							DLX_state <= INIT;
						end if;
 
					when ADRCOMP =>
						if (opcode(3) = '0') then
							DLX_state <= LOAD;
						else
							DLX_state <= COPYGPR2MDR;
						end if;
						
					when LOAD =>
						if(busy = '0') then
							DLX_state <= COPYMDR2C;
						else
							DLX_state <= LOAD;
						end if;
 
					when COPYMDR2C =>
						DLX_state <= WBI;
 
					when COPYGPR2MDR =>
						DLX_state <= STORE;
 
					when STORE =>
						if(busy = '0') then
							if (step_en = '1') then
								DLX_state <= FETCH;
							else
								DLX_state <= INIT;
							end if;
						else
							DLX_state <= STORE;
						end if;
 
					when JR =>
						if (step_en = '1') then
							DLX_state <= FETCH;
						else
							DLX_state <= INIT;
						end if;
 
					when SAVEPC =>
						DLX_state <= JALR;
 
					when JALR =>
						if (step_en = '1') then
							DLX_state <= FETCH;
						else
							DLX_state <= INIT;
						end if;
 
					when BRANCH =>
						if (bt = '1') then
							DLX_state <= BTAKEN;
						else
							if (step_en = '1') then
								DLX_state <= FETCH;
							else
								DLX_state <= INIT;
							end if;
						end if;
 
					when BTAKEN =>
						if (step_en = '1') then
							DLX_state <= FETCH;

						else
							DLX_state <= INIT;
						end if;
						
					when BEGIN_CBC =>
						DLX_state <= WAIT4DONECBC;
						
					when WAIT4DONECBC =>
						if (done_cbc = '1') then
							if (step_en = '1') then
								DLX_state <= FETCH;
							else
								DLX_state <= INIT;
							end if;
						else
							DLX_state <= WAIT4DONECBC;
						end if;
 
					when HALT =>
						DLX_state <= HALT;
 
					when others => null;
				end case;
			end if;
		end if;
	end process main;
 
	state_out <= DLX_state;
	mr <= '1' when (DLX_state = FETCH or DLX_state = LOAD) else '0';
	mw <= '1' when DLX_state = STORE else '0';
	in_init <= '1' when (DLX_state = INIT or DLX_state = HALT) else '0';
	A_ce <= '1' when (DLX_state = DECODE) else '0';
	B_ce <= '1' when (DLX_state = DECODE) else '0';
	C_ce <= '1' when (DLX_state = ALU or DLX_state = SHIFT or DLX_state = ALUI or DLX_state = TESTI or
	DLX_state = COPYMDR2C or DLX_state = SAVEPC) else '0';
	gpr_we <= '1' when (DLX_state = WBI or DLX_state = WBR or DLX_state = JALR) else '0';
	IR_ce <= '1' when (DLX_state = FETCH) else '0';
	PC_ce <= '1' when (DLX_state = DECODE or DLX_state = JR or DLX_state = JALR or DLX_state = BTAKEN) else '0';
	MAR_ce <= '1' when (DLX_state = ADRCOMP) else '0';
	MDR_ce <= '1' when (DLX_state = LOAD or DLX_state = COPYGPR2MDR) else '0';
	Asel <= '1' when (DLX_state = LOAD or DLX_state = STORE) else '0';
	S1sel(0) <= '1' when (DLX_state = ALU or DLX_state = SHIFT or DLX_state = ALUI or DLX_state = TESTI or DLX_state = COPYMDR2C or DLX_state = ADRCOMP or DLX_state = JR or DLX_state = JALR) else '0';
	S1sel(1) <= '1' when (DLX_state = COPYMDR2C or DLX_state = COPYGPR2MDR) else '0';
	S2sel(0) <= '1' when (DLX_state = DECODE or DLX_state = ALUI or DLX_state = TESTI or DLX_state = ADRCOMP or DLX_state = BTAKEN) else '0';
	S2sel(1) <= '1' when (DLX_state = DECODE or DLX_state = COPYMDR2C or DLX_state = COPYGPR2MDR or DLX_state = JR or DLX_state = JALR or DLX_state = SAVEPC) else '0';
	shift_en <= '1' when (DLX_state = SHIFT) else '0';
	MDR_sel <= '1' when (DLX_state = LOAD) else '0';
	DINTsel <= '1' when (DLX_state = SHIFT or DLX_state = COPYMDR2C or DLX_state = COPYGPR2MDR) else '0';
	add <= '1' when (DLX_state = DECODE or DLX_state = ALUI or DLX_state = ADRCOMP or DLX_state = JR or
	DLX_state = JALR or DLX_state = SAVEPC or DLX_state = BTAKEN) else '0';
	jlink <= '1' when (DLX_state = JALR) else '0';
	itype <= '1' when (DLX_state = ALUI or DLX_state = TESTI or DLX_state = WBI) else '0';
	test <= '1' when (DLX_state = TESTI) else '0';
	CBC_step_en <= '1' when (DLX_state = BEGIN_CBC) else '0';
	


end Behavioral;

