----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:03:32 01/10/2022 
-- Design Name: 
-- Module Name:    SHIFT_Env - Behavioral 
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

entity SHIFT_Env is
    Port ( shift : in  STD_LOGIC;
           right : in  STD_LOGIC;
           Data_In : in  STD_LOGIC_VECTOR (31 downto 0);
           Data_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end SHIFT_Env;

architecture Behavioral of SHIFT_Env is

begin

	Data_Out (31 downto 0) <= Data_In(30 downto 0) & "0" when (shift = '1' and right = '0') else "0" & Data_In(31 downto 1) when (shift = '1' and right = '1') else Data_In(31 downto 0);

end Behavioral;

