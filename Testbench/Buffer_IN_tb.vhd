--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:49:41 12/19/2022
-- Design Name:   
-- Module Name:   C:/Users/natan/Xilinx/CBC_Proj/Buffer_IN_tb.vhd
-- Project Name:  CBC_Proj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Buffer_IN
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
 
ENTITY Buffer_IN_tb IS
END Buffer_IN_tb;
 
ARCHITECTURE behavior OF Buffer_IN_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Buffer_IN
    PORT(
         clk : IN  std_logic;
         Din : IN  std_logic_vector(31 downto 0);
         state : IN  std_logic_vector(6 downto 0);
         key : OUT  std_logic_vector(127 downto 0);
         IV : OUT  std_logic_vector(127 downto 0);
         plaintext : OUT  std_logic_vector(127 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal Din : std_logic_vector(31 downto 0) := (others => '0');
   signal state : std_logic_vector(6 downto 0) := (others => '0');

 	--Outputs
   signal key : std_logic_vector(127 downto 0);
   signal IV : std_logic_vector(127 downto 0);
   signal plaintext : std_logic_vector(127 downto 0);

   -- Clock period definitions
   constant clk_period : time := 200 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Buffer_IN PORT MAP (
          clk => clk,
          Din => Din,
          state => state,
          key => key,
          IV => IV,
          plaintext => plaintext
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
		Din<=x"00000000";
		state<="0000001";
		wait for clk_period*1;
		state<="0000011";
      wait for clk_period*3;
		Din<=x"11111111";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0000010";
		wait for clk_period*1;
		state<="0000110";
      wait for clk_period*3;
		Din<=x"22222222";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0000100";
		wait for clk_period*1;
		state<="0000101";
      wait for clk_period*3;
		Din<=x"33333333";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0000111";
		wait for clk_period*1;
		state<="0001111";
      wait for clk_period*3;
		Din<=x"44444444";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0001110";
		wait for clk_period*1;
		state<="0001100";
      wait for clk_period*3;
		Din<=x"55555555";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0001101";
		wait for clk_period*1;
		state<="0001001";
      wait for clk_period*3;
		Din<=x"66666666";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0001011";
		wait for clk_period*1;
		state<="0001010";
      wait for clk_period*3;
		Din<=x"77777777";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0001000";
		wait for clk_period*1;
		state<="0011000";
      wait for clk_period*3;
		Din<=x"88888888";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0011001";
		wait for clk_period*1;
		state<="0011011";
      wait for clk_period*3;
		Din<=x"99999999";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0011010";
		wait for clk_period*1;
		state<="0011110";
      wait for clk_period*3;
		Din<=x"aaaaaaaa";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0011100";
		wait for clk_period*1;
		state<="0011101";
      wait for clk_period*3;
		Din<=x"bbbbbbbb";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0011111";
		wait for clk_period*1;
		state<="0010111";
      wait for clk_period*3;
		Din<=x"cccccccc";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0010110";
      wait for clk_period*1;
		state<="0010100";
      wait for clk_period*3;
		Din<=x"22222222";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0010101";
      wait for clk_period*1;
		state<="0010001";
      wait for clk_period*3;
		Din<=x"aaaaaaaa";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0010011";
      wait for clk_period*1;
		state<="0010010";
      wait for clk_period*3;
		Din<=x"77777777";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0010000";
      wait for clk_period*1;
		state<="0110000";
      wait for clk_period*3;
		Din<=x"aaaaaaaa";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0110001";
      wait for clk_period*2;
		state<="0110011";
      wait for clk_period*1;
		state<="0110010";
      wait for clk_period*1;
		state<="0110110";
      wait for clk_period*3;
		Din<=x"cccccccc";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0110100";
		wait for clk_period*1;
		state<="0110101";
      wait for clk_period*3;
		Din<=x"11111111";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0110111";
		wait for clk_period*1;
		state<="0111111";
      wait for clk_period*3;
		Din<=x"ffffffff";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0111110";
		wait for clk_period*1;
		state<="0111100";
      wait for clk_period*3;
		Din<=x"77777777";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0111101";
		wait for clk_period*2;
		state<="0111001";
      wait for clk_period*10;

		
		
      -- insert stimulus here 

      wait;
   end process;

END;
