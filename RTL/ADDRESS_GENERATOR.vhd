----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:49:14 12/24/2022 
-- Design Name: 
-- Module Name:    ADDRESS_GENERATOR - Behavioral 
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

entity ADDRESS_GENERATOR is
    Port ( clk : in  STD_LOGIC;
           state : in  STD_LOGIC_VECTOR (6 downto 0);
           address : out  STD_LOGIC_VECTOR (31 downto 0));
end ADDRESS_GENERATOR;

architecture Behavioral of ADDRESS_GENERATOR is

signal temp_state : std_logic_vector(6 downto 0);
signal temp_Aout : std_logic_vector(31 downto 0);
signal INIT : std_logic_vector(6 downto 0):= "0000000";
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

begin

	temp_state <= state;
	
	p1 : process(clk) is		
		begin
			if (clk'event and clk = '1') then
					if (temp_state = ADDLOADKEY0 or temp_state = LOADKEY0) then
						temp_Aout <= x"00800002";
					elsif (temp_state = ADDLOADKEY1 or temp_state = LOADKEY1)  then
						temp_Aout <= x"00800003";
					elsif (temp_state = ADDLOADKEY2 or temp_state = LOADKEY2) then
						temp_Aout <= x"00800004";
					elsif (temp_state = ADDLOADKEY3 or temp_state = LOADKEY3) then
						temp_Aout <= x"00800005";
					elsif (temp_state = ADDLOADIV0 or temp_state = LOADIV0) then
						temp_Aout <= x"00800006";
					elsif (temp_state = ADDLOADIV1 or temp_state = LOADIV1) then
						temp_Aout <= x"00800007";
					elsif (temp_state = ADDLOADIV2 or temp_state = LOADIV2) then
						temp_Aout <= x"00800008";
					elsif (temp_state = ADDLOADIV3 or temp_state = LOADIV3) then
						temp_Aout <= x"00800009";
					elsif (temp_state = ADDLOADP1_0 or temp_state = LOADP1_0) then
						temp_Aout <= x"0080000a";
					elsif (temp_state = ADDLOADP1_1 or temp_state = LOADP1_1) then
						temp_Aout <= x"0080000b";
					elsif (temp_state = ADDLOADP1_2 or temp_state = LOADP1_2) then
						temp_Aout <= x"0080000c";
					elsif (temp_state = ADDLOADP1_3 or temp_state = LOADP1_3) then
						temp_Aout <= x"0080000d";
					elsif (temp_state = CALCP1ADDLOADP2_0 or temp_state = LOADP2_0) then
						temp_Aout <= x"0080000e";
					elsif (temp_state = ADDLOADP2_1 or temp_state = LOADP2_1) then
						temp_Aout <= x"0080000f";
					elsif (temp_state = ADDLOADP2_2 or temp_state = LOADP2_2) then
						temp_Aout <= x"00800010";
					elsif (temp_state = ADDLOADP2_3 or temp_state = LOADP2_3) then
						temp_Aout <= x"00800011";
					elsif (temp_state = CALCP2ADDLOADP3_0 or temp_state = LOADP3_0) then
						temp_Aout <= x"00800012";
					elsif (temp_state = ADDLOADP3_1 or temp_state = LOADP3_1) then
						temp_Aout <= x"00800013";
					elsif (temp_state = ADDLOADP3_2 or temp_state = LOADP3_2) then
						temp_Aout <= x"00800014";
					elsif (temp_state = ADDLOADP3_3 or temp_state = LOADP3_3) then
						temp_Aout <= x"00800015";
					elsif (temp_state = CALCP3ADDOUTC1_0 or temp_state = STOREC1_0) then
						temp_Aout <= x"008003f4";
					elsif (temp_state = ADDOUTC1_1 or temp_state = STOREC1_1) then
						temp_Aout <= x"008003f5";
					elsif (temp_state = ADDOUTC1_2 or temp_state = STOREC1_2) then
						temp_Aout <= x"008003f6";
					elsif (temp_state = ADDOUTC1_3 or temp_state = STOREC1_3) then
						temp_Aout <= x"008003f7";
					elsif (temp_state = ADDOUTC2_0 or temp_state = STOREC2_0) then
						temp_Aout <= x"008003f8";
					elsif (temp_state = ADDOUTC2_1 or temp_state = STOREC2_1) then
						temp_Aout <= x"008003f9";
					elsif (temp_state = ADDOUTC2_2 or temp_state = STOREC2_2) then
						temp_Aout <= x"008003fa";
					elsif (temp_state = ADDOUTC2_3 or temp_state = STOREC2_3) then
						temp_Aout <= x"008003fb";
					elsif (temp_state = ADDOUTC3_0 or temp_state = STOREC3_0) then
						temp_Aout <= x"008003fc";
					elsif (temp_state = ADDOUTC3_1 or temp_state = STOREC3_1) then
						temp_Aout <= x"008003fd";
					elsif (temp_state = ADDOUTC3_2 or temp_state = STOREC3_2) then
						temp_Aout <= x"008003fe";
					elsif (temp_state = ADDOUTC3_3 or temp_state = STOREC3_3) then
						temp_Aout <= x"008003ff";
					else
						temp_Aout <= x"00000000";
					end if;
			end if;
		end process p1;

	address <= temp_Aout;


end Behavioral;

