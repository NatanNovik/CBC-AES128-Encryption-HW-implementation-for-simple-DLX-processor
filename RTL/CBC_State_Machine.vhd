----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:51:34 01/16/2023 
-- Design Name: 
-- Module Name:    CBC_State_Machine - Behavioral 
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

entity CBC_State_Machine is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           CBC_step_en : in  STD_LOGIC;
           ack_n : in  STD_LOGIC;
           IN_CALC_AES : in  STD_LOGIC;
           state : out  STD_LOGIC_VECTOR (6 downto 0);
           mr : out  STD_LOGIC;
           mw : out  STD_LOGIC;
           AES_sel : out  STD_LOGIC;
           mr_sel : out  STD_LOGIC;
           mw_sel : out  STD_LOGIC;
           Dout_sel : out  STD_LOGIC;
           Aout_sel : out  STD_LOGIC;
           AES_kick : out  STD_LOGIC;
			  DONE_CBC : out  STD_LOGIC);
end CBC_State_Machine;

architecture Behavioral of CBC_State_Machine is

signal CBC_state: std_logic_vector(6 downto 0);
constant RESTINGSTATE: std_logic_vector(6 downto 0):= "0000000";
constant ADDLOADKEY0: std_logic_vector(6 downto 0):= "0000001";
constant LOADKEY0: std_logic_vector(6 downto 0):= "0000011";
constant ADDLOADKEY1: std_logic_vector(6 downto 0):= "0000010";
constant LOADKEY1: std_logic_vector(6 downto 0):= "0000110";
constant ADDLOADKEY2: std_logic_vector(6 downto 0):= "0000100";
constant LOADKEY2: std_logic_vector(6 downto 0):= "0000101";
constant ADDLOADKEY3: std_logic_vector(6 downto 0):= "0000111";
constant LOADKEY3: std_logic_vector(6 downto 0):= "0001111";
constant ADDLOADIV0: std_logic_vector(6 downto 0):= "0001110";
constant LOADIV0: std_logic_vector(6 downto 0):= "0001100";
constant ADDLOADIV1: std_logic_vector(6 downto 0):= "0001101";
constant LOADIV1: std_logic_vector(6 downto 0):= "0001001";
constant ADDLOADIV2: std_logic_vector(6 downto 0):= "0001011";
constant LOADIV2: std_logic_vector(6 downto 0):= "0001010";
constant ADDLOADIV3: std_logic_vector(6 downto 0):= "0001000";
constant LOADIV3: std_logic_vector(6 downto 0):= "0011000";
constant ADDLOADP1_0: std_logic_vector(6 downto 0):= "0011001";
constant LOADP1_0: std_logic_vector(6 downto 0):= "0011011";
constant ADDLOADP1_1: std_logic_vector(6 downto 0):= "0011010";
constant LOADP1_1: std_logic_vector(6 downto 0):= "0011110";
constant ADDLOADP1_2: std_logic_vector(6 downto 0):= "0011100";
constant LOADP1_2: std_logic_vector(6 downto 0):= "0011101";
constant ADDLOADP1_3: std_logic_vector(6 downto 0):= "0011111";
constant LOADP1_3: std_logic_vector(6 downto 0):= "0010111";
constant CALCP1ADDLOADP2_0: std_logic_vector(6 downto 0):= "0010110";
constant LOADP2_0: std_logic_vector(6 downto 0):= "0010100";
constant ADDLOADP2_1: std_logic_vector(6 downto 0):= "0010101";
constant LOADP2_1: std_logic_vector(6 downto 0):= "0010001";
constant ADDLOADP2_2: std_logic_vector(6 downto 0):= "0010011";
constant LOADP2_2: std_logic_vector(6 downto 0):= "0010010";
constant ADDLOADP2_3: std_logic_vector(6 downto 0):= "0010000";
constant LOADP2_3: std_logic_vector(6 downto 0):= "0110000";
constant WAIT4DC1: std_logic_vector(6 downto 0):= "0110001";
constant MVC12BUF: std_logic_vector(6 downto 0):= "0110011";
constant CALCP2ADDLOADP3_0: std_logic_vector(6 downto 0):= "0110010";
constant LOADP3_0: std_logic_vector(6 downto 0):= "0110110";
constant ADDLOADP3_1: std_logic_vector(6 downto 0):= "0110100";
constant LOADP3_1: std_logic_vector(6 downto 0):= "0110101";
constant ADDLOADP3_2: std_logic_vector(6 downto 0):= "0110111";
constant LOADP3_2: std_logic_vector(6 downto 0):= "0111111";
constant ADDLOADP3_3: std_logic_vector(6 downto 0):= "0111110";
constant LOADP3_3: std_logic_vector(6 downto 0):= "0111100";
constant WAIT4DC2: std_logic_vector(6 downto 0):= "0111101";
constant MVC22BUF: std_logic_vector(6 downto 0):= "0111001";
constant CALCP3ADDOUTC1_0: std_logic_vector(6 downto 0):= "0111011";
constant STOREC1_0: std_logic_vector(6 downto 0):= "0111010";
constant ADDOUTC1_1: std_logic_vector(6 downto 0):= "0111000";
constant STOREC1_1: std_logic_vector(6 downto 0):= "0101000";
constant ADDOUTC1_2: std_logic_vector(6 downto 0):= "0101001";
constant STOREC1_2: std_logic_vector(6 downto 0):= "0101011";
constant ADDOUTC1_3: std_logic_vector(6 downto 0):= "0101010";
constant STOREC1_3: std_logic_vector(6 downto 0):= "0101110";
constant WAIT4DC3: std_logic_vector(6 downto 0):= "0101100";
constant MVC32BUF: std_logic_vector(6 downto 0):= "0101101";
constant ADDOUTC2_0: std_logic_vector(6 downto 0):= "0101111";
constant STOREC2_0: std_logic_vector(6 downto 0):= "0100111";
constant ADDOUTC2_1: std_logic_vector(6 downto 0):= "0100110";
constant STOREC2_1: std_logic_vector(6 downto 0):= "0100100";
constant ADDOUTC2_2: std_logic_vector(6 downto 0):= "0100101";
constant STOREC2_2: std_logic_vector(6 downto 0):= "0100001";
constant ADDOUTC2_3: std_logic_vector(6 downto 0):= "0100011";
constant STOREC2_3: std_logic_vector(6 downto 0):= "0100010";
constant ADDOUTC3_0: std_logic_vector(6 downto 0):= "0100000";
constant STOREC3_0: std_logic_vector(6 downto 0):= "1100000";
constant ADDOUTC3_1: std_logic_vector(6 downto 0):= "1100001";
constant STOREC3_1: std_logic_vector(6 downto 0):= "1100011";
constant ADDOUTC3_2: std_logic_vector(6 downto 0):= "1100010";
constant STOREC3_2: std_logic_vector(6 downto 0):= "1100110";
constant ADDOUTC3_3: std_logic_vector(6 downto 0):= "1100100";
constant STOREC3_3: std_logic_vector(6 downto 0):= "1100101";
constant DONECBC: std_logic_vector(6 downto 0):= "1100111";

