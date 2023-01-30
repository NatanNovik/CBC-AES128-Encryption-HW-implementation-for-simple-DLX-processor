--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:36:43 12/20/2022
-- Design Name:   
-- Module Name:   C:/Users/natan/Xilinx/CBC_Proj/IN_CALC_TRIGGER_tb.vhd
-- Project Name:  CBC_Proj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IN_CALC_TRIGGER
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
 
ENTITY IN_CALC_TRIGGER_tb IS
END IN_CALC_TRIGGER_tb;
 
ARCHITECTURE behavior OF IN_CALC_TRIGGER_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IN_CALC_TRIGGER
    PORT(
         clk : IN  std_logic;
         calculation_en : IN  std_logic;
         done : IN  std_logic;
         in_calc : OUT  std_logic;
         ce_bit : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal calculation_en : std_logic := '0';
   signal done : std_logic := '0';

 	--Outputs
   signal in_calc : std_logic;
   signal ce_bit : std_logic;

   -- Clock period definitions
   constant clk_period : time := 200 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IN_CALC_TRIGGER PORT MAP (
          clk => clk,
          calculation_en => calculation_en,
          done => done,
          in_calc => in_calc,
          ce_bit => ce_bit
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
		calculation_en <= '1';
      wait for 202 ns;	
      wait for clk_period*10;
		calculation_en <= '0';
		wait for clk_period*1;
		calculation_en <= '1';
		wait for clk_period*10;
		done <= '1';
		wait for clk_period*1;
		done <= '0';
		wait for clk_period*10;
		done <= '1';
		wait for clk_period*1;
		done <= '0';
		wait for clk_period*10;

      -- insert stimulus here 


   end process;

END;
