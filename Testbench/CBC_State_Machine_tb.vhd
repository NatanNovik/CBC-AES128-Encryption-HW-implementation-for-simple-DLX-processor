--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:38:52 01/16/2023
-- Design Name:   
-- Module Name:   C:/Users/natan/Xilinx/DLX_processor_w_CBC/CBC_State_Machine_tb.vhd
-- Project Name:  DLX_processor_w_CBC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CBC_State_Machine
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
 
ENTITY CBC_State_Machine_tb IS
END CBC_State_Machine_tb;
 
ARCHITECTURE behavior OF CBC_State_Machine_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CBC_State_Machine
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         CBC_step_en : IN  std_logic;
         ack_n : IN  std_logic;
         IN_CALC_AES : IN  std_logic;
         state : OUT  std_logic_vector(6 downto 0);
         mr : OUT  std_logic;
         mw : OUT  std_logic;
         AES_sel : OUT  std_logic;
         mr_sel : OUT  std_logic;
         mw_sel : OUT  std_logic;
         Dout_sel : OUT  std_logic;
         Aout_sel : OUT  std_logic;
         AES_kick : OUT  std_logic;
         DONE_CBC : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal CBC_step_en : std_logic := '0';
   signal ack_n : std_logic := '0';
   signal IN_CALC_AES : std_logic := '0';

 	--Outputs
   signal state : std_logic_vector(6 downto 0);
   signal mr : std_logic;
   signal mw : std_logic;
   signal AES_sel : std_logic;
   signal mr_sel : std_logic;
   signal mw_sel : std_logic;
   signal Dout_sel : std_logic;
   signal Aout_sel : std_logic;
   signal AES_kick : std_logic;
   signal DONE_CBC : std_logic;

   -- Clock period definitions
   constant clk_period : time := 200 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CBC_State_Machine PORT MAP (
          clk => clk,
          reset => reset,
          CBC_step_en => CBC_step_en,
          ack_n => ack_n,
          IN_CALC_AES => IN_CALC_AES,
          state => state,
          mr => mr,
          mw => mw,
          AES_sel => AES_sel,
          mr_sel => mr_sel,
          mw_sel => mw_sel,
          Dout_sel => Dout_sel,
          Aout_sel => Aout_sel,
          AES_kick => AES_kick,
          DONE_CBC => DONE_CBC
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
		-- plaintext <= x"340737e0a29831318d305a88a8f64332";
		-- key <= x"3c4fcf098815f7aba6d2ae2816157e2b";
		reset <= '1';
		CBC_step_en <= '0';
		ack_n <= '1';
		IN_CALC_AES <= '1';
      wait for 202 ns;
		reset <= '0';
		CBC_step_en <= '1';
		wait for clk_period*1;
		CBC_step_en <= '0';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		IN_CALC_AES <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*6;
		IN_CALC_AES <= '1';
		wait for clk_period*1;
		IN_CALC_AES <= '0';
		wait for clk_period*3;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*6;
		IN_CALC_AES <= '1';
		wait for clk_period*1;
		IN_CALC_AES <= '0';
		wait for clk_period*3;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*6;
		IN_CALC_AES <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*4;
		ack_n <= '0';
		wait for clk_period*1;
		ack_n <= '1';
		wait for clk_period*5;
		


      -- insert stimulus here 

      wait;
   end process;

END;
