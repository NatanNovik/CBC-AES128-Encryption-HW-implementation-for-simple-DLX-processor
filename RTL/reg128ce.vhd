----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:00:32 09/14/2022 
-- Design Name: 
-- Module Name:    reg128ce - Behavioral 
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

entity reg128ce is
    Port ( Din : in  STD_LOGIC_VECTOR (127 downto 0);
           clk : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           Dout : out  STD_LOGIC_VECTOR (127 downto 0) := X"00000000000000000000000000000000" );
end reg128ce;

architecture Behavioral of reg128ce is

begin

main: process(CLK,CE)
begin
  if (clk'event and clk='1') then
      if ce = '1'            then Dout <= Din;
		                       
	   end if;
   end if;
 end process main;

end Behavioral;

