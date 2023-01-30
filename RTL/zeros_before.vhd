----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:16:29 01/03/2022 
-- Design Name: 
-- Module Name:    zeros_before - Behavioral 
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

entity zeros_before is
    Port ( LBS_IN : in  STD_LOGIC;
           zeros_and_lbs : out  STD_LOGIC_VECTOR (31 downto 0));
end zeros_before;

architecture Behavioral of zeros_before is

begin

	zeros_and_lbs <= X"0000000"&"000"&LBS_IN;

end Behavioral;