begin
main: process(clk,reset)
	begin
		if((clk'event) and (clk='1')) then
			if(reset='1') then
				CBC_state <= RESTINGSTATE;
			else
				case CBC_state is
					when RESTINGSTATE =>
						if(CBC_step_en = '0') then
							CBC_state <= RESTINGSTATE;
						else
							CBC_state <= ADDLOADKEY0;
						end if;
 
					when ADDLOADKEY0 =>
						CBC_state <= LOADKEY0;
						
					when LOADKEY0 =>
						if (ack_n = '1') then
							CBC_state <= LOADKEY0;
						else 
							CBC_state <= ADDLOADKEY1;
						end if;
							
					when ADDLOADKEY1 =>
						CBC_state <= LOADKEY1;
					
					when LOADKEY1 =>
						if (ack_n = '1') then
							CBC_state <= LOADKEY1;
						else 
							CBC_state <= ADDLOADKEY2;
						end if;
							
					when ADDLOADKEY2 =>
						CBC_state <= LOADKEY2;
					
					when LOADKEY2 =>
						if (ack_n = '1') then
							CBC_state <= LOADKEY2;
						else 
							CBC_state <= ADDLOADKEY3;
						end if;
							
					when ADDLOADKEY3 =>
						CBC_state <= LOADKEY3;
					
					when LOADKEY3 =>
						if (ack_n = '1') then
							CBC_state <= LOADKEY3;
						else 
							CBC_state <= ADDLOADIV0;
						end if;
							
					when ADDLOADIV0 =>
						CBC_state <= LOADIV0;
					
					when LOADIV0 =>
						if (ack_n = '1') then
							CBC_state <= LOADIV0;
						else 
							CBC_state <= ADDLOADIV1;
						end if;
							
					when ADDLOADIV1 =>
						CBC_state <= LOADIV1;
					
					when LOADIV1 =>
						if (ack_n = '1') then
							CBC_state <= LOADIV1;
						else 
							CBC_state <= ADDLOADIV2;
						end if;
							
					when ADDLOADIV2 =>
						CBC_state <= LOADIV2;
					
					when LOADIV2 =>
						if (ack_n = '1') then
							CBC_state <= LOADIV2;
						else 
							CBC_state <= ADDLOADIV3;
						end if;
							
					when ADDLOADIV3 =>
						CBC_state <= LOADIV3;
					
					when LOADIV3 =>
						if (ack_n = '1') then
							CBC_state <= LOADIV3;
						else 
							CBC_state <= ADDLOADP1_0;
						end if;
							
					when ADDLOADP1_0 =>
						CBC_state <= LOADP1_0;
					
					when LOADP1_0 =>
						if (ack_n = '1') then
							CBC_state <= LOADP1_0;
						else 
							CBC_state <= ADDLOADP1_1;
						end if;
							
					when ADDLOADP1_1 =>
						CBC_state <= LOADP1_1;
					
					when LOADP1_1 =>
						if (ack_n = '1') then
							CBC_state <= LOADP1_1;
						else 
							CBC_state <= ADDLOADP1_2;
						end if;
							
					when ADDLOADP1_2 =>
						CBC_state <= LOADP1_2;
					
					when LOADP1_2 =>
						if (ack_n = '1') then
							CBC_state <= LOADP1_2;
						else 
							CBC_state <= ADDLOADP1_3;
						end if;
							
					when ADDLOADP1_3 =>
						CBC_state <= LOADP1_3;
					
					when LOADP1_3 =>
						if (ack_n = '1') then
							CBC_state <= LOADP1_3;
						else 
							CBC_state <= CALCP1ADDLOADP2_0;
						end if;
							
					when CALCP1ADDLOADP2_0 =>
						CBC_state <= LOADP2_0;
					
					when LOADP2_0 =>
						if (ack_n = '1') then
							CBC_state <= LOADP2_0;
						else 
							CBC_state <= ADDLOADP2_1;
						end if;
							
					when ADDLOADP2_1 =>
						CBC_state <= LOADP2_1;
					
					when LOADP2_1 =>
						if (ack_n = '1') then
							CBC_state <= LOADP2_1;
						else 
							CBC_state <= ADDLOADP2_2;
						end if;
							
					when ADDLOADP2_2 =>
						CBC_state <= LOADP2_2;
					
					when LOADP2_2 =>
						if (ack_n = '1') then
							CBC_state <= LOADP2_2;
						else 
							CBC_state <= ADDLOADP2_3;
						end if;
							
					when ADDLOADP2_3 =>
						CBC_state <= LOADP2_3;
					
					when LOADP2_3 =>
						if (ack_n = '1') then
							CBC_state <= LOADP2_3;
						else 
							CBC_state <= WAIT4DC1;
						end if;
							
					when WAIT4DC1 =>
						if (IN_CALC_AES = '1') then
							CBC_state <= MVC12BUF;
						else
							CBC_state <= WAIT4DC1;
						end if;
							
					when MVC12BUF =>
						CBC_state <= CALCP2ADDLOADP3_0;
						
					when CALCP2ADDLOADP3_0 =>
						CBC_state <= LOADP3_0;
					
					when LOADP3_0 =>
						if (ack_n = '1') then
							CBC_state <= LOADP3_0;
						else 
							CBC_state <= ADDLOADP3_1;
						end if;
							
					when ADDLOADP3_1 =>
						CBC_state <= LOADP3_1;
					
					when LOADP3_1 =>
						if (ack_n = '1') then
							CBC_state <= LOADP3_1;
						else 
							CBC_state <= ADDLOADP3_2;
						end if;
							
					when ADDLOADP3_2 =>
						CBC_state <= LOADP3_2;
					
					when LOADP3_2 =>
						if (ack_n = '1') then
							CBC_state <= LOADP3_2;
						else 
							CBC_state <= ADDLOADP3_3;
						end if;
							
					when ADDLOADP3_3 =>
						CBC_state <= LOADP3_3;
					
					when LOADP3_3 =>
						if (ack_n = '1') then
							CBC_state <= LOADP3_3;
						else 
							CBC_state <= WAIT4DC2;
						end if;
							
					when WAIT4DC2 =>
						if (IN_CALC_AES = '1') then
							CBC_state <= MVC22BUF;
						else
							CBC_state <= WAIT4DC2;
						end if;
							
					when MVC22BUF =>
						CBC_state <= CALCP3ADDOUTC1_0;
						
					when CALCP3ADDOUTC1_0 =>
						CBC_state <= STOREC1_0;
					
					when STOREC1_0 =>
						if (ack_n = '1') then
							CBC_state <= STOREC1_0;
						else 
							CBC_state <= ADDOUTC1_1;
						end if;
							
					when ADDOUTC1_1 =>
						CBC_state <= STOREC1_1;
					
					when STOREC1_1 =>
						if (ack_n = '1') then
							CBC_state <= STOREC1_1;
						else 
							CBC_state <= ADDOUTC1_2;
						end if;
							
					when ADDOUTC1_2 =>
						CBC_state <= STOREC1_2;
					
					when STOREC1_2 =>
						if (ack_n = '1') then
							CBC_state <= STOREC1_2;
						else 
							CBC_state <= ADDOUTC1_3;
						end if;
							
					when ADDOUTC1_3 =>
						CBC_state <= STOREC1_3;
					
					when STOREC1_3 =>
						if (ack_n = '1') then
							CBC_state <= STOREC1_3;
						else 
							CBC_state <= WAIT4DC3;
						end if;
							
					when WAIT4DC3 =>
						if (IN_CALC_AES = '1') then
							CBC_state <= MVC32BUF;
						else
							CBC_state <= WAIT4DC3;
						end if;
							
					when MVC32BUF =>
						CBC_state <= ADDOUTC2_0;
						
					when ADDOUTC2_0 =>
						CBC_state <= STOREC2_0;
					
					when STOREC2_0 =>
						if (ack_n = '1') then
							CBC_state <= STOREC2_0;
						else 
							CBC_state <= ADDOUTC2_1;
						end if;
							
					when ADDOUTC2_1 =>
						CBC_state <= STOREC2_1;
					
					when STOREC2_1 =>
						if (ack_n = '1') then
							CBC_state <= STOREC2_1;
						else 
							CBC_state <= ADDOUTC2_2;
						end if;
							
					when ADDOUTC2_2 =>
						CBC_state <= STOREC2_2;
					
					when STOREC2_2 =>
						if (ack_n = '1') then
							CBC_state <= STOREC2_2;
						else 
							CBC_state <= ADDOUTC2_3;
						end if;
							
					when ADDOUTC2_3 =>
						CBC_state <= STOREC2_3;
					
					when STOREC2_3 =>
						if (ack_n = '1') then
							CBC_state <= STOREC2_3;
						else 
							CBC_state <= ADDOUTC3_0;
						end if;
							
					when ADDOUTC3_0 =>
						CBC_state <= STOREC3_0;
					
					when STOREC3_0 =>
						if (ack_n = '1') then
							CBC_state <= STOREC3_0;
						else 
							CBC_state <= ADDOUTC3_1;
						end if;
							
					when ADDOUTC3_1 =>
						CBC_state <= STOREC3_1;
					
					when STOREC3_1 =>
						if (ack_n = '1') then
							CBC_state <= STOREC3_1;
						else 
							CBC_state <= ADDOUTC3_2;
						end if;
							
					when ADDOUTC3_2 =>
						CBC_state <= STOREC3_2;
					
					when STOREC3_2 =>
						if (ack_n = '1') then
							CBC_state <= STOREC3_2;
						else 
							CBC_state <= ADDOUTC3_3;
						end if;
							
					when ADDOUTC3_3 =>
						CBC_state <= STOREC3_3;
					
					when STOREC3_3 =>
						if (ack_n = '1') then
							CBC_state <= STOREC3_3;
						else 
							CBC_state <= DONECBC;
						end if;
							
					when DONECBC =>
						CBC_state <= RESTINGSTATE;
						
					when others => null;
				end case;
			end if;
		end if;
	end process main;
	
	state <= CBC_state;
	mr <= '1' when (CBC_state = LOADKEY0 or CBC_state = LOADKEY1 or CBC_state = LOADKEY2 or CBC_state = LOADKEY3 or
	CBC_state = LOADIV0 or CBC_state = LOADIV1 or CBC_state = LOADIV2 or CBC_state = LOADIV3 or CBC_state = LOADP1_0 or
	CBC_state = LOADP1_1 or CBC_state = LOADP1_2 or CBC_state = LOADP1_3 or CBC_state = LOADP2_0 or CBC_state = LOADP2_1 or
	CBC_state = LOADP2_2 or CBC_state = LOADP2_3 or CBC_state = LOADP3_0 or CBC_state = LOADP3_1 or CBC_state = LOADP3_2 or CBC_state = LOADP3_3) else '0';
   mw <= '1' when (CBC_state = STOREC1_0 or CBC_state = STOREC1_1 or CBC_state = STOREC1_2 or CBC_state = STOREC1_3 or
	CBC_state = STOREC2_0 or CBC_state = STOREC2_1 or CBC_state = STOREC2_2 or CBC_state = STOREC2_3 or CBC_state = STOREC3_0 or
	CBC_state = STOREC3_1 or CBC_state = STOREC3_2 or CBC_state = STOREC3_3) else '0';
   AES_sel <= '1' when (CBC_state = MVC12BUF or CBC_state = CALCP2ADDLOADP3_0 or CBC_state = LOADP3_0 or CBC_state = MVC22BUF or CBC_state = CALCP3ADDOUTC1_0 or CBC_state = STOREC1_0) else '0';
	mr_sel <= '0' when (CBC_state = RESTINGSTATE) else '1';
	mw_sel <= '0' when (CBC_state = RESTINGSTATE) else '1';
	Dout_sel <= '0' when (CBC_state = RESTINGSTATE) else '1';
	Aout_sel <= '0' when (CBC_state = RESTINGSTATE) else '1';
	AES_kick <= '0' when (CBC_state = CALCP1ADDLOADP2_0 or CBC_state = CALCP2ADDLOADP3_0 or CBC_state = CALCP3ADDOUTC1_0) else '1';
	DONE_CBC <= '1' when (CBC_state = DONECBC) else '0';



end Behavioral;

