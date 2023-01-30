--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:25:10 12/21/2022
-- Design Name:   
-- Module Name:   C:/Users/natan/Xilinx/CBC_Proj/Buffer_OUT_tb.vhd
-- Project Name:  CBC_Proj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Buffer_OUT
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Buffer_OUT_tb IS
END Buffer_OUT_tb;
 
ARCHITECTURE behavior OF Buffer_OUT_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Buffer_OUT
    PORT(
         clk : IN  std_logic;
         ciphertext : IN  std_logic_vector(127 downto 0);
         state : IN  std_logic_vector(6 downto 0);
         Dout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal ciphertext : std_logic_vector(127 downto 0) := (others => '0');
   signal state : std_logic_vector(6 downto 0) := (others => '0');

 	--Outputs
   signal Dout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 200 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Buffer_OUT PORT MAP (
          clk => clk,
          ciphertext => ciphertext,
          state => state,
          Dout => Dout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for 202 ns;
		ciphertext<=x"320b6a19978511dcfb09dc021d842539";
		state<="0110000";
		wait for clk_period*4;
		state<="0110001";
		wait for clk_period*1;
		state<="0110011";
		wait for clk_period*1;
		state<="0110010";
		wait for clk_period*1;
		ciphertext<=x"00000000000000000000000000000000";
		state<="0110110";
      wait for clk_period*4;
		state<="0110100";
      wait for clk_period*1;
		state<="0110101";
      wait for clk_period*4;
		ciphertext<=x"11116a19000011dc1111dc0200002539";
		state<="0110111";
      wait for clk_period*1;
		state<="0111111";
      wait for clk_period*4;
		state<="0111110";
      wait for clk_period*1;
		state<="0111100";
      wait for clk_period*4;
		state<="0111101";
      wait for clk_period*1;
		state<="0111001";
      wait for clk_period*1;
		state<="0111011";
      wait for clk_period*1;
		state<="0111010";
      wait for clk_period*4;
		state<="0111000";
      wait for clk_period*1;
		state<="0101000";
      wait for clk_period*4;
		state<="0101001";
      wait for clk_period*1;
		ciphertext<=x"22226a19888811dc2222dc0288882539";
		state<="0101011";
      wait for clk_period*4;
		state<="0101010";
      wait for clk_period*1;
		state<="0101110";
      wait for clk_period*4;
		state<="0101100";
      wait for clk_period*1;
		state<="0101101";
      wait for clk_period*1;
		state<="0101111";
      wait for clk_period*1;
		state<="0100111";
      wait for clk_period*4;
		state<="0100110";
      wait for clk_period*1;
		state<="0100100";
      wait for clk_period*4;
		state<="0100101";
      wait for clk_period*1;
		state<="0100001";
      wait for clk_period*4;
		state<="0100011";
      wait for clk_period*1;
		state<="0100010";
      wait for clk_period*4;
		state<="0100000";
      wait for clk_period*1;
		state<="1100000";
      wait for clk_period*4;
		state<="1100001";
      wait for clk_period*1;
		state<="1100011";
      wait for clk_period*4;
		state<="1100010";
      wait for clk_period*1;
		state<="1100110";
      wait for clk_period*4;
		state<="1100100";
      wait for clk_period*1;
		state<="1100101";
      wait for clk_period*4;
		state<="0000000";
		wait for clk_period*20;
		
		
      -- insert stimulus here 

   end process;

END;
