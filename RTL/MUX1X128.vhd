----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:03:46 01/07/2023 
-- Design Name: 
-- Module Name:    MUX1X128 - Behavioral 
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

entity MUX1X128 is
    Port ( string1 : in  STD_LOGIC_VECTOR (127 downto 0);
           string2 : in  STD_LOGIC_VECTOR (127 downto 0);
           out_string : out  STD_LOGIC_VECTOR (127 downto 0);
           sel : in  STD_LOGIC);
end MUX1X128;

architecture Behavioral of MUX1X128 is

begin

p_mux : process(string1,string2,sel)
begin
  case sel is
    when '1' => out_string <= string2 ;
    when others => out_string <= string1 ;
  end case;
end process p_mux;


end Behavioral;

