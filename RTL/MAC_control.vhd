----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:36:44 11/28/2021 
-- Design Name: 
-- Module Name:    MAC_control - Behavioral 
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

entity MAC_control is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ack_n : in  STD_LOGIC;
           state : out  STD_LOGIC_VECTOR (1 downto 0);
           busy : in  STD_LOGIC;
           req : in  STD_LOGIC;
           stop_n : out  STD_LOGIC);
end MAC_control;

architecture Behavioral of MAC_control is

	signal MAC_STATE : STD_LOGIC_VECTOR (1 downto 0);
	signal MAC_INIT_STATE : STD_LOGIC_VECTOR (1 downto 0) :="00";
	constant WAIT4REQ : STD_LOGIC_VECTOR (1 downto 0) := "00";
	constant WAIT4ACK : STD_LOGIC_VECTOR (1 downto 0) := "01";
	constant NEXT_MAC : STD_LOGIC_VECTOR (1 downto 0) := "11";
 


begin

	main : process (clk, reset)
	begin
	
		if (reset = '1') then
			MAC_STATE <= WAIT4REQ;
		elsif ((clk'event) and (clk = '1')) then
			case MAC_STATE is
				when WAIT4REQ =>
					if (req = '1') then
						MAC_STATE <= WAIT4ACK;
					else
						MAC_STATE <= WAIT4REQ;
					end if;
				when WAIT4ACK =>
					if (ack_n = '0') then
						MAC_STATE <= NEXT_MAC; 
					else
						MAC_STATE <= WAIT4ACK;
					end if;
				when NEXT_MAC =>
					MAC_STATE <= WAIT4REQ;
				when others => null;
			end case;
			MAC_INIT_STATE <= MAC_STATE;
		end if;
	end process main;
			
	state <= MAC_STATE;
	stop_n <= '0'	when ((ack_n = '1') and (MAC_INIT_STATE = WAIT4ACK) and (MAC_STATE = WAIT4ACK)) else '1';
	


end Behavioral;

