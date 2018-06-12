-- Vhdl test bench created from schematic C:\Users\Shawn\Desktop\Project\Final_Project\main.sch - Sat Apr 14 21:21:06 2018
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
ENTITY main_main_sch_tb IS
END main_main_sch_tb;
ARCHITECTURE behavioral OF main_main_sch_tb IS 

   COMPONENT main
   PORT( OutReg1	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          OutReg2	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          Input	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          OP0	:	IN	STD_LOGIC; 
          OP1	:	IN	STD_LOGIC; 
          CLR1	:	IN	STD_LOGIC; 
          CLRBuffer	:	IN	STD_LOGIC; 
          CLR2	:	IN	STD_LOGIC; 
          CLK	:	IN	STD_LOGIC; 
          Control	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL OutReg1	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL OutReg2	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL Input	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL OP0	:	STD_LOGIC;
   SIGNAL OP1	:	STD_LOGIC;
   SIGNAL CLR1	:	STD_LOGIC;
   SIGNAL CLRBuffer	:	STD_LOGIC;
   SIGNAL CLR2	:	STD_LOGIC;
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL Control	:	STD_LOGIC;

BEGIN

   UUT: main PORT MAP(
		OutReg1 => OutReg1, 
		OutReg2 => OutReg2, 
		Input => Input, 
		OP0 => OP0, 
		OP1 => OP1, 
		CLR1 => CLR1, 
		CLRBuffer => CLRBuffer, 
		CLR2 => CLR2, 
		CLK => CLK, 
		Control => Control
   );

-- *** Test Bench - User Defined Section ***
CLOCK : PROCESS
	BEGIN
	CLK <= '0';
	WAIT FOR 50 ns;
	CLK <= '1';
	WAIT FOR 50 ns;
	END PROCESS;
	
   tb : PROCESS
   BEGIN
      Control <= '1'; CLR1 <= '0'; CLR2 <= '0'; CLRBuffer <= '0';
		-----------
		OP0 <= '0'; OP1 <= '0';
		Input(3) <= '1'; Input(2) <= '0'; Input(1) <= '0'; Input(0) <= '0';
		wait for 50 ns;
		----------------------
		OP0 <= '1';
		wait for 50 ns;
		---------------------
		OP1 <= '1'; OP0 <= '0';
		wait for 50 ns;
		-----------------
		OP0 <= '1';
		wait for 50 ns;
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
