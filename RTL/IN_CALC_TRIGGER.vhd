----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:10:15 12/20/2022 
-- Design Name: 
-- Module Name:    IN_CALC_TRIGGER - Behavioral 
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

entity IN_CALC_TRIGGER is
    Port ( clk : in  STD_LOGIC;
           calculation_en : in  STD_LOGIC;
           done : in  STD_LOGIC;
           in_calc : out  STD_LOGIC;
           ce_bit : out  STD_LOGIC);
end IN_CALC_TRIGGER;

architecture Behavioral of IN_CALC_TRIGGER is

signal temp_in_calc_bit : std_logic:= '1';
signal temp_ce_bit : std_logic:= '0';

begin

	p1 : process(clk) is		
	begin
		if (clk'event and clk = '1') then
			if calculation_en = '0' then
				temp_in_calc_bit <= '0';
			end if;
			if done = '1' then
				if temp_in_calc_bit = '0' then
					temp_in_calc_bit <= '1';
				end if;
			end if;
		end if;
	
	end process p1;

in_calc <= temp_in_calc_bit;
ce_bit <= done when temp_in_calc_bit = '0' else '0';


end Behavioral;

