----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:46:56 09/14/2022 
-- Design Name: 
-- Module Name:    xor128bitwise - Behavioral 
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

entity xor128bitwise is
    Port ( string1 : in  STD_LOGIC_VECTOR (127 downto 0);
           string2 : in  STD_LOGIC_VECTOR (127 downto 0);
           Xor_out : out  STD_LOGIC_VECTOR (127 downto 0));
end xor128bitwise;

architecture Behavioral of xor128bitwise is

begin
	Xor_out <= string1 xor string2;

end Behavioral;

