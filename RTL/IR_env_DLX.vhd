----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:49:20 01/17/2022 
-- Design Name: 
-- Module Name:    IR_env_DLX - Behavioral 
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

entity IR_env_DLX is
    Port ( DI : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           IR_ce : in  STD_LOGIC;
           itype : in  STD_LOGIC;
           jlink : in  STD_LOGIC;
           IR : out  STD_LOGIC_VECTOR (31 downto 0);
           rs1 : out  STD_LOGIC_VECTOR (4 downto 0);
           rs2 : out  STD_LOGIC_VECTOR (4 downto 0);
           rd : out  STD_LOGIC_VECTOR (4 downto 0);
           opcode : out  STD_LOGIC_VECTOR (5 downto 0);
           simm : out  STD_LOGIC_VECTOR (31 downto 0);
           ALUF : out  STD_LOGIC_VECTOR (2 downto 0));
end IR_env_DLX;

architecture Behavioral of IR_env_DLX is

signal rd_temp: std_logic_vector (4 downto 0);
signal ir_temp: STD_LOGIC_VECTOR (31 downto 0);
begin

	main: process(clk)
	begin
		if (clk'event and clk = '1') then
			if (IR_ce = '1') then
				ir_temp<= DI;
			end if;
		end if;
				
	end process main;			
			
	
				
	opcode <= ir_temp(31 downto 26);
	rs1 <= ir_temp(25 downto 21);
	rs2 <= ir_temp(20 downto 16);
	simm(15 downto 0) <= ir_temp(15 downto 0);	
	IR <= ir_temp(31 downto 0);
	rd_temp <= ir_temp(15 downto 11) when (ir_temp(31 downto 26) = "000000") else ir_temp(20 downto 16);
	ALUF <= ir_temp(2 downto 0) when (ir_temp(31 downto 26) = "000000") else ir_temp(28 downto 26);
	rd <= "11111" when (jlink = '1') else rd_temp;
	simm(31 downto 16) <= "0000000000000000" when (ir_temp(15)='0') else "1111111111111111";
				
				
	



end Behavioral;

