----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:18:04 12/21/2022 
-- Design Name: 
-- Module Name:    Buffer_OUT - Behavioral 
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

entity Buffer_OUT is
    Port ( clk : in  STD_LOGIC;
           ciphertext : in  STD_LOGIC_VECTOR (127 downto 0);
           state : in  STD_LOGIC_VECTOR (6 downto 0);
           Dout : out  STD_LOGIC_VECTOR (31 downto 0));
end Buffer_OUT;

architecture Behavioral of Buffer_OUT is

	component REG32CE is
		port(Din : in std_logic_vector(31 downto 0); 
			  clk, ce : in std_logic;
			  Dout : out std_logic_vector(31 downto 0));
	end component;
	
signal temp_cipher : std_logic_vector(127 downto 0);
signal ce_reg : std_logic_vector(1 downto 0):= "00";
signal temp_state : std_logic_vector(6 downto 0);
signal temp_Dout : std_logic_vector(31 downto 0);
signal temp_Dout_0 : std_logic_vector(31 downto 0);
signal temp_Dout_1 : std_logic_vector(31 downto 0);
signal temp_Dout_2 : std_logic_vector(31 downto 0);
signal temp_Dout_3 : std_logic_vector(31 downto 0);
signal temp_Dout_4 : std_logic_vector(31 downto 0);
signal temp_Dout_5 : std_logic_vector(31 downto 0);
signal temp_Dout_6 : std_logic_vector(31 downto 0);
signal temp_Dout_7 : std_logic_vector(31 downto 0);
signal INIT : std_logic_vector(6 downto 0):= "0000000";
signal MVC12BUF : std_logic_vector(6 downto 0):= "0110011";
signal MVC22BUF : std_logic_vector(6 downto 0):= "0111001";
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
	temp_cipher <= ciphertext;

	ce_reg(0) <= '1' when (temp_state = MVC12BUF or temp_state = MVC32BUF) else '0';
	reg0 :  REG32CE
		port map (Din=>temp_cipher(31 downto 0), clk=>clk, ce=>ce_reg(0), Dout=>temp_Dout_0);
		
	reg1 : REG32CE
		port map (Din=>temp_cipher(63 downto 32), clk=>clk, ce=>ce_reg(0), Dout=>temp_Dout_1);
		
	reg2 : REG32CE
		port map (Din=>temp_cipher(95 downto 64), clk=>clk, ce=>ce_reg(0), Dout=>temp_Dout_2);
		
	reg3 : REG32CE
		port map (Din=>temp_cipher(127 downto 96), clk=>clk, ce=>ce_reg(0), Dout=>temp_Dout_3);
		
	ce_reg(1) <= '1' when temp_state = MVC22BUF else '0';
	reg4 : REG32CE
		port map (Din=>temp_cipher(31 downto 0), clk=>clk, ce=>ce_reg(1), Dout=>temp_Dout_4);
		
	reg5 : REG32CE
		port map (Din=>temp_cipher(63 downto 32), clk=>clk, ce=>ce_reg(1), Dout=>temp_Dout_5);
		
	reg6 : REG32CE
		port map (Din=>temp_cipher(95 downto 64), clk=>clk, ce=>ce_reg(1), Dout=>temp_Dout_6);
		
	reg7 : REG32CE
		port map (Din=>temp_cipher(127 downto 96), clk=>clk, ce=>ce_reg(1), Dout=>temp_Dout_7);
		
	p1 : process(clk) is		
		begin
			if (clk'event and clk = '1') then
					if (temp_state = CALCP3ADDOUTC1_0 or temp_state = STOREC1_0)then
						temp_Dout <= temp_Dout_3;
					elsif (temp_state = ADDOUTC1_1 or temp_state = STOREC1_1) then
						temp_Dout <= temp_Dout_2;
					elsif (temp_state = ADDOUTC1_2 or temp_state = STOREC1_2) then
						temp_Dout <= temp_Dout_1;
					elsif (temp_state = ADDOUTC1_3 or temp_state = STOREC1_3) then
						temp_Dout <= temp_Dout_0;
					elsif (temp_state = ADDOUTC2_0 or temp_state = STOREC2_0) then
						temp_Dout <= temp_Dout_7;
					elsif (temp_state = ADDOUTC2_1 or temp_state = STOREC2_1) then
						temp_Dout <= temp_Dout_6;
					elsif (temp_state = ADDOUTC2_2 or temp_state = STOREC2_2) then
						temp_Dout <= temp_Dout_5;
					elsif (temp_state = ADDOUTC2_3 or temp_state = STOREC2_3) then
						temp_Dout <= temp_Dout_4;
					elsif (temp_state = ADDOUTC3_0 or temp_state = STOREC3_0) then
						temp_Dout <= temp_Dout_3;
					elsif (temp_state = ADDOUTC3_1 or temp_state = STOREC3_1) then
						temp_Dout <= temp_Dout_2;
					elsif (temp_state = ADDOUTC3_2 or temp_state = STOREC3_2) then
						temp_Dout <= temp_Dout_1;
					elsif (temp_state = ADDOUTC3_3 or temp_state = STOREC3_3) then
						temp_Dout <= temp_Dout_0;
					else 
						temp_Dout <= x"00000000";
					end if;
			end if;
		end process p1;

	Dout(7 downto 0) <= temp_Dout(31 downto 24);
	Dout(15 downto 8) <= temp_Dout(23 downto 16);
	Dout(23 downto 16) <= temp_Dout(15 downto 8);
	Dout(31 downto 24) <= temp_Dout(7 downto 0);

end Behavioral;

