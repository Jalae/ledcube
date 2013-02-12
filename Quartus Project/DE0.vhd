LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;


entity DE0 is
	Port (
		CLOCK_50   : in    STD_logic;
		SW   		  : in    STD_logic_vector (9 downto 0);
		BUTTON  	  : in    STD_logic_vector (2 downto 0);
		LEDG 		  : out   STD_logic_vector (9 downto 0);
		
		DRAM_CLK   : out   STD_logic;
		DRAM_ADDR  : out   STD_logic_vector (11 downto 0);
		DRAM_BA_1  : out   STD_logic;
		DRAM_BA_0  : out   STD_logic;
		DRAM_CAS_N : out   STD_logic;
		DRAM_CKE   : out   STD_logic;
		DRAM_CS_N  : out   STD_logic;
		DRAM_DQ    : inout STD_logic_vector(15 downto 0);
		DRAM_UDQM  : out   STD_logic;
		DRAM_LDQM  : out   STD_logic;
		DRAM_RAS_N : out   STD_logic;
		DRAM_WE_N  : out   STD_logic
	);
end DE0;

architecture a of DE0 is

	 signal DRAM_DQM: std_logic_vector (1 downto 0);
	 signal DRAM_BA : std_logic_vector (1 downto 0);
	 begin	 
    DRAM_UDQM <= DRAM_DQM(1);
	 DRAM_LDQM <= DRAM_DQM(0);
	 DRAM_BA_1 <= DRAM_BA(1);
	 DRAM_BA_0 <= DRAM_BA(0);
	 
	 
end a;
