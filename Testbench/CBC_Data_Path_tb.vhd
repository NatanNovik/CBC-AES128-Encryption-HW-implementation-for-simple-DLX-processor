-- Vhdl test bench created from schematic C:\Users\natan\Xilinx\CBC_Proj\CBC_Data_Path.sch - Mon Jan 09 19:12:10 2023
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY CBC_Data_Path_CBC_Data_Path_sch_tb IS
END CBC_Data_Path_CBC_Data_Path_sch_tb;
ARCHITECTURE behavioral OF CBC_Data_Path_CBC_Data_Path_sch_tb IS 

   COMPONENT CBC_Data_Path
   PORT( clk	:	IN	STD_LOGIC; 
          Din	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          state	:	IN	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          IN_CALC_AES	:	OUT	STD_LOGIC; 
          Dout	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Aout	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          AES_kick	:	IN	STD_LOGIC; 
          AES_sel	:	IN	STD_LOGIC; 
          DONE_AES	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL Din	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL state	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL IN_CALC_AES	:	STD_LOGIC;
   SIGNAL Dout	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Aout	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL AES_kick	:	STD_LOGIC;
   SIGNAL AES_sel	:	STD_LOGIC;
   SIGNAL DONE_AES	:	STD_LOGIC;
	
	constant clk_period : time := 200 ns;

BEGIN

   UUT: CBC_Data_Path PORT MAP(
		clk => clk, 
		Din => Din, 
		state => state, 
		IN_CALC_AES => IN_CALC_AES, 
		Dout => Dout, 
		Aout => Aout, 
		AES_kick => AES_kick, 
		AES_sel => AES_sel, 
		DONE_AES => DONE_AES
   );

-- *** Test Bench - User Defined Section ***
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
		state<="0000000";
		AES_kick<='1';
		AES_sel<='0';
		Din<=x"00000000";
      wait for 202 ns;
		state<="0000001";
		wait for clk_period*1;
		state<="0000011";
      wait for clk_period*3;
		Din<=x"16157e2b";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0000010";
		wait for clk_period*1;
		state<="0000110";
      wait for clk_period*3;
		Din<=x"a6d2ae28";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0000100";
		wait for clk_period*1;
		state<="0000101";
      wait for clk_period*3;
		Din<=x"8815f7ab";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0000111";
		wait for clk_period*1;
		state<="0001111";
      wait for clk_period*3;
		Din<=x"3c4fcf09";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0001110";
		wait for clk_period*1;
		state<="0001100";
      wait for clk_period*3;
		Din<=x"00000000";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0001101";
		wait for clk_period*1;
		state<="0001001";
      wait for clk_period*3;
		Din<=x"00000000";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0001011";
		wait for clk_period*1;
		state<="0001010";
      wait for clk_period*3;
		Din<=x"00000000";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0001000";
		wait for clk_period*1;
		state<="0011000";
      wait for clk_period*3;
		Din<=x"00000000";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0011001";
		wait for clk_period*1;
		state<="0011011";
      wait for clk_period*3;
		Din<=x"a8f64332";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0011010";
		wait for clk_period*1;
		state<="0011110";
      wait for clk_period*3;
		Din<=x"8d305a88";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0011100";
		wait for clk_period*1;
		state<="0011101";
      wait for clk_period*3;
		Din<=x"a2983131";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0011111";
		wait for clk_period*1;
		state<="0010111";
      wait for clk_period*3;
		Din<=x"340737e0";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0010110";
		AES_kick<='0';
      wait for clk_period*1;
		AES_kick<='1';
		state<="0010100";
      wait for clk_period*3;
		Din<=x"a8f64332";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0010101";
      wait for clk_period*1;
		state<="0010001";
      wait for clk_period*3;
		Din<=x"8d305a88";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0010011";
      wait for clk_period*1;
		state<="0010010";
      wait for clk_period*3;
		Din<=x"a2983131";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0010000";
      wait for clk_period*1;
		state<="0110000";
      wait for clk_period*3;
		Din<=x"340737e0";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0110001";
      wait for clk_period*1;
		while IN_CALC_AES = '0' loop
			wait for clk_period*1;
		end loop;
		state<="0110011";
		AES_sel<='1';
      wait for clk_period*1;
		state<="0110010";
		AES_kick<='0';
      wait for clk_period*1;
		state<="0110110";
		AES_kick<='1';
      wait for clk_period*3;
		Din<=x"a8f64332";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0110100";
		wait for clk_period*1;
		state<="0110101";
      wait for clk_period*3;
		Din<=x"8d305a88";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0110111";
		wait for clk_period*1;
		state<="0111111";
      wait for clk_period*3;
		Din<=x"a2983131";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0111110";
		wait for clk_period*1;
		state<="0111100";
      wait for clk_period*3;
		Din<=x"340737e0";
      wait for clk_period*1;
		Din<=x"00000000";
		state<="0111101";
		wait for clk_period*1;
		while IN_CALC_AES = '0' loop
			wait for clk_period*1;
		end loop;
		state<="0111001";
      wait for clk_period*1;
		state<="0111011";
		AES_kick<='0';
      wait for clk_period*1;
		state<="0111010";
		AES_kick<='1';
      wait for clk_period*4;
		state<="0111000";
      wait for clk_period*1;
		state<="0101000";
      wait for clk_period*4;
		state<="0101001";
      wait for clk_period*1;
		state<="0101011";
      wait for clk_period*4;
		state<="0101010";
      wait for clk_period*1;
		state<="0101110";
      wait for clk_period*4;
		state<="0101100";
      wait for clk_period*1;
		while IN_CALC_AES = '0' loop
			wait for clk_period*1;
		end loop;
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

      wait;
   end process;
-- *** End Test Bench - User Defined Section ***

END;
