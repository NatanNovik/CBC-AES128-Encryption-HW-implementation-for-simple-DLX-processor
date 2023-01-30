----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:33:16 12/19/2022 
-- Design Name: 
-- Module Name:    Buffer_IN - Behavioral 
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

entity Buffer_IN is
    Port ( clk : in  STD_LOGIC;
           Din : in  STD_LOGIC_VECTOR (31 downto 0);
           state : in  STD_LOGIC_VECTOR (6 downto 0);
           key : out  STD_LOGIC_VECTOR (127 downto 0);
           IV : out  STD_LOGIC_VECTOR (127 downto 0);
           plaintext : out  STD_LOGIC_VECTOR (127 downto 0));
end Buffer_IN;

architecture Behavioral of Buffer_IN is

	component REG32CE is
		port(Din : in std_logic_vector(31 downto 0); 
			  clk, ce : in std_logic;
			  Dout : out std_logic_vector(31 downto 0));
	end component;
	
	signal temp_IV : std_logic_vector(127 downto 0);
	signal temp_key : std_logic_vector(127 downto 0);
	signal temp_plaintext : std_logic_vector(127 downto 0);
	signal ce_reg : std_logic_vector(11 downto 0):= "000000000000";
	signal temp_Din : std_logic_vector(31 downto 0);
	signal temp_state : std_logic_vector(6 downto 0);
	signal INIT : std_logic_vector(6 downto 0):= "0000000";
	signal LOADKEY0 : std_logic_vector(6 downto 0):= "0000011";
	signal LOADKEY1 : std_logic_vector(6 downto 0):= "0000110";
	signal LOADKEY2 : std_logic_vector(6 downto 0):= "0000101";
	signal LOADKEY3 : std_logic_vector(6 downto 0):= "0001111";
	signal LOADIV0 : std_logic_vector(6 downto 0):= "0001100";
	signal LOADIV1 : std_logic_vector(6 downto 0):= "0001001";
	signal LOADIV2 : std_logic_vector(6 downto 0):= "0001010";
	signal LOADIV3 : std_logic_vector(6 downto 0):= "0011000";
	signal LOADP1_0 : std_logic_vector(6 downto 0):= "0011011";
	signal LOADP1_1 : std_logic_vector(6 downto 0):= "0011110";
	signal LOADP1_2 : std_logic_vector(6 downto 0):= "0011101";
	signal LOADP1_3 : std_logic_vector(6 downto 0):= "0010111";
	signal LOADP2_0 : std_logic_vector(6 downto 0):= "0010100";
	signal LOADP2_1 : std_logic_vector(6 downto 0):= "0010001";
	signal LOADP2_2 : std_logic_vector(6 downto 0):= "0010010";
	signal LOADP2_3 : std_logic_vector(6 downto 0):= "0110000";
	signal LOADP3_0 : std_logic_vector(6 downto 0):= "0110110";
	signal LOADP3_1 : std_logic_vector(6 downto 0):= "0110101";
	signal LOADP3_2 : std_logic_vector(6 downto 0):= "0111111";
	signal LOADP3_3 : std_logic_vector(6 downto 0):= "0111100";
	

begin

	temp_state<=state;
	temp_Din(31 downto 24) <= Din(7 downto 0);
	temp_Din(23 downto 16) <= Din(15 downto 8);
	temp_Din(15 downto 8) <= Din(23 downto 16);
	temp_Din(7 downto 0) <= Din(31 downto 24);

	ce_reg(0) <= '1' when temp_state = LOADKEY0 else '0';
	reg0 :  REG32CE
		port map (Din=>temp_Din, clk=>clk, ce=>ce_reg(0), Dout=>temp_key(127 downto 96));
		
	ce_reg(1) <= '1' when temp_state = LOADKEY1 else '0';
	reg1 : REG32CE
		port map (Din=>temp_Din, clk=>clk, ce=>ce_reg(1), Dout=>temp_key(95 downto 64));
		
	ce_reg(2) <= '1' when temp_state = LOADKEY2 else '0';
	reg2 : REG32CE
		port map (Din=>temp_Din, clk=>clk, ce=>ce_reg(2), Dout=>temp_key(63 downto 32));
		
	ce_reg(3) <= '1' when temp_state = LOADKEY3 else '0';
	reg3 : REG32CE
		port map (Din=>temp_Din, clk=>clk, ce=>ce_reg(3), Dout=>temp_key(31 downto 0));
		
	ce_reg(4) <= '1' when temp_state = LOADIV0 else '0';
	reg4 : REG32CE
		port map (Din=>temp_Din, clk=>clk, ce=>ce_reg(4), Dout=>temp_IV(127 downto 96));
		
	ce_reg(5) <= '1' when temp_state = LOADIV1 else '0';
	reg5 : REG32CE
		port map (Din=>temp_Din, clk=>clk, ce=>ce_reg(5), Dout=>temp_IV(95 downto 64));
		
	ce_reg(6) <= '1' when temp_state = LOADIV2 else '0';
	reg6 : REG32CE
		port map (Din=>temp_Din, clk=>clk, ce=>ce_reg(6), Dout=>temp_IV(63 downto 32));
		
	ce_reg(7) <= '1' when temp_state = LOADIV3 else '0';
	reg7 : REG32CE
		port map (Din=>temp_Din, clk=>clk, ce=>ce_reg(7), Dout=>temp_IV(31 downto 0));
		
	ce_reg(8) <= '1' when (temp_state = LOADP1_0 or temp_state = LOADP2_0 or temp_state = LOADP3_0) else '0';
	reg8 : REG32CE
		port map (Din=>temp_Din, clk=>clk, ce=>ce_reg(8), Dout=>temp_plaintext(127 downto 96));
		
	ce_reg(9) <= '1' when (temp_state = LOADP1_1 or temp_state = LOADP2_1 or temp_state = LOADP3_1) else '0';
	reg9 : REG32CE
		port map (Din=>temp_Din, clk=>clk, ce=>ce_reg(9), Dout=>temp_plaintext(95 downto 64));
		
	ce_reg(10) <= '1' when (temp_state = LOADP1_2 or temp_state = LOADP2_2 or temp_state = LOADP3_2) else '0';
	reg10 : REG32CE
		port map (Din=>temp_Din, clk=>clk, ce=>ce_reg(10), Dout=>temp_plaintext(63 downto 32));
		
	ce_reg(11) <= '1' when (temp_state = LOADP1_3 or temp_state = LOADP2_3 or temp_state = LOADP3_3) else '0';
	reg11 : REG32CE
		port map (Din=>temp_Din, clk=>clk, ce=>ce_reg(11), Dout=>temp_plaintext(31 downto 0));
		
		
--	p1 : process(clk) is		
--	begin
--		if (clk'event and clk = '1') then
--			temp_state<=state;
--			temp_Din <= Din;
--		end if;
--	
--	end process p1;

	key<= temp_key;
	IV<= temp_IV;
	plaintext<= temp_plaintext;

				

end Behavioral;

