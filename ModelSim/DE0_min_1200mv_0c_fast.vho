-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Full Version"

-- DATE "06/10/2013 17:16:53"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE0 IS
    PORT (
	CLOCK_50 : IN std_logic;
	CLOCK_50_2 : IN std_logic;
	BUTTON : IN std_logic_vector(2 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX0_DP : OUT std_logic;
	HEX1_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX1_DP : OUT std_logic;
	HEX2_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX2_DP : OUT std_logic;
	HEX3_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX3_DP : OUT std_logic;
	LEDG : OUT std_logic_vector(9 DOWNTO 0);
	DRAM_CLK : OUT std_logic;
	DRAM_ADDR : OUT std_logic_vector(11 DOWNTO 0);
	DRAM_BA_1 : OUT std_logic;
	DRAM_BA_0 : OUT std_logic;
	DRAM_CAS_N : OUT std_logic;
	DRAM_CKE : OUT std_logic;
	DRAM_CS_N : OUT std_logic;
	DRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	DRAM_UDQM : OUT std_logic;
	DRAM_LDQM : OUT std_logic;
	DRAM_RAS_N : OUT std_logic;
	DRAM_WE_N : OUT std_logic;
	FL_DQ : INOUT std_logic_vector(14 DOWNTO 0);
	FL_DQ15_AM1 : INOUT std_logic;
	FL_ADDR : OUT std_logic_vector(21 DOWNTO 0);
	FL_WE_N : OUT std_logic;
	FL_RST_N : OUT std_logic;
	FL_OE_N : OUT std_logic;
	FL_CE_N : OUT std_logic;
	FL_WP_N : OUT std_logic;
	FL_BYTE_N : OUT std_logic;
	FL_RY : IN std_logic;
	SD_DAT0 : INOUT std_logic;
	SD_DAT3 : INOUT std_logic;
	SD_CMD : INOUT std_logic;
	SD_CLK : OUT std_logic;
	SD_WP_N : IN std_logic;
	GPIO0_CLKIN : IN std_logic_vector(1 DOWNTO 0);
	GPIO0_CLKOUT : OUT std_logic_vector(1 DOWNTO 0);
	GPIO0_D : INOUT std_logic_vector(31 DOWNTO 0);
	GPIO1_CLKIN : IN std_logic_vector(1 DOWNTO 0);
	GPIO1_CLKOUT : OUT std_logic_vector(1 DOWNTO 0);
	GPIO1_D : INOUT std_logic_vector(31 DOWNTO 0)
	);
END DE0;

-- Design Ports Information
-- CLOCK_50_2	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUTTON[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUTTON[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUTTON[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_DP	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_DP	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_DP	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_DP	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CLK	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[8]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[9]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[10]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[11]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_BA_1	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_BA_0	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CAS_N	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CKE	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CS_N	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_UDQM	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_LDQM	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_RAS_N	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_WE_N	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[1]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[3]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[4]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[7]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[8]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[9]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[10]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[11]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[12]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[13]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[14]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[15]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[16]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[17]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[18]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[19]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[20]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[21]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_WE_N	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_RST_N	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_OE_N	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_CE_N	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_WP_N	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_BYTE_N	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_RY	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_CLK	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_CLKIN[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_CLKIN[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_CLKOUT[0]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_CLKOUT[1]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_CLKIN[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_CLKIN[1]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_CLKOUT[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_CLKOUT[1]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[5]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[6]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[7]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[8]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[9]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[10]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[11]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[13]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[14]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[15]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[2]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[4]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[5]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[6]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[7]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[8]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[10]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[11]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[12]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[13]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[14]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ15_AM1	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_DAT0	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_DAT3	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_CMD	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[9]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[10]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[11]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[12]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[13]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[14]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[15]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[16]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[17]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[18]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[19]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[20]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[21]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[22]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[23]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[24]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[25]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[26]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[27]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[28]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[29]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[30]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[31]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[3]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[7]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[8]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[9]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[10]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[11]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[12]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[13]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[14]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[15]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[16]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[17]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[18]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[19]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[20]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[21]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[22]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[23]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[24]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[25]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[26]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[27]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[28]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[29]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[30]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[31]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[5]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DE0 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_CLOCK_50_2 : std_logic;
SIGNAL ww_BUTTON : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0_DP : std_logic;
SIGNAL ww_HEX1_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1_DP : std_logic;
SIGNAL ww_HEX2_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2_DP : std_logic;
SIGNAL ww_HEX3_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3_DP : std_logic;
SIGNAL ww_LEDG : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_DRAM_CLK : std_logic;
SIGNAL ww_DRAM_ADDR : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_DRAM_BA_1 : std_logic;
SIGNAL ww_DRAM_BA_0 : std_logic;
SIGNAL ww_DRAM_CAS_N : std_logic;
SIGNAL ww_DRAM_CKE : std_logic;
SIGNAL ww_DRAM_CS_N : std_logic;
SIGNAL ww_DRAM_UDQM : std_logic;
SIGNAL ww_DRAM_LDQM : std_logic;
SIGNAL ww_DRAM_RAS_N : std_logic;
SIGNAL ww_DRAM_WE_N : std_logic;
SIGNAL ww_FL_ADDR : std_logic_vector(21 DOWNTO 0);
SIGNAL ww_FL_WE_N : std_logic;
SIGNAL ww_FL_RST_N : std_logic;
SIGNAL ww_FL_OE_N : std_logic;
SIGNAL ww_FL_CE_N : std_logic;
SIGNAL ww_FL_WP_N : std_logic;
SIGNAL ww_FL_BYTE_N : std_logic;
SIGNAL ww_FL_RY : std_logic;
SIGNAL ww_SD_CLK : std_logic;
SIGNAL ww_SD_WP_N : std_logic;
SIGNAL ww_GPIO0_CLKIN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_GPIO0_CLKOUT : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_GPIO1_CLKIN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_GPIO1_CLKOUT : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|iteration[0]~6_combout\ : std_logic;
SIGNAL \controller|iteration[2]~10_combout\ : std_logic;
SIGNAL \controller|iteration[3]~12_combout\ : std_logic;
SIGNAL \controller|Selector19~2_combout\ : std_logic;
SIGNAL \CLOCK_50_2~input_o\ : std_logic;
SIGNAL \BUTTON[0]~input_o\ : std_logic;
SIGNAL \BUTTON[1]~input_o\ : std_logic;
SIGNAL \BUTTON[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \FL_RY~input_o\ : std_logic;
SIGNAL \SD_WP_N~input_o\ : std_logic;
SIGNAL \GPIO0_CLKIN[0]~input_o\ : std_logic;
SIGNAL \GPIO0_CLKIN[1]~input_o\ : std_logic;
SIGNAL \GPIO1_CLKIN[0]~input_o\ : std_logic;
SIGNAL \GPIO1_CLKIN[1]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \FL_DQ[0]~input_o\ : std_logic;
SIGNAL \FL_DQ[1]~input_o\ : std_logic;
SIGNAL \FL_DQ[2]~input_o\ : std_logic;
SIGNAL \FL_DQ[3]~input_o\ : std_logic;
SIGNAL \FL_DQ[4]~input_o\ : std_logic;
SIGNAL \FL_DQ[5]~input_o\ : std_logic;
SIGNAL \FL_DQ[6]~input_o\ : std_logic;
SIGNAL \FL_DQ[7]~input_o\ : std_logic;
SIGNAL \FL_DQ[8]~input_o\ : std_logic;
SIGNAL \FL_DQ[9]~input_o\ : std_logic;
SIGNAL \FL_DQ[10]~input_o\ : std_logic;
SIGNAL \FL_DQ[11]~input_o\ : std_logic;
SIGNAL \FL_DQ[12]~input_o\ : std_logic;
SIGNAL \FL_DQ[13]~input_o\ : std_logic;
SIGNAL \FL_DQ[14]~input_o\ : std_logic;
SIGNAL \FL_DQ15_AM1~input_o\ : std_logic;
SIGNAL \SD_DAT0~input_o\ : std_logic;
SIGNAL \SD_DAT3~input_o\ : std_logic;
SIGNAL \SD_CMD~input_o\ : std_logic;
SIGNAL \GPIO0_D[8]~input_o\ : std_logic;
SIGNAL \GPIO0_D[9]~input_o\ : std_logic;
SIGNAL \GPIO0_D[10]~input_o\ : std_logic;
SIGNAL \GPIO0_D[11]~input_o\ : std_logic;
SIGNAL \GPIO0_D[12]~input_o\ : std_logic;
SIGNAL \GPIO0_D[13]~input_o\ : std_logic;
SIGNAL \GPIO0_D[14]~input_o\ : std_logic;
SIGNAL \GPIO0_D[15]~input_o\ : std_logic;
SIGNAL \GPIO0_D[16]~input_o\ : std_logic;
SIGNAL \GPIO0_D[17]~input_o\ : std_logic;
SIGNAL \GPIO0_D[18]~input_o\ : std_logic;
SIGNAL \GPIO0_D[19]~input_o\ : std_logic;
SIGNAL \GPIO0_D[20]~input_o\ : std_logic;
SIGNAL \GPIO0_D[21]~input_o\ : std_logic;
SIGNAL \GPIO0_D[22]~input_o\ : std_logic;
SIGNAL \GPIO0_D[23]~input_o\ : std_logic;
SIGNAL \GPIO0_D[24]~input_o\ : std_logic;
SIGNAL \GPIO0_D[25]~input_o\ : std_logic;
SIGNAL \GPIO0_D[26]~input_o\ : std_logic;
SIGNAL \GPIO0_D[27]~input_o\ : std_logic;
SIGNAL \GPIO0_D[28]~input_o\ : std_logic;
SIGNAL \GPIO0_D[29]~input_o\ : std_logic;
SIGNAL \GPIO0_D[30]~input_o\ : std_logic;
SIGNAL \GPIO0_D[31]~input_o\ : std_logic;
SIGNAL \GPIO1_D[0]~input_o\ : std_logic;
SIGNAL \GPIO1_D[1]~input_o\ : std_logic;
SIGNAL \GPIO1_D[2]~input_o\ : std_logic;
SIGNAL \GPIO1_D[3]~input_o\ : std_logic;
SIGNAL \GPIO1_D[4]~input_o\ : std_logic;
SIGNAL \GPIO1_D[5]~input_o\ : std_logic;
SIGNAL \GPIO1_D[6]~input_o\ : std_logic;
SIGNAL \GPIO1_D[7]~input_o\ : std_logic;
SIGNAL \GPIO1_D[8]~input_o\ : std_logic;
SIGNAL \GPIO1_D[9]~input_o\ : std_logic;
SIGNAL \GPIO1_D[10]~input_o\ : std_logic;
SIGNAL \GPIO1_D[11]~input_o\ : std_logic;
SIGNAL \GPIO1_D[12]~input_o\ : std_logic;
SIGNAL \GPIO1_D[13]~input_o\ : std_logic;
SIGNAL \GPIO1_D[14]~input_o\ : std_logic;
SIGNAL \GPIO1_D[15]~input_o\ : std_logic;
SIGNAL \GPIO1_D[16]~input_o\ : std_logic;
SIGNAL \GPIO1_D[17]~input_o\ : std_logic;
SIGNAL \GPIO1_D[18]~input_o\ : std_logic;
SIGNAL \GPIO1_D[19]~input_o\ : std_logic;
SIGNAL \GPIO1_D[20]~input_o\ : std_logic;
SIGNAL \GPIO1_D[21]~input_o\ : std_logic;
SIGNAL \GPIO1_D[22]~input_o\ : std_logic;
SIGNAL \GPIO1_D[23]~input_o\ : std_logic;
SIGNAL \GPIO1_D[24]~input_o\ : std_logic;
SIGNAL \GPIO1_D[25]~input_o\ : std_logic;
SIGNAL \GPIO1_D[26]~input_o\ : std_logic;
SIGNAL \GPIO1_D[27]~input_o\ : std_logic;
SIGNAL \GPIO1_D[28]~input_o\ : std_logic;
SIGNAL \GPIO1_D[29]~input_o\ : std_logic;
SIGNAL \GPIO1_D[30]~input_o\ : std_logic;
SIGNAL \GPIO1_D[31]~input_o\ : std_logic;
SIGNAL \GPIO0_D[0]~input_o\ : std_logic;
SIGNAL \GPIO0_D[1]~input_o\ : std_logic;
SIGNAL \GPIO0_D[2]~input_o\ : std_logic;
SIGNAL \GPIO0_D[3]~input_o\ : std_logic;
SIGNAL \GPIO0_D[4]~input_o\ : std_logic;
SIGNAL \GPIO0_D[5]~input_o\ : std_logic;
SIGNAL \GPIO0_D[6]~input_o\ : std_logic;
SIGNAL \GPIO0_D[7]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[0]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[1]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[2]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[3]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[4]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[5]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[6]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[7]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[8]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[9]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[10]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[11]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[12]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[13]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[14]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[15]~output_o\ : std_logic;
SIGNAL \FL_DQ[0]~output_o\ : std_logic;
SIGNAL \FL_DQ[1]~output_o\ : std_logic;
SIGNAL \FL_DQ[2]~output_o\ : std_logic;
SIGNAL \FL_DQ[3]~output_o\ : std_logic;
SIGNAL \FL_DQ[4]~output_o\ : std_logic;
SIGNAL \FL_DQ[5]~output_o\ : std_logic;
SIGNAL \FL_DQ[6]~output_o\ : std_logic;
SIGNAL \FL_DQ[7]~output_o\ : std_logic;
SIGNAL \FL_DQ[8]~output_o\ : std_logic;
SIGNAL \FL_DQ[9]~output_o\ : std_logic;
SIGNAL \FL_DQ[10]~output_o\ : std_logic;
SIGNAL \FL_DQ[11]~output_o\ : std_logic;
SIGNAL \FL_DQ[12]~output_o\ : std_logic;
SIGNAL \FL_DQ[13]~output_o\ : std_logic;
SIGNAL \FL_DQ[14]~output_o\ : std_logic;
SIGNAL \FL_DQ15_AM1~output_o\ : std_logic;
SIGNAL \SD_DAT0~output_o\ : std_logic;
SIGNAL \SD_DAT3~output_o\ : std_logic;
SIGNAL \SD_CMD~output_o\ : std_logic;
SIGNAL \GPIO0_D[8]~output_o\ : std_logic;
SIGNAL \GPIO0_D[9]~output_o\ : std_logic;
SIGNAL \GPIO0_D[10]~output_o\ : std_logic;
SIGNAL \GPIO0_D[11]~output_o\ : std_logic;
SIGNAL \GPIO0_D[12]~output_o\ : std_logic;
SIGNAL \GPIO0_D[13]~output_o\ : std_logic;
SIGNAL \GPIO0_D[14]~output_o\ : std_logic;
SIGNAL \GPIO0_D[15]~output_o\ : std_logic;
SIGNAL \GPIO0_D[16]~output_o\ : std_logic;
SIGNAL \GPIO0_D[17]~output_o\ : std_logic;
SIGNAL \GPIO0_D[18]~output_o\ : std_logic;
SIGNAL \GPIO0_D[19]~output_o\ : std_logic;
SIGNAL \GPIO0_D[20]~output_o\ : std_logic;
SIGNAL \GPIO0_D[21]~output_o\ : std_logic;
SIGNAL \GPIO0_D[22]~output_o\ : std_logic;
SIGNAL \GPIO0_D[23]~output_o\ : std_logic;
SIGNAL \GPIO0_D[24]~output_o\ : std_logic;
SIGNAL \GPIO0_D[25]~output_o\ : std_logic;
SIGNAL \GPIO0_D[26]~output_o\ : std_logic;
SIGNAL \GPIO0_D[27]~output_o\ : std_logic;
SIGNAL \GPIO0_D[28]~output_o\ : std_logic;
SIGNAL \GPIO0_D[29]~output_o\ : std_logic;
SIGNAL \GPIO0_D[30]~output_o\ : std_logic;
SIGNAL \GPIO0_D[31]~output_o\ : std_logic;
SIGNAL \GPIO1_D[0]~output_o\ : std_logic;
SIGNAL \GPIO1_D[1]~output_o\ : std_logic;
SIGNAL \GPIO1_D[2]~output_o\ : std_logic;
SIGNAL \GPIO1_D[3]~output_o\ : std_logic;
SIGNAL \GPIO1_D[4]~output_o\ : std_logic;
SIGNAL \GPIO1_D[5]~output_o\ : std_logic;
SIGNAL \GPIO1_D[6]~output_o\ : std_logic;
SIGNAL \GPIO1_D[7]~output_o\ : std_logic;
SIGNAL \GPIO1_D[8]~output_o\ : std_logic;
SIGNAL \GPIO1_D[9]~output_o\ : std_logic;
SIGNAL \GPIO1_D[10]~output_o\ : std_logic;
SIGNAL \GPIO1_D[11]~output_o\ : std_logic;
SIGNAL \GPIO1_D[12]~output_o\ : std_logic;
SIGNAL \GPIO1_D[13]~output_o\ : std_logic;
SIGNAL \GPIO1_D[14]~output_o\ : std_logic;
SIGNAL \GPIO1_D[15]~output_o\ : std_logic;
SIGNAL \GPIO1_D[16]~output_o\ : std_logic;
SIGNAL \GPIO1_D[17]~output_o\ : std_logic;
SIGNAL \GPIO1_D[18]~output_o\ : std_logic;
SIGNAL \GPIO1_D[19]~output_o\ : std_logic;
SIGNAL \GPIO1_D[20]~output_o\ : std_logic;
SIGNAL \GPIO1_D[21]~output_o\ : std_logic;
SIGNAL \GPIO1_D[22]~output_o\ : std_logic;
SIGNAL \GPIO1_D[23]~output_o\ : std_logic;
SIGNAL \GPIO1_D[24]~output_o\ : std_logic;
SIGNAL \GPIO1_D[25]~output_o\ : std_logic;
SIGNAL \GPIO1_D[26]~output_o\ : std_logic;
SIGNAL \GPIO1_D[27]~output_o\ : std_logic;
SIGNAL \GPIO1_D[28]~output_o\ : std_logic;
SIGNAL \GPIO1_D[29]~output_o\ : std_logic;
SIGNAL \GPIO1_D[30]~output_o\ : std_logic;
SIGNAL \GPIO1_D[31]~output_o\ : std_logic;
SIGNAL \GPIO0_D[0]~output_o\ : std_logic;
SIGNAL \GPIO0_D[1]~output_o\ : std_logic;
SIGNAL \GPIO0_D[2]~output_o\ : std_logic;
SIGNAL \GPIO0_D[3]~output_o\ : std_logic;
SIGNAL \GPIO0_D[4]~output_o\ : std_logic;
SIGNAL \GPIO0_D[5]~output_o\ : std_logic;
SIGNAL \GPIO0_D[6]~output_o\ : std_logic;
SIGNAL \GPIO0_D[7]~output_o\ : std_logic;
SIGNAL \HEX0_D[0]~output_o\ : std_logic;
SIGNAL \HEX0_D[1]~output_o\ : std_logic;
SIGNAL \HEX0_D[2]~output_o\ : std_logic;
SIGNAL \HEX0_D[3]~output_o\ : std_logic;
SIGNAL \HEX0_D[4]~output_o\ : std_logic;
SIGNAL \HEX0_D[5]~output_o\ : std_logic;
SIGNAL \HEX0_D[6]~output_o\ : std_logic;
SIGNAL \HEX0_DP~output_o\ : std_logic;
SIGNAL \HEX1_D[0]~output_o\ : std_logic;
SIGNAL \HEX1_D[1]~output_o\ : std_logic;
SIGNAL \HEX1_D[2]~output_o\ : std_logic;
SIGNAL \HEX1_D[3]~output_o\ : std_logic;
SIGNAL \HEX1_D[4]~output_o\ : std_logic;
SIGNAL \HEX1_D[5]~output_o\ : std_logic;
SIGNAL \HEX1_D[6]~output_o\ : std_logic;
SIGNAL \HEX1_DP~output_o\ : std_logic;
SIGNAL \HEX2_D[0]~output_o\ : std_logic;
SIGNAL \HEX2_D[1]~output_o\ : std_logic;
SIGNAL \HEX2_D[2]~output_o\ : std_logic;
SIGNAL \HEX2_D[3]~output_o\ : std_logic;
SIGNAL \HEX2_D[4]~output_o\ : std_logic;
SIGNAL \HEX2_D[5]~output_o\ : std_logic;
SIGNAL \HEX2_D[6]~output_o\ : std_logic;
SIGNAL \HEX2_DP~output_o\ : std_logic;
SIGNAL \HEX3_D[0]~output_o\ : std_logic;
SIGNAL \HEX3_D[1]~output_o\ : std_logic;
SIGNAL \HEX3_D[2]~output_o\ : std_logic;
SIGNAL \HEX3_D[3]~output_o\ : std_logic;
SIGNAL \HEX3_D[4]~output_o\ : std_logic;
SIGNAL \HEX3_D[5]~output_o\ : std_logic;
SIGNAL \HEX3_D[6]~output_o\ : std_logic;
SIGNAL \HEX3_DP~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \LEDG[9]~output_o\ : std_logic;
SIGNAL \DRAM_CLK~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[0]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[1]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[2]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[3]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[4]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[5]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[6]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[7]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[8]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[9]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[10]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[11]~output_o\ : std_logic;
SIGNAL \DRAM_BA_1~output_o\ : std_logic;
SIGNAL \DRAM_BA_0~output_o\ : std_logic;
SIGNAL \DRAM_CAS_N~output_o\ : std_logic;
SIGNAL \DRAM_CKE~output_o\ : std_logic;
SIGNAL \DRAM_CS_N~output_o\ : std_logic;
SIGNAL \DRAM_UDQM~output_o\ : std_logic;
SIGNAL \DRAM_LDQM~output_o\ : std_logic;
SIGNAL \DRAM_RAS_N~output_o\ : std_logic;
SIGNAL \DRAM_WE_N~output_o\ : std_logic;
SIGNAL \FL_ADDR[0]~output_o\ : std_logic;
SIGNAL \FL_ADDR[1]~output_o\ : std_logic;
SIGNAL \FL_ADDR[2]~output_o\ : std_logic;
SIGNAL \FL_ADDR[3]~output_o\ : std_logic;
SIGNAL \FL_ADDR[4]~output_o\ : std_logic;
SIGNAL \FL_ADDR[5]~output_o\ : std_logic;
SIGNAL \FL_ADDR[6]~output_o\ : std_logic;
SIGNAL \FL_ADDR[7]~output_o\ : std_logic;
SIGNAL \FL_ADDR[8]~output_o\ : std_logic;
SIGNAL \FL_ADDR[9]~output_o\ : std_logic;
SIGNAL \FL_ADDR[10]~output_o\ : std_logic;
SIGNAL \FL_ADDR[11]~output_o\ : std_logic;
SIGNAL \FL_ADDR[12]~output_o\ : std_logic;
SIGNAL \FL_ADDR[13]~output_o\ : std_logic;
SIGNAL \FL_ADDR[14]~output_o\ : std_logic;
SIGNAL \FL_ADDR[15]~output_o\ : std_logic;
SIGNAL \FL_ADDR[16]~output_o\ : std_logic;
SIGNAL \FL_ADDR[17]~output_o\ : std_logic;
SIGNAL \FL_ADDR[18]~output_o\ : std_logic;
SIGNAL \FL_ADDR[19]~output_o\ : std_logic;
SIGNAL \FL_ADDR[20]~output_o\ : std_logic;
SIGNAL \FL_ADDR[21]~output_o\ : std_logic;
SIGNAL \FL_WE_N~output_o\ : std_logic;
SIGNAL \FL_RST_N~output_o\ : std_logic;
SIGNAL \FL_OE_N~output_o\ : std_logic;
SIGNAL \FL_CE_N~output_o\ : std_logic;
SIGNAL \FL_WP_N~output_o\ : std_logic;
SIGNAL \FL_BYTE_N~output_o\ : std_logic;
SIGNAL \SD_CLK~output_o\ : std_logic;
SIGNAL \GPIO0_CLKOUT[0]~output_o\ : std_logic;
SIGNAL \GPIO0_CLKOUT[1]~output_o\ : std_logic;
SIGNAL \GPIO1_CLKOUT[0]~output_o\ : std_logic;
SIGNAL \GPIO1_CLKOUT[1]~output_o\ : std_logic;
SIGNAL \controller|nextState.init~feeder_combout\ : std_logic;
SIGNAL \controller|nextState.init~q\ : std_logic;
SIGNAL \controller|nextState.clockHigh~feeder_combout\ : std_logic;
SIGNAL \controller|nextState.clockHigh~q\ : std_logic;
SIGNAL \controller|Add0~1\ : std_logic;
SIGNAL \controller|Add0~2_combout\ : std_logic;
SIGNAL \controller|bitShiftCounter[1]~1_combout\ : std_logic;
SIGNAL \controller|Add0~0_combout\ : std_logic;
SIGNAL \controller|bitShiftCounter[0]~0_combout\ : std_logic;
SIGNAL \controller|Add0~3\ : std_logic;
SIGNAL \controller|Add0~4_combout\ : std_logic;
SIGNAL \controller|bitShiftCounter[2]~7_combout\ : std_logic;
SIGNAL \controller|Add0~5\ : std_logic;
SIGNAL \controller|Add0~6_combout\ : std_logic;
SIGNAL \controller|bitShiftCounter[3]~4_combout\ : std_logic;
SIGNAL \controller|Add0~7\ : std_logic;
SIGNAL \controller|Add0~8_combout\ : std_logic;
SIGNAL \controller|bitShiftCounter[4]~5_combout\ : std_logic;
SIGNAL \controller|Add0~9\ : std_logic;
SIGNAL \controller|Add0~10_combout\ : std_logic;
SIGNAL \controller|bitShiftCounter[5]~6_combout\ : std_logic;
SIGNAL \controller|Selector19~1_combout\ : std_logic;
SIGNAL \controller|Equal0~0_combout\ : std_logic;
SIGNAL \controller|iteration[4]~5_combout\ : std_logic;
SIGNAL \controller|nextState.disableOutput~q\ : std_logic;
SIGNAL \controller|nextState.latchData~feeder_combout\ : std_logic;
SIGNAL \controller|nextState.latchData~q\ : std_logic;
SIGNAL \controller|nextState.enableOutput~q\ : std_logic;
SIGNAL \controller|Selector0~0_combout\ : std_logic;
SIGNAL \controller|nextState.setAddress~q\ : std_logic;
SIGNAL \controller|nextState.loadValue~q\ : std_logic;
SIGNAL \controller|nextState.clockLow~q\ : std_logic;
SIGNAL \controller|WideOr1~combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \controller|Selector1~0_combout\ : std_logic;
SIGNAL \controller|counting:reddata[4]~q\ : std_logic;
SIGNAL \controller|iteration[0]~7\ : std_logic;
SIGNAL \controller|iteration[1]~8_combout\ : std_logic;
SIGNAL \controller|Add0~11\ : std_logic;
SIGNAL \controller|Add0~13\ : std_logic;
SIGNAL \controller|Add0~14_combout\ : std_logic;
SIGNAL \controller|bitShiftCounter[7]~2_combout\ : std_logic;
SIGNAL \controller|Add0~15\ : std_logic;
SIGNAL \controller|Add0~16_combout\ : std_logic;
SIGNAL \controller|bitShiftCounter[8]~8_combout\ : std_logic;
SIGNAL \controller|iteration[4]~16_combout\ : std_logic;
SIGNAL \controller|Add0~12_combout\ : std_logic;
SIGNAL \controller|bitShiftCounter[6]~3_combout\ : std_logic;
SIGNAL \controller|iteration[4]~17_combout\ : std_logic;
SIGNAL \controller|iteration[1]~9\ : std_logic;
SIGNAL \controller|iteration[2]~11\ : std_logic;
SIGNAL \controller|iteration[3]~13\ : std_logic;
SIGNAL \controller|iteration[4]~14_combout\ : std_logic;
SIGNAL \controller|Selector2~0_combout\ : std_logic;
SIGNAL \controller|counting:reddata[3]~q\ : std_logic;
SIGNAL \controller|Selector16~4_combout\ : std_logic;
SIGNAL \controller|Selector3~0_combout\ : std_logic;
SIGNAL \controller|counting:reddata[2]~q\ : std_logic;
SIGNAL \controller|Selector5~0_combout\ : std_logic;
SIGNAL \controller|counting:reddata[0]~q\ : std_logic;
SIGNAL \controller|Selector4~0_combout\ : std_logic;
SIGNAL \controller|counting:reddata[1]~q\ : std_logic;
SIGNAL \controller|Selector16~2_combout\ : std_logic;
SIGNAL \controller|Selector16~3_combout\ : std_logic;
SIGNAL \controller|Selector16~0_combout\ : std_logic;
SIGNAL \controller|r_d~0_combout\ : std_logic;
SIGNAL \controller|Selector16~1_combout\ : std_logic;
SIGNAL \controller|Selector16~5_combout\ : std_logic;
SIGNAL \controller|r_d~q\ : std_logic;
SIGNAL \controller|LEDCont_s_red~0_combout\ : std_logic;
SIGNAL \controller|Selector7~0_combout\ : std_logic;
SIGNAL \controller|counting:greendata[3]~q\ : std_logic;
SIGNAL \controller|Selector6~0_combout\ : std_logic;
SIGNAL \controller|counting:greendata[4]~q\ : std_logic;
SIGNAL \controller|Selector17~4_combout\ : std_logic;
SIGNAL \controller|Selector10~0_combout\ : std_logic;
SIGNAL \controller|counting:greendata[0]~q\ : std_logic;
SIGNAL \controller|Selector9~0_combout\ : std_logic;
SIGNAL \controller|counting:greendata[1]~q\ : std_logic;
SIGNAL \controller|Selector17~2_combout\ : std_logic;
SIGNAL \controller|Selector8~0_combout\ : std_logic;
SIGNAL \controller|counting:greendata[2]~q\ : std_logic;
SIGNAL \controller|Selector17~3_combout\ : std_logic;
SIGNAL \controller|Selector17~0_combout\ : std_logic;
SIGNAL \controller|Selector17~1_combout\ : std_logic;
SIGNAL \controller|Selector17~5_combout\ : std_logic;
SIGNAL \controller|g_d~q\ : std_logic;
SIGNAL \controller|LEDCont_s_green~0_combout\ : std_logic;
SIGNAL \controller|Selector12~0_combout\ : std_logic;
SIGNAL \controller|counting:bluedata[3]~q\ : std_logic;
SIGNAL \controller|Selector13~0_combout\ : std_logic;
SIGNAL \controller|counting:bluedata[2]~q\ : std_logic;
SIGNAL \controller|Selector14~0_combout\ : std_logic;
SIGNAL \controller|counting:bluedata[1]~q\ : std_logic;
SIGNAL \controller|Selector15~0_combout\ : std_logic;
SIGNAL \controller|counting:bluedata[0]~q\ : std_logic;
SIGNAL \controller|Selector18~0_combout\ : std_logic;
SIGNAL \controller|Selector18~1_combout\ : std_logic;
SIGNAL \controller|Selector18~2_combout\ : std_logic;
SIGNAL \controller|Selector11~0_combout\ : std_logic;
SIGNAL \controller|counting:bluedata[4]~q\ : std_logic;
SIGNAL \controller|Selector18~3_combout\ : std_logic;
SIGNAL \controller|Selector18~4_combout\ : std_logic;
SIGNAL \controller|b_d~q\ : std_logic;
SIGNAL \controller|LEDCont_s_blue~0_combout\ : std_logic;
SIGNAL \controller|Selector19~0_combout\ : std_logic;
SIGNAL \controller|Selector19~3_combout\ : std_logic;
SIGNAL \controller|c_d~q\ : std_logic;
SIGNAL \controller|LEDCont_s_cath~0_combout\ : std_logic;
SIGNAL \controller|LEDCont_s_OEna~combout\ : std_logic;
SIGNAL \controller|iteration\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \controller|bitShiftCounter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \controller|ALT_INV_nextState.disableOutput~q\ : std_logic;
SIGNAL \ALT_INV_CLOCK_50~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_CLOCK_50_2 <= CLOCK_50_2;
ww_BUTTON <= BUTTON;
ww_SW <= SW;
HEX0_D <= ww_HEX0_D;
HEX0_DP <= ww_HEX0_DP;
HEX1_D <= ww_HEX1_D;
HEX1_DP <= ww_HEX1_DP;
HEX2_D <= ww_HEX2_D;
HEX2_DP <= ww_HEX2_DP;
HEX3_D <= ww_HEX3_D;
HEX3_DP <= ww_HEX3_DP;
LEDG <= ww_LEDG;
DRAM_CLK <= ww_DRAM_CLK;
DRAM_ADDR <= ww_DRAM_ADDR;
DRAM_BA_1 <= ww_DRAM_BA_1;
DRAM_BA_0 <= ww_DRAM_BA_0;
DRAM_CAS_N <= ww_DRAM_CAS_N;
DRAM_CKE <= ww_DRAM_CKE;
DRAM_CS_N <= ww_DRAM_CS_N;
DRAM_UDQM <= ww_DRAM_UDQM;
DRAM_LDQM <= ww_DRAM_LDQM;
DRAM_RAS_N <= ww_DRAM_RAS_N;
DRAM_WE_N <= ww_DRAM_WE_N;
FL_ADDR <= ww_FL_ADDR;
FL_WE_N <= ww_FL_WE_N;
FL_RST_N <= ww_FL_RST_N;
FL_OE_N <= ww_FL_OE_N;
FL_CE_N <= ww_FL_CE_N;
FL_WP_N <= ww_FL_WP_N;
FL_BYTE_N <= ww_FL_BYTE_N;
ww_FL_RY <= FL_RY;
SD_CLK <= ww_SD_CLK;
ww_SD_WP_N <= SD_WP_N;
ww_GPIO0_CLKIN <= GPIO0_CLKIN;
GPIO0_CLKOUT <= ww_GPIO0_CLKOUT;
ww_GPIO1_CLKIN <= GPIO1_CLKIN;
GPIO1_CLKOUT <= ww_GPIO1_CLKOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\u0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\(0) <= \~GND~combout\;

\u0|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\(0) <= \~GND~combout\;

\u0|altsyncram_component|auto_generated|q_b\(0) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\u0|altsyncram_component|auto_generated|q_b\(1) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\u0|altsyncram_component|auto_generated|q_b\(2) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\u0|altsyncram_component|auto_generated|q_b\(3) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\u0|altsyncram_component|auto_generated|q_b\(4) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\u0|altsyncram_component|auto_generated|q_b\(5) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\u0|altsyncram_component|auto_generated|q_b\(6) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\u0|altsyncram_component|auto_generated|q_b\(7) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\u0|altsyncram_component|auto_generated|q_b\(8) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\u0|altsyncram_component|auto_generated|q_b\(9) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\u0|altsyncram_component|auto_generated|q_b\(10) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\u0|altsyncram_component|auto_generated|q_b\(11) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\u0|altsyncram_component|auto_generated|q_b\(12) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\u0|altsyncram_component|auto_generated|q_b\(13) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\u0|altsyncram_component|auto_generated|q_b\(14) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\controller|ALT_INV_nextState.disableOutput~q\ <= NOT \controller|nextState.disableOutput~q\;
\ALT_INV_CLOCK_50~inputclkctrl_outclk\ <= NOT \CLOCK_50~inputclkctrl_outclk\;

-- Location: FF_X23_Y2_N13
\controller|iteration[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|iteration[3]~12_combout\,
	ena => \controller|iteration[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|iteration\(3));

-- Location: FF_X23_Y2_N11
\controller|iteration[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|iteration[2]~10_combout\,
	ena => \controller|iteration[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|iteration\(2));

-- Location: FF_X23_Y2_N7
\controller|iteration[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|iteration[0]~6_combout\,
	ena => \controller|iteration[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|iteration\(0));

-- Location: LCCOMB_X23_Y2_N6
\controller|iteration[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|iteration[0]~6_combout\ = \controller|iteration\(0) $ (VCC)
-- \controller|iteration[0]~7\ = CARRY(\controller|iteration\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|iteration\(0),
	datad => VCC,
	combout => \controller|iteration[0]~6_combout\,
	cout => \controller|iteration[0]~7\);

-- Location: LCCOMB_X23_Y2_N10
\controller|iteration[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|iteration[2]~10_combout\ = (\controller|iteration\(2) & (\controller|iteration[1]~9\ $ (GND))) # (!\controller|iteration\(2) & (!\controller|iteration[1]~9\ & VCC))
-- \controller|iteration[2]~11\ = CARRY((\controller|iteration\(2) & !\controller|iteration[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|iteration\(2),
	datad => VCC,
	cin => \controller|iteration[1]~9\,
	combout => \controller|iteration[2]~10_combout\,
	cout => \controller|iteration[2]~11\);

-- Location: LCCOMB_X23_Y2_N12
\controller|iteration[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|iteration[3]~12_combout\ = (\controller|iteration\(3) & (!\controller|iteration[2]~11\)) # (!\controller|iteration\(3) & ((\controller|iteration[2]~11\) # (GND)))
-- \controller|iteration[3]~13\ = CARRY((!\controller|iteration[2]~11\) # (!\controller|iteration\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|iteration\(3),
	datad => VCC,
	cin => \controller|iteration[2]~11\,
	combout => \controller|iteration[3]~12_combout\,
	cout => \controller|iteration[3]~13\);

-- Location: M9K_X25_Y2_N0
\u0|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "LED_ROM_IP:u0|altsyncram:altsyncram_component|altsyncram_kdn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 1,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	portadatain => \u0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y1_N12
\controller|Selector19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector19~2_combout\ = (\controller|Selector19~1_combout\ & (\controller|nextState.clockLow~q\ & (\controller|bitShiftCounter\(2) $ (!\controller|bitShiftCounter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|bitShiftCounter\(2),
	datab => \controller|Selector19~1_combout\,
	datac => \controller|bitShiftCounter\(8),
	datad => \controller|nextState.clockLow~q\,
	combout => \controller|Selector19~2_combout\);

-- Location: IOOBUF_X16_Y29_N2
\DRAM_DQ[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[0]~output_o\);

-- Location: IOOBUF_X9_Y29_N16
\DRAM_DQ[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[1]~output_o\);

-- Location: IOOBUF_X9_Y29_N30
\DRAM_DQ[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[2]~output_o\);

-- Location: IOOBUF_X11_Y29_N30
\DRAM_DQ[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[3]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\DRAM_DQ[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[4]~output_o\);

-- Location: IOOBUF_X9_Y29_N23
\DRAM_DQ[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[5]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\DRAM_DQ[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[6]~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\DRAM_DQ[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[7]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\DRAM_DQ[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[8]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\DRAM_DQ[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[9]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\DRAM_DQ[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[10]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\DRAM_DQ[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[11]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\DRAM_DQ[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[12]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\DRAM_DQ[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[13]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\DRAM_DQ[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[14]~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\DRAM_DQ[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[15]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\FL_DQ[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[0]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\FL_DQ[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\FL_DQ[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\FL_DQ[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\FL_DQ[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\FL_DQ[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[5]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\FL_DQ[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\FL_DQ[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[7]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\FL_DQ[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[8]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\FL_DQ[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[9]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\FL_DQ[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[10]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\FL_DQ[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[11]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\FL_DQ[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[12]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\FL_DQ[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[13]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\FL_DQ[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[14]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\FL_DQ15_AM1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ15_AM1~output_o\);

-- Location: IOOBUF_X41_Y2_N23
\SD_DAT0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SD_DAT0~output_o\);

-- Location: IOOBUF_X41_Y5_N2
\SD_DAT3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SD_DAT3~output_o\);

-- Location: IOOBUF_X41_Y3_N2
\SD_CMD~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SD_CMD~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\GPIO0_D[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[8]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\GPIO0_D[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\GPIO0_D[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[10]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\GPIO0_D[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\GPIO0_D[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[12]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\GPIO0_D[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[13]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\GPIO0_D[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\GPIO0_D[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[15]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\GPIO0_D[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[16]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\GPIO0_D[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[17]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\GPIO0_D[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[18]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\GPIO0_D[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[19]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\GPIO0_D[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[20]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\GPIO0_D[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[21]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\GPIO0_D[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[22]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\GPIO0_D[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[23]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\GPIO0_D[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[24]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\GPIO0_D[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[25]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\GPIO0_D[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[26]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\GPIO0_D[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[27]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\GPIO0_D[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[28]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\GPIO0_D[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[29]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\GPIO0_D[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[30]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\GPIO0_D[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[31]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\GPIO1_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[0]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\GPIO1_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[1]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\GPIO1_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[2]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\GPIO1_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\GPIO1_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[4]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\GPIO1_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\GPIO1_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\GPIO1_D[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[7]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\GPIO1_D[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[8]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\GPIO1_D[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[9]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\GPIO1_D[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[10]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\GPIO1_D[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[11]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\GPIO1_D[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[12]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\GPIO1_D[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[13]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\GPIO1_D[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\GPIO1_D[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[15]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\GPIO1_D[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\GPIO1_D[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[17]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\GPIO1_D[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[18]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\GPIO1_D[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[19]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\GPIO1_D[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[20]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\GPIO1_D[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[21]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\GPIO1_D[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[22]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\GPIO1_D[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[23]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\GPIO1_D[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[24]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\GPIO1_D[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[25]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\GPIO1_D[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[26]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\GPIO1_D[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[27]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\GPIO1_D[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[28]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\GPIO1_D[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[29]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\GPIO1_D[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[30]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\GPIO1_D[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO1_D[31]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\GPIO0_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controller|LEDCont_s_red~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\GPIO0_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controller|LEDCont_s_green~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\GPIO0_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controller|LEDCont_s_blue~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\GPIO0_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controller|LEDCont_s_cath~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\GPIO0_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controller|nextState.setAddress~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\GPIO0_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controller|ALT_INV_nextState.disableOutput~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\GPIO0_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controller|LEDCont_s_OEna~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[6]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\GPIO0_D[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO0_D[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\HEX0_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0_D[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX0_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0_D[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX0_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0_D[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX0_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0_D[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX0_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0_D[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX0_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0_D[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\HEX0_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0_D[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\HEX0_DP~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0_DP~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\HEX1_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1_D[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\HEX1_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1_D[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\HEX1_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1_D[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\HEX1_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1_D[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\HEX1_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1_D[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\HEX1_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1_D[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\HEX1_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1_D[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\HEX1_DP~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1_DP~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\HEX2_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2_D[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\HEX2_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2_D[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\HEX2_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2_D[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\HEX2_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2_D[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\HEX2_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2_D[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\HEX2_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2_D[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\HEX2_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2_D[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\HEX2_DP~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2_DP~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\HEX3_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3_D[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\HEX3_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3_D[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\HEX3_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3_D[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\HEX3_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3_D[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\HEX3_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3_D[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\HEX3_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3_D[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\HEX3_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3_D[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\HEX3_DP~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3_DP~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\LEDG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\LEDG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\LEDG[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\LEDG[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LEDG[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\LEDG[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LEDG[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\LEDG[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\LEDG[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[9]~output_o\);

-- Location: IOOBUF_X1_Y29_N30
\DRAM_CLK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_CLK~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\DRAM_ADDR[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[0]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\DRAM_ADDR[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[1]~output_o\);

-- Location: IOOBUF_X3_Y29_N9
\DRAM_ADDR[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[2]~output_o\);

-- Location: IOOBUF_X3_Y29_N30
\DRAM_ADDR[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[3]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\DRAM_ADDR[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[4]~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\DRAM_ADDR[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[5]~output_o\);

-- Location: IOOBUF_X11_Y29_N23
\DRAM_ADDR[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[6]~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\DRAM_ADDR[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[7]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\DRAM_ADDR[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[8]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\DRAM_ADDR[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[9]~output_o\);

-- Location: IOOBUF_X5_Y29_N16
\DRAM_ADDR[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[10]~output_o\);

-- Location: IOOBUF_X11_Y29_N2
\DRAM_ADDR[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[11]~output_o\);

-- Location: IOOBUF_X5_Y29_N9
\DRAM_BA_1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_BA_1~output_o\);

-- Location: IOOBUF_X7_Y29_N16
\DRAM_BA_0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_BA_0~output_o\);

-- Location: IOOBUF_X5_Y29_N30
\DRAM_CAS_N~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_CAS_N~output_o\);

-- Location: IOOBUF_X1_Y29_N23
\DRAM_CKE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_CKE~output_o\);

-- Location: IOOBUF_X1_Y29_N16
\DRAM_CS_N~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_CS_N~output_o\);

-- Location: IOOBUF_X14_Y29_N30
\DRAM_UDQM~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_UDQM~output_o\);

-- Location: IOOBUF_X3_Y29_N23
\DRAM_LDQM~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_LDQM~output_o\);

-- Location: IOOBUF_X1_Y29_N9
\DRAM_RAS_N~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_RAS_N~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\DRAM_WE_N~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_WE_N~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\FL_ADDR[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\FL_ADDR[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\FL_ADDR[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\FL_ADDR[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\FL_ADDR[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\FL_ADDR[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[5]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\FL_ADDR[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[6]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\FL_ADDR[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[7]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\FL_ADDR[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[8]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\FL_ADDR[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[9]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\FL_ADDR[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[10]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\FL_ADDR[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[11]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\FL_ADDR[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[12]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\FL_ADDR[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[13]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\FL_ADDR[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[14]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\FL_ADDR[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[15]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\FL_ADDR[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[16]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\FL_ADDR[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[17]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\FL_ADDR[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[18]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\FL_ADDR[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[19]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\FL_ADDR[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[20]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\FL_ADDR[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[21]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\FL_WE_N~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_WE_N~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\FL_RST_N~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_RST_N~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\FL_OE_N~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_OE_N~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\FL_CE_N~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_CE_N~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\FL_WP_N~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_WP_N~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\FL_BYTE_N~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_BYTE_N~output_o\);

-- Location: IOOBUF_X41_Y4_N9
\SD_CLK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SD_CLK~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\GPIO0_CLKOUT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO0_CLKOUT[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\GPIO0_CLKOUT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO0_CLKOUT[1]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\GPIO1_CLKOUT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO1_CLKOUT[0]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\GPIO1_CLKOUT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO1_CLKOUT[1]~output_o\);

-- Location: LCCOMB_X23_Y1_N14
\controller|nextState.init~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|nextState.init~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \controller|nextState.init~feeder_combout\);

-- Location: FF_X23_Y1_N15
\controller|nextState.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controller|nextState.init~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|nextState.init~q\);

-- Location: LCCOMB_X24_Y1_N10
\controller|nextState.clockHigh~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|nextState.clockHigh~feeder_combout\ = \controller|nextState.clockLow~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|nextState.clockLow~q\,
	combout => \controller|nextState.clockHigh~feeder_combout\);

-- Location: FF_X24_Y1_N11
\controller|nextState.clockHigh\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controller|nextState.clockHigh~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|nextState.clockHigh~q\);

-- Location: LCCOMB_X22_Y1_N10
\controller|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Add0~0_combout\ = \controller|bitShiftCounter\(0) $ (GND)
-- \controller|Add0~1\ = CARRY(!\controller|bitShiftCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|bitShiftCounter\(0),
	datad => VCC,
	combout => \controller|Add0~0_combout\,
	cout => \controller|Add0~1\);

-- Location: LCCOMB_X22_Y1_N12
\controller|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Add0~2_combout\ = (\controller|bitShiftCounter\(1) & ((\controller|Add0~1\) # (GND))) # (!\controller|bitShiftCounter\(1) & (!\controller|Add0~1\))
-- \controller|Add0~3\ = CARRY((\controller|bitShiftCounter\(1)) # (!\controller|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|bitShiftCounter\(1),
	datad => VCC,
	cin => \controller|Add0~1\,
	combout => \controller|Add0~2_combout\,
	cout => \controller|Add0~3\);

-- Location: LCCOMB_X23_Y1_N24
\controller|bitShiftCounter[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|bitShiftCounter[1]~1_combout\ = !\controller|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|Add0~2_combout\,
	combout => \controller|bitShiftCounter[1]~1_combout\);

-- Location: FF_X23_Y1_N25
\controller|bitShiftCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|bitShiftCounter[1]~1_combout\,
	ena => \controller|nextState.setAddress~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|bitShiftCounter\(1));

-- Location: LCCOMB_X23_Y1_N30
\controller|bitShiftCounter[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|bitShiftCounter[0]~0_combout\ = !\controller|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|Add0~0_combout\,
	combout => \controller|bitShiftCounter[0]~0_combout\);

-- Location: FF_X23_Y1_N31
\controller|bitShiftCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|bitShiftCounter[0]~0_combout\,
	ena => \controller|nextState.setAddress~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|bitShiftCounter\(0));

-- Location: LCCOMB_X22_Y1_N14
\controller|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Add0~4_combout\ = (\controller|bitShiftCounter\(2) & (!\controller|Add0~3\ & VCC)) # (!\controller|bitShiftCounter\(2) & (\controller|Add0~3\ $ (GND)))
-- \controller|Add0~5\ = CARRY((!\controller|bitShiftCounter\(2) & !\controller|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|bitShiftCounter\(2),
	datad => VCC,
	cin => \controller|Add0~3\,
	combout => \controller|Add0~4_combout\,
	cout => \controller|Add0~5\);

-- Location: LCCOMB_X23_Y1_N10
\controller|bitShiftCounter[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|bitShiftCounter[2]~7_combout\ = !\controller|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|Add0~4_combout\,
	combout => \controller|bitShiftCounter[2]~7_combout\);

-- Location: FF_X23_Y1_N11
\controller|bitShiftCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|bitShiftCounter[2]~7_combout\,
	ena => \controller|nextState.setAddress~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|bitShiftCounter\(2));

-- Location: LCCOMB_X22_Y1_N16
\controller|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Add0~6_combout\ = (\controller|bitShiftCounter\(3) & ((\controller|Add0~5\) # (GND))) # (!\controller|bitShiftCounter\(3) & (!\controller|Add0~5\))
-- \controller|Add0~7\ = CARRY((\controller|bitShiftCounter\(3)) # (!\controller|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|bitShiftCounter\(3),
	datad => VCC,
	cin => \controller|Add0~5\,
	combout => \controller|Add0~6_combout\,
	cout => \controller|Add0~7\);

-- Location: LCCOMB_X23_Y1_N22
\controller|bitShiftCounter[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|bitShiftCounter[3]~4_combout\ = !\controller|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Add0~6_combout\,
	combout => \controller|bitShiftCounter[3]~4_combout\);

-- Location: FF_X23_Y1_N23
\controller|bitShiftCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|bitShiftCounter[3]~4_combout\,
	ena => \controller|nextState.setAddress~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|bitShiftCounter\(3));

-- Location: LCCOMB_X22_Y1_N18
\controller|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Add0~8_combout\ = (\controller|bitShiftCounter\(4) & (!\controller|Add0~7\ & VCC)) # (!\controller|bitShiftCounter\(4) & (\controller|Add0~7\ $ (GND)))
-- \controller|Add0~9\ = CARRY((!\controller|bitShiftCounter\(4) & !\controller|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|bitShiftCounter\(4),
	datad => VCC,
	cin => \controller|Add0~7\,
	combout => \controller|Add0~8_combout\,
	cout => \controller|Add0~9\);

-- Location: LCCOMB_X23_Y1_N18
\controller|bitShiftCounter[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|bitShiftCounter[4]~5_combout\ = !\controller|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|Add0~8_combout\,
	combout => \controller|bitShiftCounter[4]~5_combout\);

-- Location: FF_X23_Y1_N19
\controller|bitShiftCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|bitShiftCounter[4]~5_combout\,
	ena => \controller|nextState.setAddress~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|bitShiftCounter\(4));

-- Location: LCCOMB_X22_Y1_N20
\controller|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Add0~10_combout\ = (\controller|bitShiftCounter\(5) & ((\controller|Add0~9\) # (GND))) # (!\controller|bitShiftCounter\(5) & (!\controller|Add0~9\))
-- \controller|Add0~11\ = CARRY((\controller|bitShiftCounter\(5)) # (!\controller|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|bitShiftCounter\(5),
	datad => VCC,
	cin => \controller|Add0~9\,
	combout => \controller|Add0~10_combout\,
	cout => \controller|Add0~11\);

-- Location: LCCOMB_X23_Y1_N20
\controller|bitShiftCounter[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|bitShiftCounter[5]~6_combout\ = !\controller|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|Add0~10_combout\,
	combout => \controller|bitShiftCounter[5]~6_combout\);

-- Location: FF_X23_Y1_N21
\controller|bitShiftCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|bitShiftCounter[5]~6_combout\,
	ena => \controller|nextState.setAddress~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|bitShiftCounter\(5));

-- Location: LCCOMB_X23_Y1_N2
\controller|Selector19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector19~1_combout\ = (!\controller|bitShiftCounter\(3) & (!\controller|bitShiftCounter\(5) & !\controller|bitShiftCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|bitShiftCounter\(3),
	datab => \controller|bitShiftCounter\(5),
	datad => \controller|bitShiftCounter\(4),
	combout => \controller|Selector19~1_combout\);

-- Location: LCCOMB_X23_Y1_N6
\controller|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Equal0~0_combout\ = (!\controller|bitShiftCounter\(2) & (!\controller|bitShiftCounter\(1) & (!\controller|bitShiftCounter\(0) & \controller|Selector19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|bitShiftCounter\(2),
	datab => \controller|bitShiftCounter\(1),
	datac => \controller|bitShiftCounter\(0),
	datad => \controller|Selector19~1_combout\,
	combout => \controller|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y1_N28
\controller|iteration[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|iteration[4]~5_combout\ = (\controller|nextState.clockHigh~q\ & \controller|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|nextState.clockHigh~q\,
	datad => \controller|Equal0~0_combout\,
	combout => \controller|iteration[4]~5_combout\);

-- Location: FF_X23_Y1_N29
\controller|nextState.disableOutput\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controller|iteration[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|nextState.disableOutput~q\);

-- Location: LCCOMB_X23_Y1_N26
\controller|nextState.latchData~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|nextState.latchData~feeder_combout\ = \controller|nextState.disableOutput~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|nextState.disableOutput~q\,
	combout => \controller|nextState.latchData~feeder_combout\);

-- Location: FF_X23_Y1_N27
\controller|nextState.latchData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controller|nextState.latchData~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|nextState.latchData~q\);

-- Location: FF_X23_Y1_N3
\controller|nextState.enableOutput\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \controller|nextState.latchData~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|nextState.enableOutput~q\);

-- Location: LCCOMB_X23_Y1_N8
\controller|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector0~0_combout\ = ((\controller|nextState.enableOutput~q\) # ((\controller|nextState.clockHigh~q\ & !\controller|Equal0~0_combout\))) # (!\controller|nextState.init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.clockHigh~q\,
	datab => \controller|nextState.init~q\,
	datac => \controller|nextState.enableOutput~q\,
	datad => \controller|Equal0~0_combout\,
	combout => \controller|Selector0~0_combout\);

-- Location: FF_X23_Y1_N9
\controller|nextState.setAddress\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|nextState.setAddress~q\);

-- Location: FF_X24_Y1_N25
\controller|nextState.loadValue\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \controller|nextState.setAddress~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|nextState.loadValue~q\);

-- Location: FF_X23_Y1_N17
\controller|nextState.clockLow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \controller|nextState.loadValue~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|nextState.clockLow~q\);

-- Location: LCCOMB_X23_Y1_N4
\controller|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|WideOr1~combout\ = (\controller|nextState.setAddress~q\) # ((\controller|nextState.clockHigh~q\) # (\controller|nextState.clockLow~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|nextState.setAddress~q\,
	datac => \controller|nextState.clockHigh~q\,
	datad => \controller|nextState.clockLow~q\,
	combout => \controller|WideOr1~combout\);

-- Location: IOIBUF_X41_Y15_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G9
\CLOCK_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X26_Y2_N4
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X24_Y1_N4
\controller|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector1~0_combout\ = (\controller|nextState.loadValue~q\ & ((\u0|altsyncram_component|auto_generated|q_b\(4)) # ((\controller|WideOr1~combout\ & \controller|counting:reddata[4]~q\)))) # (!\controller|nextState.loadValue~q\ & 
-- (\controller|WideOr1~combout\ & (\controller|counting:reddata[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.loadValue~q\,
	datab => \controller|WideOr1~combout\,
	datac => \controller|counting:reddata[4]~q\,
	datad => \u0|altsyncram_component|auto_generated|q_b\(4),
	combout => \controller|Selector1~0_combout\);

-- Location: FF_X24_Y1_N5
\controller|counting:reddata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|counting:reddata[4]~q\);

-- Location: LCCOMB_X23_Y2_N8
\controller|iteration[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|iteration[1]~8_combout\ = (\controller|iteration\(1) & (!\controller|iteration[0]~7\)) # (!\controller|iteration\(1) & ((\controller|iteration[0]~7\) # (GND)))
-- \controller|iteration[1]~9\ = CARRY((!\controller|iteration[0]~7\) # (!\controller|iteration\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|iteration\(1),
	datad => VCC,
	cin => \controller|iteration[0]~7\,
	combout => \controller|iteration[1]~8_combout\,
	cout => \controller|iteration[1]~9\);

-- Location: LCCOMB_X22_Y1_N22
\controller|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Add0~12_combout\ = (\controller|bitShiftCounter\(6) & (!\controller|Add0~11\ & VCC)) # (!\controller|bitShiftCounter\(6) & (\controller|Add0~11\ $ (GND)))
-- \controller|Add0~13\ = CARRY((!\controller|bitShiftCounter\(6) & !\controller|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|bitShiftCounter\(6),
	datad => VCC,
	cin => \controller|Add0~11\,
	combout => \controller|Add0~12_combout\,
	cout => \controller|Add0~13\);

-- Location: LCCOMB_X22_Y1_N24
\controller|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Add0~14_combout\ = (\controller|bitShiftCounter\(7) & ((\controller|Add0~13\) # (GND))) # (!\controller|bitShiftCounter\(7) & (!\controller|Add0~13\))
-- \controller|Add0~15\ = CARRY((\controller|bitShiftCounter\(7)) # (!\controller|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|bitShiftCounter\(7),
	datad => VCC,
	cin => \controller|Add0~13\,
	combout => \controller|Add0~14_combout\,
	cout => \controller|Add0~15\);

-- Location: LCCOMB_X22_Y1_N8
\controller|bitShiftCounter[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|bitShiftCounter[7]~2_combout\ = !\controller|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|Add0~14_combout\,
	combout => \controller|bitShiftCounter[7]~2_combout\);

-- Location: FF_X22_Y1_N9
\controller|bitShiftCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|bitShiftCounter[7]~2_combout\,
	ena => \controller|nextState.setAddress~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|bitShiftCounter\(7));

-- Location: LCCOMB_X22_Y1_N26
\controller|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Add0~16_combout\ = \controller|Add0~15\ $ (\controller|bitShiftCounter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controller|bitShiftCounter\(8),
	cin => \controller|Add0~15\,
	combout => \controller|Add0~16_combout\);

-- Location: LCCOMB_X22_Y1_N0
\controller|bitShiftCounter[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|bitShiftCounter[8]~8_combout\ = !\controller|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Add0~16_combout\,
	combout => \controller|bitShiftCounter[8]~8_combout\);

-- Location: FF_X22_Y1_N1
\controller|bitShiftCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|bitShiftCounter[8]~8_combout\,
	ena => \controller|nextState.setAddress~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|bitShiftCounter\(8));

-- Location: LCCOMB_X23_Y1_N0
\controller|iteration[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|iteration[4]~16_combout\ = (!\controller|bitShiftCounter\(8) & \controller|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|bitShiftCounter\(8),
	datad => \controller|Equal0~0_combout\,
	combout => \controller|iteration[4]~16_combout\);

-- Location: LCCOMB_X22_Y1_N30
\controller|bitShiftCounter[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|bitShiftCounter[6]~3_combout\ = !\controller|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Add0~12_combout\,
	combout => \controller|bitShiftCounter[6]~3_combout\);

-- Location: FF_X22_Y1_N31
\controller|bitShiftCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|bitShiftCounter[6]~3_combout\,
	ena => \controller|nextState.setAddress~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|bitShiftCounter\(6));

-- Location: LCCOMB_X23_Y2_N18
\controller|iteration[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|iteration[4]~17_combout\ = (!\controller|bitShiftCounter\(7) & (\controller|iteration[4]~16_combout\ & (!\controller|bitShiftCounter\(6) & \controller|nextState.clockHigh~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|bitShiftCounter\(7),
	datab => \controller|iteration[4]~16_combout\,
	datac => \controller|bitShiftCounter\(6),
	datad => \controller|nextState.clockHigh~q\,
	combout => \controller|iteration[4]~17_combout\);

-- Location: FF_X23_Y2_N9
\controller|iteration[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|iteration[1]~8_combout\,
	ena => \controller|iteration[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|iteration\(1));

-- Location: LCCOMB_X23_Y2_N14
\controller|iteration[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|iteration[4]~14_combout\ = \controller|iteration\(4) $ (!\controller|iteration[3]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|iteration\(4),
	cin => \controller|iteration[3]~13\,
	combout => \controller|iteration[4]~14_combout\);

-- Location: FF_X23_Y2_N15
\controller|iteration[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|iteration[4]~14_combout\,
	ena => \controller|iteration[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|iteration\(4));

-- Location: LCCOMB_X24_Y2_N20
\controller|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector2~0_combout\ = (\controller|nextState.loadValue~q\ & ((\u0|altsyncram_component|auto_generated|q_b\(3)) # ((\controller|counting:reddata[3]~q\ & \controller|WideOr1~combout\)))) # (!\controller|nextState.loadValue~q\ & 
-- (((\controller|counting:reddata[3]~q\ & \controller|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.loadValue~q\,
	datab => \u0|altsyncram_component|auto_generated|q_b\(3),
	datac => \controller|counting:reddata[3]~q\,
	datad => \controller|WideOr1~combout\,
	combout => \controller|Selector2~0_combout\);

-- Location: FF_X24_Y2_N21
\controller|counting:reddata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|counting:reddata[3]~q\);

-- Location: LCCOMB_X22_Y1_N6
\controller|Selector16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector16~4_combout\ = (\controller|iteration\(3) & (\controller|counting:reddata[3]~q\ & (\controller|counting:reddata[4]~q\ $ (!\controller|iteration\(4))))) # (!\controller|iteration\(3) & (!\controller|counting:reddata[3]~q\ & 
-- (\controller|counting:reddata[4]~q\ $ (!\controller|iteration\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|iteration\(3),
	datab => \controller|counting:reddata[4]~q\,
	datac => \controller|iteration\(4),
	datad => \controller|counting:reddata[3]~q\,
	combout => \controller|Selector16~4_combout\);

-- Location: LCCOMB_X24_Y2_N26
\controller|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector3~0_combout\ = (\u0|altsyncram_component|auto_generated|q_b\(2) & ((\controller|nextState.loadValue~q\) # ((\controller|counting:reddata[2]~q\ & \controller|WideOr1~combout\)))) # (!\u0|altsyncram_component|auto_generated|q_b\(2) & 
-- (((\controller|counting:reddata[2]~q\ & \controller|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|altsyncram_component|auto_generated|q_b\(2),
	datab => \controller|nextState.loadValue~q\,
	datac => \controller|counting:reddata[2]~q\,
	datad => \controller|WideOr1~combout\,
	combout => \controller|Selector3~0_combout\);

-- Location: FF_X24_Y2_N27
\controller|counting:reddata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|counting:reddata[2]~q\);

-- Location: LCCOMB_X24_Y2_N14
\controller|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector5~0_combout\ = (\u0|altsyncram_component|auto_generated|q_b\(0) & ((\controller|nextState.loadValue~q\) # ((\controller|counting:reddata[0]~q\ & \controller|WideOr1~combout\)))) # (!\u0|altsyncram_component|auto_generated|q_b\(0) & 
-- (((\controller|counting:reddata[0]~q\ & \controller|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|altsyncram_component|auto_generated|q_b\(0),
	datab => \controller|nextState.loadValue~q\,
	datac => \controller|counting:reddata[0]~q\,
	datad => \controller|WideOr1~combout\,
	combout => \controller|Selector5~0_combout\);

-- Location: FF_X24_Y2_N15
\controller|counting:reddata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|counting:reddata[0]~q\);

-- Location: LCCOMB_X24_Y2_N4
\controller|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector4~0_combout\ = (\u0|altsyncram_component|auto_generated|q_b\(1) & ((\controller|nextState.loadValue~q\) # ((\controller|counting:reddata[1]~q\ & \controller|WideOr1~combout\)))) # (!\u0|altsyncram_component|auto_generated|q_b\(1) & 
-- (((\controller|counting:reddata[1]~q\ & \controller|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|altsyncram_component|auto_generated|q_b\(1),
	datab => \controller|nextState.loadValue~q\,
	datac => \controller|counting:reddata[1]~q\,
	datad => \controller|WideOr1~combout\,
	combout => \controller|Selector4~0_combout\);

-- Location: FF_X24_Y2_N5
\controller|counting:reddata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|counting:reddata[1]~q\);

-- Location: LCCOMB_X23_Y2_N20
\controller|Selector16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector16~2_combout\ = (\controller|iteration\(1) & (!\controller|iteration\(0) & (\controller|counting:reddata[0]~q\ & \controller|counting:reddata[1]~q\))) # (!\controller|iteration\(1) & ((\controller|counting:reddata[1]~q\) # 
-- ((!\controller|iteration\(0) & \controller|counting:reddata[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|iteration\(0),
	datab => \controller|iteration\(1),
	datac => \controller|counting:reddata[0]~q\,
	datad => \controller|counting:reddata[1]~q\,
	combout => \controller|Selector16~2_combout\);

-- Location: LCCOMB_X24_Y2_N8
\controller|Selector16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector16~3_combout\ = (\controller|iteration\(2) & (\controller|counting:reddata[2]~q\ & \controller|Selector16~2_combout\)) # (!\controller|iteration\(2) & ((\controller|counting:reddata[2]~q\) # (\controller|Selector16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|iteration\(2),
	datac => \controller|counting:reddata[2]~q\,
	datad => \controller|Selector16~2_combout\,
	combout => \controller|Selector16~3_combout\);

-- Location: LCCOMB_X22_Y1_N28
\controller|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector16~0_combout\ = (\controller|counting:reddata[4]~q\ & (((!\controller|iteration\(3) & \controller|counting:reddata[3]~q\)) # (!\controller|iteration\(4)))) # (!\controller|counting:reddata[4]~q\ & (!\controller|iteration\(3) & 
-- (!\controller|iteration\(4) & \controller|counting:reddata[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|iteration\(3),
	datab => \controller|counting:reddata[4]~q\,
	datac => \controller|iteration\(4),
	datad => \controller|counting:reddata[3]~q\,
	combout => \controller|Selector16~0_combout\);

-- Location: LCCOMB_X24_Y1_N18
\controller|r_d~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|r_d~0_combout\ = (\controller|nextState.clockHigh~q\) # ((!\controller|nextState.loadValue~q\ & (!\controller|nextState.clockLow~q\ & !\controller|nextState.setAddress~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.clockHigh~q\,
	datab => \controller|nextState.loadValue~q\,
	datac => \controller|nextState.clockLow~q\,
	datad => \controller|nextState.setAddress~q\,
	combout => \controller|r_d~0_combout\);

-- Location: LCCOMB_X24_Y1_N6
\controller|Selector16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector16~1_combout\ = (\controller|nextState.clockLow~q\ & ((\controller|Selector16~0_combout\) # ((\controller|r_d~q\ & \controller|r_d~0_combout\)))) # (!\controller|nextState.clockLow~q\ & (\controller|r_d~q\ & 
-- ((\controller|r_d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.clockLow~q\,
	datab => \controller|r_d~q\,
	datac => \controller|Selector16~0_combout\,
	datad => \controller|r_d~0_combout\,
	combout => \controller|Selector16~1_combout\);

-- Location: LCCOMB_X24_Y1_N20
\controller|Selector16~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector16~5_combout\ = (\controller|Selector16~1_combout\) # ((\controller|nextState.clockLow~q\ & (\controller|Selector16~4_combout\ & \controller|Selector16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.clockLow~q\,
	datab => \controller|Selector16~4_combout\,
	datac => \controller|Selector16~3_combout\,
	datad => \controller|Selector16~1_combout\,
	combout => \controller|Selector16~5_combout\);

-- Location: FF_X24_Y1_N21
\controller|r_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector16~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|r_d~q\);

-- Location: LCCOMB_X24_Y1_N24
\controller|LEDCont_s_red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|LEDCont_s_red~0_combout\ = (\controller|r_d~q\ & ((\controller|nextState.clockLow~q\) # (\controller|nextState.clockHigh~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.clockLow~q\,
	datab => \controller|r_d~q\,
	datad => \controller|nextState.clockHigh~q\,
	combout => \controller|LEDCont_s_red~0_combout\);

-- Location: LCCOMB_X24_Y2_N16
\controller|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector7~0_combout\ = (\controller|nextState.loadValue~q\ & ((\u0|altsyncram_component|auto_generated|q_b\(8)) # ((\controller|counting:greendata[3]~q\ & \controller|WideOr1~combout\)))) # (!\controller|nextState.loadValue~q\ & 
-- (((\controller|counting:greendata[3]~q\ & \controller|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.loadValue~q\,
	datab => \u0|altsyncram_component|auto_generated|q_b\(8),
	datac => \controller|counting:greendata[3]~q\,
	datad => \controller|WideOr1~combout\,
	combout => \controller|Selector7~0_combout\);

-- Location: FF_X24_Y2_N17
\controller|counting:greendata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|counting:greendata[3]~q\);

-- Location: LCCOMB_X24_Y2_N6
\controller|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector6~0_combout\ = (\controller|nextState.loadValue~q\ & ((\u0|altsyncram_component|auto_generated|q_b\(9)) # ((\controller|counting:greendata[4]~q\ & \controller|WideOr1~combout\)))) # (!\controller|nextState.loadValue~q\ & 
-- (((\controller|counting:greendata[4]~q\ & \controller|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.loadValue~q\,
	datab => \u0|altsyncram_component|auto_generated|q_b\(9),
	datac => \controller|counting:greendata[4]~q\,
	datad => \controller|WideOr1~combout\,
	combout => \controller|Selector6~0_combout\);

-- Location: FF_X24_Y2_N7
\controller|counting:greendata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|counting:greendata[4]~q\);

-- Location: LCCOMB_X23_Y2_N4
\controller|Selector17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector17~4_combout\ = (\controller|iteration\(3) & (\controller|counting:greendata[3]~q\ & (\controller|iteration\(4) $ (!\controller|counting:greendata[4]~q\)))) # (!\controller|iteration\(3) & (!\controller|counting:greendata[3]~q\ & 
-- (\controller|iteration\(4) $ (!\controller|counting:greendata[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|iteration\(3),
	datab => \controller|counting:greendata[3]~q\,
	datac => \controller|iteration\(4),
	datad => \controller|counting:greendata[4]~q\,
	combout => \controller|Selector17~4_combout\);

-- Location: LCCOMB_X24_Y2_N10
\controller|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector10~0_combout\ = (\controller|nextState.loadValue~q\ & ((\u0|altsyncram_component|auto_generated|q_b\(5)) # ((\controller|counting:greendata[0]~q\ & \controller|WideOr1~combout\)))) # (!\controller|nextState.loadValue~q\ & 
-- (((\controller|counting:greendata[0]~q\ & \controller|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.loadValue~q\,
	datab => \u0|altsyncram_component|auto_generated|q_b\(5),
	datac => \controller|counting:greendata[0]~q\,
	datad => \controller|WideOr1~combout\,
	combout => \controller|Selector10~0_combout\);

-- Location: FF_X24_Y2_N11
\controller|counting:greendata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|counting:greendata[0]~q\);

-- Location: LCCOMB_X24_Y2_N28
\controller|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector9~0_combout\ = (\controller|nextState.loadValue~q\ & ((\u0|altsyncram_component|auto_generated|q_b\(6)) # ((\controller|counting:greendata[1]~q\ & \controller|WideOr1~combout\)))) # (!\controller|nextState.loadValue~q\ & 
-- (((\controller|counting:greendata[1]~q\ & \controller|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.loadValue~q\,
	datab => \u0|altsyncram_component|auto_generated|q_b\(6),
	datac => \controller|counting:greendata[1]~q\,
	datad => \controller|WideOr1~combout\,
	combout => \controller|Selector9~0_combout\);

-- Location: FF_X24_Y2_N29
\controller|counting:greendata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|counting:greendata[1]~q\);

-- Location: LCCOMB_X23_Y2_N16
\controller|Selector17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector17~2_combout\ = (\controller|iteration\(1) & (!\controller|iteration\(0) & (\controller|counting:greendata[0]~q\ & \controller|counting:greendata[1]~q\))) # (!\controller|iteration\(1) & ((\controller|counting:greendata[1]~q\) # 
-- ((!\controller|iteration\(0) & \controller|counting:greendata[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|iteration\(0),
	datab => \controller|iteration\(1),
	datac => \controller|counting:greendata[0]~q\,
	datad => \controller|counting:greendata[1]~q\,
	combout => \controller|Selector17~2_combout\);

-- Location: LCCOMB_X24_Y2_N2
\controller|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector8~0_combout\ = (\u0|altsyncram_component|auto_generated|q_b\(7) & ((\controller|nextState.loadValue~q\) # ((\controller|counting:greendata[2]~q\ & \controller|WideOr1~combout\)))) # (!\u0|altsyncram_component|auto_generated|q_b\(7) & 
-- (((\controller|counting:greendata[2]~q\ & \controller|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|altsyncram_component|auto_generated|q_b\(7),
	datab => \controller|nextState.loadValue~q\,
	datac => \controller|counting:greendata[2]~q\,
	datad => \controller|WideOr1~combout\,
	combout => \controller|Selector8~0_combout\);

-- Location: FF_X24_Y2_N3
\controller|counting:greendata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|counting:greendata[2]~q\);

-- Location: LCCOMB_X24_Y2_N24
\controller|Selector17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector17~3_combout\ = (\controller|iteration\(2) & (\controller|Selector17~2_combout\ & \controller|counting:greendata[2]~q\)) # (!\controller|iteration\(2) & ((\controller|Selector17~2_combout\) # (\controller|counting:greendata[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|iteration\(2),
	datac => \controller|Selector17~2_combout\,
	datad => \controller|counting:greendata[2]~q\,
	combout => \controller|Selector17~3_combout\);

-- Location: LCCOMB_X23_Y2_N30
\controller|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector17~0_combout\ = (\controller|iteration\(4) & (!\controller|iteration\(3) & (\controller|counting:greendata[3]~q\ & \controller|counting:greendata[4]~q\))) # (!\controller|iteration\(4) & ((\controller|counting:greendata[4]~q\) # 
-- ((!\controller|iteration\(3) & \controller|counting:greendata[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|iteration\(3),
	datab => \controller|counting:greendata[3]~q\,
	datac => \controller|iteration\(4),
	datad => \controller|counting:greendata[4]~q\,
	combout => \controller|Selector17~0_combout\);

-- Location: LCCOMB_X24_Y1_N28
\controller|Selector17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector17~1_combout\ = (\controller|nextState.clockLow~q\ & ((\controller|Selector17~0_combout\) # ((\controller|g_d~q\ & \controller|r_d~0_combout\)))) # (!\controller|nextState.clockLow~q\ & (\controller|g_d~q\ & 
-- ((\controller|r_d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.clockLow~q\,
	datab => \controller|g_d~q\,
	datac => \controller|Selector17~0_combout\,
	datad => \controller|r_d~0_combout\,
	combout => \controller|Selector17~1_combout\);

-- Location: LCCOMB_X24_Y1_N14
\controller|Selector17~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector17~5_combout\ = (\controller|Selector17~1_combout\) # ((\controller|nextState.clockLow~q\ & (\controller|Selector17~4_combout\ & \controller|Selector17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.clockLow~q\,
	datab => \controller|Selector17~4_combout\,
	datac => \controller|Selector17~3_combout\,
	datad => \controller|Selector17~1_combout\,
	combout => \controller|Selector17~5_combout\);

-- Location: FF_X24_Y1_N15
\controller|g_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector17~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|g_d~q\);

-- Location: LCCOMB_X24_Y1_N12
\controller|LEDCont_s_green~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|LEDCont_s_green~0_combout\ = (\controller|g_d~q\ & ((\controller|nextState.clockHigh~q\) # (\controller|nextState.clockLow~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.clockHigh~q\,
	datab => \controller|g_d~q\,
	datac => \controller|nextState.clockLow~q\,
	combout => \controller|LEDCont_s_green~0_combout\);

-- Location: LCCOMB_X24_Y2_N0
\controller|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector12~0_combout\ = (\controller|nextState.loadValue~q\ & ((\u0|altsyncram_component|auto_generated|q_b\(13)) # ((\controller|counting:bluedata[3]~q\ & \controller|WideOr1~combout\)))) # (!\controller|nextState.loadValue~q\ & 
-- (((\controller|counting:bluedata[3]~q\ & \controller|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.loadValue~q\,
	datab => \u0|altsyncram_component|auto_generated|q_b\(13),
	datac => \controller|counting:bluedata[3]~q\,
	datad => \controller|WideOr1~combout\,
	combout => \controller|Selector12~0_combout\);

-- Location: FF_X24_Y2_N1
\controller|counting:bluedata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|counting:bluedata[3]~q\);

-- Location: LCCOMB_X24_Y2_N30
\controller|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector13~0_combout\ = (\controller|nextState.loadValue~q\ & ((\u0|altsyncram_component|auto_generated|q_b\(12)) # ((\controller|counting:bluedata[2]~q\ & \controller|WideOr1~combout\)))) # (!\controller|nextState.loadValue~q\ & 
-- (((\controller|counting:bluedata[2]~q\ & \controller|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.loadValue~q\,
	datab => \u0|altsyncram_component|auto_generated|q_b\(12),
	datac => \controller|counting:bluedata[2]~q\,
	datad => \controller|WideOr1~combout\,
	combout => \controller|Selector13~0_combout\);

-- Location: FF_X24_Y2_N31
\controller|counting:bluedata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|counting:bluedata[2]~q\);

-- Location: LCCOMB_X24_Y2_N12
\controller|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector14~0_combout\ = (\u0|altsyncram_component|auto_generated|q_b\(11) & ((\controller|nextState.loadValue~q\) # ((\controller|counting:bluedata[1]~q\ & \controller|WideOr1~combout\)))) # (!\u0|altsyncram_component|auto_generated|q_b\(11) & 
-- (((\controller|counting:bluedata[1]~q\ & \controller|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|altsyncram_component|auto_generated|q_b\(11),
	datab => \controller|nextState.loadValue~q\,
	datac => \controller|counting:bluedata[1]~q\,
	datad => \controller|WideOr1~combout\,
	combout => \controller|Selector14~0_combout\);

-- Location: FF_X24_Y2_N13
\controller|counting:bluedata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|counting:bluedata[1]~q\);

-- Location: LCCOMB_X24_Y2_N22
\controller|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector15~0_combout\ = (\u0|altsyncram_component|auto_generated|q_b\(10) & ((\controller|nextState.loadValue~q\) # ((\controller|counting:bluedata[0]~q\ & \controller|WideOr1~combout\)))) # (!\u0|altsyncram_component|auto_generated|q_b\(10) & 
-- (((\controller|counting:bluedata[0]~q\ & \controller|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|altsyncram_component|auto_generated|q_b\(10),
	datab => \controller|nextState.loadValue~q\,
	datac => \controller|counting:bluedata[0]~q\,
	datad => \controller|WideOr1~combout\,
	combout => \controller|Selector15~0_combout\);

-- Location: FF_X24_Y2_N23
\controller|counting:bluedata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|counting:bluedata[0]~q\);

-- Location: LCCOMB_X23_Y2_N2
\controller|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector18~0_combout\ = (\controller|iteration\(1) & (!\controller|iteration\(0) & (\controller|counting:bluedata[1]~q\ & \controller|counting:bluedata[0]~q\))) # (!\controller|iteration\(1) & ((\controller|counting:bluedata[1]~q\) # 
-- ((!\controller|iteration\(0) & \controller|counting:bluedata[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|iteration\(0),
	datab => \controller|iteration\(1),
	datac => \controller|counting:bluedata[1]~q\,
	datad => \controller|counting:bluedata[0]~q\,
	combout => \controller|Selector18~0_combout\);

-- Location: LCCOMB_X23_Y2_N28
\controller|Selector18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector18~1_combout\ = (\controller|iteration\(2) & (\controller|counting:bluedata[2]~q\ & \controller|Selector18~0_combout\)) # (!\controller|iteration\(2) & ((\controller|counting:bluedata[2]~q\) # (\controller|Selector18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|iteration\(2),
	datac => \controller|counting:bluedata[2]~q\,
	datad => \controller|Selector18~0_combout\,
	combout => \controller|Selector18~1_combout\);

-- Location: LCCOMB_X23_Y2_N26
\controller|Selector18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector18~2_combout\ = (\controller|iteration\(3) & (\controller|counting:bluedata[3]~q\ & \controller|Selector18~1_combout\)) # (!\controller|iteration\(3) & ((\controller|counting:bluedata[3]~q\) # (\controller|Selector18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|iteration\(3),
	datac => \controller|counting:bluedata[3]~q\,
	datad => \controller|Selector18~1_combout\,
	combout => \controller|Selector18~2_combout\);

-- Location: LCCOMB_X24_Y2_N18
\controller|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector11~0_combout\ = (\controller|nextState.loadValue~q\ & ((\u0|altsyncram_component|auto_generated|q_b\(14)) # ((\controller|counting:bluedata[4]~q\ & \controller|WideOr1~combout\)))) # (!\controller|nextState.loadValue~q\ & 
-- (((\controller|counting:bluedata[4]~q\ & \controller|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.loadValue~q\,
	datab => \u0|altsyncram_component|auto_generated|q_b\(14),
	datac => \controller|counting:bluedata[4]~q\,
	datad => \controller|WideOr1~combout\,
	combout => \controller|Selector11~0_combout\);

-- Location: FF_X24_Y2_N19
\controller|counting:bluedata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|counting:bluedata[4]~q\);

-- Location: LCCOMB_X23_Y2_N0
\controller|Selector18~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector18~3_combout\ = (\controller|iteration\(4) & (\controller|Selector18~2_combout\ & \controller|counting:bluedata[4]~q\)) # (!\controller|iteration\(4) & ((\controller|Selector18~2_combout\) # (\controller|counting:bluedata[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|iteration\(4),
	datac => \controller|Selector18~2_combout\,
	datad => \controller|counting:bluedata[4]~q\,
	combout => \controller|Selector18~3_combout\);

-- Location: LCCOMB_X24_Y1_N22
\controller|Selector18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector18~4_combout\ = (\controller|nextState.clockLow~q\ & ((\controller|Selector18~3_combout\) # ((\controller|r_d~0_combout\ & \controller|b_d~q\)))) # (!\controller|nextState.clockLow~q\ & (\controller|r_d~0_combout\ & 
-- (\controller|b_d~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.clockLow~q\,
	datab => \controller|r_d~0_combout\,
	datac => \controller|b_d~q\,
	datad => \controller|Selector18~3_combout\,
	combout => \controller|Selector18~4_combout\);

-- Location: FF_X24_Y1_N23
\controller|b_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector18~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|b_d~q\);

-- Location: LCCOMB_X24_Y1_N0
\controller|LEDCont_s_blue~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|LEDCont_s_blue~0_combout\ = (\controller|b_d~q\ & ((\controller|nextState.clockHigh~q\) # (\controller|nextState.clockLow~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.clockHigh~q\,
	datac => \controller|nextState.clockLow~q\,
	datad => \controller|b_d~q\,
	combout => \controller|LEDCont_s_blue~0_combout\);

-- Location: LCCOMB_X22_Y1_N4
\controller|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector19~0_combout\ = (\controller|bitShiftCounter\(0) & (\controller|bitShiftCounter\(6) & (\controller|bitShiftCounter\(7) $ (!\controller|bitShiftCounter\(1))))) # (!\controller|bitShiftCounter\(0) & (!\controller|bitShiftCounter\(6) & 
-- (\controller|bitShiftCounter\(7) $ (!\controller|bitShiftCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|bitShiftCounter\(0),
	datab => \controller|bitShiftCounter\(7),
	datac => \controller|bitShiftCounter\(6),
	datad => \controller|bitShiftCounter\(1),
	combout => \controller|Selector19~0_combout\);

-- Location: LCCOMB_X24_Y1_N30
\controller|Selector19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector19~3_combout\ = (\controller|Selector19~2_combout\ & ((\controller|Selector19~0_combout\) # ((\controller|c_d~q\ & \controller|r_d~0_combout\)))) # (!\controller|Selector19~2_combout\ & (((\controller|c_d~q\ & 
-- \controller|r_d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Selector19~2_combout\,
	datab => \controller|Selector19~0_combout\,
	datac => \controller|c_d~q\,
	datad => \controller|r_d~0_combout\,
	combout => \controller|Selector19~3_combout\);

-- Location: FF_X24_Y1_N31
\controller|c_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \controller|Selector19~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|c_d~q\);

-- Location: LCCOMB_X24_Y1_N16
\controller|LEDCont_s_cath~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|LEDCont_s_cath~0_combout\ = (\controller|c_d~q\ & ((\controller|nextState.clockLow~q\) # (\controller|nextState.clockHigh~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.clockLow~q\,
	datac => \controller|c_d~q\,
	datad => \controller|nextState.clockHigh~q\,
	combout => \controller|LEDCont_s_cath~0_combout\);

-- Location: LCCOMB_X23_Y1_N16
\controller|LEDCont_s_OEna\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|LEDCont_s_OEna~combout\ = (\controller|nextState.latchData~q\) # (\controller|nextState.disableOutput~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nextState.latchData~q\,
	datad => \controller|nextState.disableOutput~q\,
	combout => \controller|LEDCont_s_OEna~combout\);

-- Location: IOIBUF_X19_Y29_N8
\CLOCK_50_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50_2,
	o => \CLOCK_50_2~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\BUTTON[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON(0),
	o => \BUTTON[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\BUTTON[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON(1),
	o => \BUTTON[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\BUTTON[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON(2),
	o => \BUTTON[2]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\SW[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\SW[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\FL_RY~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_RY,
	o => \FL_RY~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\SD_WP_N~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SD_WP_N,
	o => \SD_WP_N~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\GPIO0_CLKIN[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO0_CLKIN(0),
	o => \GPIO0_CLKIN[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\GPIO0_CLKIN[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO0_CLKIN(1),
	o => \GPIO0_CLKIN[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\GPIO1_CLKIN[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_CLKIN(0),
	o => \GPIO1_CLKIN[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\GPIO1_CLKIN[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_CLKIN(1),
	o => \GPIO1_CLKIN[1]~input_o\);

-- Location: IOIBUF_X16_Y29_N1
\DRAM_DQ[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(0),
	o => \DRAM_DQ[0]~input_o\);

-- Location: IOIBUF_X9_Y29_N15
\DRAM_DQ[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(1),
	o => \DRAM_DQ[1]~input_o\);

-- Location: IOIBUF_X9_Y29_N29
\DRAM_DQ[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(2),
	o => \DRAM_DQ[2]~input_o\);

-- Location: IOIBUF_X11_Y29_N29
\DRAM_DQ[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(3),
	o => \DRAM_DQ[3]~input_o\);

-- Location: IOIBUF_X7_Y29_N22
\DRAM_DQ[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(4),
	o => \DRAM_DQ[4]~input_o\);

-- Location: IOIBUF_X9_Y29_N22
\DRAM_DQ[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(5),
	o => \DRAM_DQ[5]~input_o\);

-- Location: IOIBUF_X7_Y29_N1
\DRAM_DQ[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(6),
	o => \DRAM_DQ[6]~input_o\);

-- Location: IOIBUF_X5_Y29_N22
\DRAM_DQ[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(7),
	o => \DRAM_DQ[7]~input_o\);

-- Location: IOIBUF_X14_Y29_N22
\DRAM_DQ[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(8),
	o => \DRAM_DQ[8]~input_o\);

-- Location: IOIBUF_X14_Y29_N1
\DRAM_DQ[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(9),
	o => \DRAM_DQ[9]~input_o\);

-- Location: IOIBUF_X16_Y29_N29
\DRAM_DQ[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(10),
	o => \DRAM_DQ[10]~input_o\);

-- Location: IOIBUF_X14_Y29_N8
\DRAM_DQ[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(11),
	o => \DRAM_DQ[11]~input_o\);

-- Location: IOIBUF_X16_Y29_N22
\DRAM_DQ[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(12),
	o => \DRAM_DQ[12]~input_o\);

-- Location: IOIBUF_X16_Y29_N15
\DRAM_DQ[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(13),
	o => \DRAM_DQ[13]~input_o\);

-- Location: IOIBUF_X16_Y29_N8
\DRAM_DQ[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(14),
	o => \DRAM_DQ[14]~input_o\);

-- Location: IOIBUF_X7_Y29_N29
\DRAM_DQ[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(15),
	o => \DRAM_DQ[15]~input_o\);

-- Location: IOIBUF_X0_Y2_N1
\FL_DQ[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(0),
	o => \FL_DQ[0]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\FL_DQ[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(1),
	o => \FL_DQ[1]~input_o\);

-- Location: IOIBUF_X0_Y2_N22
\FL_DQ[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(2),
	o => \FL_DQ[2]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\FL_DQ[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(3),
	o => \FL_DQ[3]~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\FL_DQ[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(4),
	o => \FL_DQ[4]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\FL_DQ[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(5),
	o => \FL_DQ[5]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\FL_DQ[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(6),
	o => \FL_DQ[6]~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\FL_DQ[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(7),
	o => \FL_DQ[7]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\FL_DQ[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(8),
	o => \FL_DQ[8]~input_o\);

-- Location: IOIBUF_X0_Y2_N8
\FL_DQ[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(9),
	o => \FL_DQ[9]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\FL_DQ[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(10),
	o => \FL_DQ[10]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\FL_DQ[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(11),
	o => \FL_DQ[11]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\FL_DQ[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(12),
	o => \FL_DQ[12]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\FL_DQ[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(13),
	o => \FL_DQ[13]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\FL_DQ[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(14),
	o => \FL_DQ[14]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\FL_DQ15_AM1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ15_AM1,
	o => \FL_DQ15_AM1~input_o\);

-- Location: IOIBUF_X41_Y2_N22
\SD_DAT0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_DAT0,
	o => \SD_DAT0~input_o\);

-- Location: IOIBUF_X41_Y5_N1
\SD_DAT3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_DAT3,
	o => \SD_DAT3~input_o\);

-- Location: IOIBUF_X41_Y3_N1
\SD_CMD~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_CMD,
	o => \SD_CMD~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\GPIO0_D[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(8),
	o => \GPIO0_D[8]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\GPIO0_D[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(9),
	o => \GPIO0_D[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\GPIO0_D[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(10),
	o => \GPIO0_D[10]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\GPIO0_D[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(11),
	o => \GPIO0_D[11]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\GPIO0_D[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(12),
	o => \GPIO0_D[12]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\GPIO0_D[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(13),
	o => \GPIO0_D[13]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\GPIO0_D[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(14),
	o => \GPIO0_D[14]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\GPIO0_D[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(15),
	o => \GPIO0_D[15]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\GPIO0_D[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(16),
	o => \GPIO0_D[16]~input_o\);

-- Location: IOIBUF_X39_Y0_N22
\GPIO0_D[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(17),
	o => \GPIO0_D[17]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\GPIO0_D[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(18),
	o => \GPIO0_D[18]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\GPIO0_D[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(19),
	o => \GPIO0_D[19]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\GPIO0_D[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(20),
	o => \GPIO0_D[20]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\GPIO0_D[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(21),
	o => \GPIO0_D[21]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\GPIO0_D[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(22),
	o => \GPIO0_D[22]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\GPIO0_D[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(23),
	o => \GPIO0_D[23]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\GPIO0_D[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(24),
	o => \GPIO0_D[24]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\GPIO0_D[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(25),
	o => \GPIO0_D[25]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\GPIO0_D[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(26),
	o => \GPIO0_D[26]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\GPIO0_D[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(27),
	o => \GPIO0_D[27]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\GPIO0_D[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(28),
	o => \GPIO0_D[28]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\GPIO0_D[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(29),
	o => \GPIO0_D[29]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\GPIO0_D[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(30),
	o => \GPIO0_D[30]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\GPIO0_D[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(31),
	o => \GPIO0_D[31]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\GPIO1_D[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(0),
	o => \GPIO1_D[0]~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\GPIO1_D[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(1),
	o => \GPIO1_D[1]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\GPIO1_D[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(2),
	o => \GPIO1_D[2]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\GPIO1_D[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(3),
	o => \GPIO1_D[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\GPIO1_D[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(4),
	o => \GPIO1_D[4]~input_o\);

-- Location: IOIBUF_X35_Y0_N29
\GPIO1_D[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(5),
	o => \GPIO1_D[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\GPIO1_D[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(6),
	o => \GPIO1_D[6]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\GPIO1_D[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(7),
	o => \GPIO1_D[7]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\GPIO1_D[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(8),
	o => \GPIO1_D[8]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\GPIO1_D[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(9),
	o => \GPIO1_D[9]~input_o\);

-- Location: IOIBUF_X39_Y0_N29
\GPIO1_D[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(10),
	o => \GPIO1_D[10]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\GPIO1_D[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(11),
	o => \GPIO1_D[11]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\GPIO1_D[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(12),
	o => \GPIO1_D[12]~input_o\);

-- Location: IOIBUF_X32_Y0_N29
\GPIO1_D[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(13),
	o => \GPIO1_D[13]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\GPIO1_D[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(14),
	o => \GPIO1_D[14]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\GPIO1_D[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(15),
	o => \GPIO1_D[15]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\GPIO1_D[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(16),
	o => \GPIO1_D[16]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\GPIO1_D[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(17),
	o => \GPIO1_D[17]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\GPIO1_D[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(18),
	o => \GPIO1_D[18]~input_o\);

-- Location: IOIBUF_X39_Y0_N15
\GPIO1_D[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(19),
	o => \GPIO1_D[19]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\GPIO1_D[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(20),
	o => \GPIO1_D[20]~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\GPIO1_D[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(21),
	o => \GPIO1_D[21]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\GPIO1_D[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(22),
	o => \GPIO1_D[22]~input_o\);

-- Location: IOIBUF_X5_Y0_N29
\GPIO1_D[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(23),
	o => \GPIO1_D[23]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\GPIO1_D[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(24),
	o => \GPIO1_D[24]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\GPIO1_D[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(25),
	o => \GPIO1_D[25]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\GPIO1_D[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(26),
	o => \GPIO1_D[26]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\GPIO1_D[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(27),
	o => \GPIO1_D[27]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\GPIO1_D[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(28),
	o => \GPIO1_D[28]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\GPIO1_D[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(29),
	o => \GPIO1_D[29]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\GPIO1_D[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(30),
	o => \GPIO1_D[30]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\GPIO1_D[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO1_D(31),
	o => \GPIO1_D[31]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\GPIO0_D[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(0),
	o => \GPIO0_D[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\GPIO0_D[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(1),
	o => \GPIO0_D[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\GPIO0_D[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(2),
	o => \GPIO0_D[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\GPIO0_D[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(3),
	o => \GPIO0_D[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\GPIO0_D[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(4),
	o => \GPIO0_D[4]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\GPIO0_D[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(5),
	o => \GPIO0_D[5]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\GPIO0_D[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(6),
	o => \GPIO0_D[6]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\GPIO0_D[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO0_D(7),
	o => \GPIO0_D[7]~input_o\);

ww_HEX0_D(0) <= \HEX0_D[0]~output_o\;

ww_HEX0_D(1) <= \HEX0_D[1]~output_o\;

ww_HEX0_D(2) <= \HEX0_D[2]~output_o\;

ww_HEX0_D(3) <= \HEX0_D[3]~output_o\;

ww_HEX0_D(4) <= \HEX0_D[4]~output_o\;

ww_HEX0_D(5) <= \HEX0_D[5]~output_o\;

ww_HEX0_D(6) <= \HEX0_D[6]~output_o\;

ww_HEX0_DP <= \HEX0_DP~output_o\;

ww_HEX1_D(0) <= \HEX1_D[0]~output_o\;

ww_HEX1_D(1) <= \HEX1_D[1]~output_o\;

ww_HEX1_D(2) <= \HEX1_D[2]~output_o\;

ww_HEX1_D(3) <= \HEX1_D[3]~output_o\;

ww_HEX1_D(4) <= \HEX1_D[4]~output_o\;

ww_HEX1_D(5) <= \HEX1_D[5]~output_o\;

ww_HEX1_D(6) <= \HEX1_D[6]~output_o\;

ww_HEX1_DP <= \HEX1_DP~output_o\;

ww_HEX2_D(0) <= \HEX2_D[0]~output_o\;

ww_HEX2_D(1) <= \HEX2_D[1]~output_o\;

ww_HEX2_D(2) <= \HEX2_D[2]~output_o\;

ww_HEX2_D(3) <= \HEX2_D[3]~output_o\;

ww_HEX2_D(4) <= \HEX2_D[4]~output_o\;

ww_HEX2_D(5) <= \HEX2_D[5]~output_o\;

ww_HEX2_D(6) <= \HEX2_D[6]~output_o\;

ww_HEX2_DP <= \HEX2_DP~output_o\;

ww_HEX3_D(0) <= \HEX3_D[0]~output_o\;

ww_HEX3_D(1) <= \HEX3_D[1]~output_o\;

ww_HEX3_D(2) <= \HEX3_D[2]~output_o\;

ww_HEX3_D(3) <= \HEX3_D[3]~output_o\;

ww_HEX3_D(4) <= \HEX3_D[4]~output_o\;

ww_HEX3_D(5) <= \HEX3_D[5]~output_o\;

ww_HEX3_D(6) <= \HEX3_D[6]~output_o\;

ww_HEX3_DP <= \HEX3_DP~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_LEDG(9) <= \LEDG[9]~output_o\;

ww_DRAM_CLK <= \DRAM_CLK~output_o\;

ww_DRAM_ADDR(0) <= \DRAM_ADDR[0]~output_o\;

ww_DRAM_ADDR(1) <= \DRAM_ADDR[1]~output_o\;

ww_DRAM_ADDR(2) <= \DRAM_ADDR[2]~output_o\;

ww_DRAM_ADDR(3) <= \DRAM_ADDR[3]~output_o\;

ww_DRAM_ADDR(4) <= \DRAM_ADDR[4]~output_o\;

ww_DRAM_ADDR(5) <= \DRAM_ADDR[5]~output_o\;

ww_DRAM_ADDR(6) <= \DRAM_ADDR[6]~output_o\;

ww_DRAM_ADDR(7) <= \DRAM_ADDR[7]~output_o\;

ww_DRAM_ADDR(8) <= \DRAM_ADDR[8]~output_o\;

ww_DRAM_ADDR(9) <= \DRAM_ADDR[9]~output_o\;

ww_DRAM_ADDR(10) <= \DRAM_ADDR[10]~output_o\;

ww_DRAM_ADDR(11) <= \DRAM_ADDR[11]~output_o\;

ww_DRAM_BA_1 <= \DRAM_BA_1~output_o\;

ww_DRAM_BA_0 <= \DRAM_BA_0~output_o\;

ww_DRAM_CAS_N <= \DRAM_CAS_N~output_o\;

ww_DRAM_CKE <= \DRAM_CKE~output_o\;

ww_DRAM_CS_N <= \DRAM_CS_N~output_o\;

ww_DRAM_UDQM <= \DRAM_UDQM~output_o\;

ww_DRAM_LDQM <= \DRAM_LDQM~output_o\;

ww_DRAM_RAS_N <= \DRAM_RAS_N~output_o\;

ww_DRAM_WE_N <= \DRAM_WE_N~output_o\;

ww_FL_ADDR(0) <= \FL_ADDR[0]~output_o\;

ww_FL_ADDR(1) <= \FL_ADDR[1]~output_o\;

ww_FL_ADDR(2) <= \FL_ADDR[2]~output_o\;

ww_FL_ADDR(3) <= \FL_ADDR[3]~output_o\;

ww_FL_ADDR(4) <= \FL_ADDR[4]~output_o\;

ww_FL_ADDR(5) <= \FL_ADDR[5]~output_o\;

ww_FL_ADDR(6) <= \FL_ADDR[6]~output_o\;

ww_FL_ADDR(7) <= \FL_ADDR[7]~output_o\;

ww_FL_ADDR(8) <= \FL_ADDR[8]~output_o\;

ww_FL_ADDR(9) <= \FL_ADDR[9]~output_o\;

ww_FL_ADDR(10) <= \FL_ADDR[10]~output_o\;

ww_FL_ADDR(11) <= \FL_ADDR[11]~output_o\;

ww_FL_ADDR(12) <= \FL_ADDR[12]~output_o\;

ww_FL_ADDR(13) <= \FL_ADDR[13]~output_o\;

ww_FL_ADDR(14) <= \FL_ADDR[14]~output_o\;

ww_FL_ADDR(15) <= \FL_ADDR[15]~output_o\;

ww_FL_ADDR(16) <= \FL_ADDR[16]~output_o\;

ww_FL_ADDR(17) <= \FL_ADDR[17]~output_o\;

ww_FL_ADDR(18) <= \FL_ADDR[18]~output_o\;

ww_FL_ADDR(19) <= \FL_ADDR[19]~output_o\;

ww_FL_ADDR(20) <= \FL_ADDR[20]~output_o\;

ww_FL_ADDR(21) <= \FL_ADDR[21]~output_o\;

ww_FL_WE_N <= \FL_WE_N~output_o\;

ww_FL_RST_N <= \FL_RST_N~output_o\;

ww_FL_OE_N <= \FL_OE_N~output_o\;

ww_FL_CE_N <= \FL_CE_N~output_o\;

ww_FL_WP_N <= \FL_WP_N~output_o\;

ww_FL_BYTE_N <= \FL_BYTE_N~output_o\;

ww_SD_CLK <= \SD_CLK~output_o\;

ww_GPIO0_CLKOUT(0) <= \GPIO0_CLKOUT[0]~output_o\;

ww_GPIO0_CLKOUT(1) <= \GPIO0_CLKOUT[1]~output_o\;

ww_GPIO1_CLKOUT(0) <= \GPIO1_CLKOUT[0]~output_o\;

ww_GPIO1_CLKOUT(1) <= \GPIO1_CLKOUT[1]~output_o\;

DRAM_DQ(0) <= \DRAM_DQ[0]~output_o\;

DRAM_DQ(1) <= \DRAM_DQ[1]~output_o\;

DRAM_DQ(2) <= \DRAM_DQ[2]~output_o\;

DRAM_DQ(3) <= \DRAM_DQ[3]~output_o\;

DRAM_DQ(4) <= \DRAM_DQ[4]~output_o\;

DRAM_DQ(5) <= \DRAM_DQ[5]~output_o\;

DRAM_DQ(6) <= \DRAM_DQ[6]~output_o\;

DRAM_DQ(7) <= \DRAM_DQ[7]~output_o\;

DRAM_DQ(8) <= \DRAM_DQ[8]~output_o\;

DRAM_DQ(9) <= \DRAM_DQ[9]~output_o\;

DRAM_DQ(10) <= \DRAM_DQ[10]~output_o\;

DRAM_DQ(11) <= \DRAM_DQ[11]~output_o\;

DRAM_DQ(12) <= \DRAM_DQ[12]~output_o\;

DRAM_DQ(13) <= \DRAM_DQ[13]~output_o\;

DRAM_DQ(14) <= \DRAM_DQ[14]~output_o\;

DRAM_DQ(15) <= \DRAM_DQ[15]~output_o\;

FL_DQ(0) <= \FL_DQ[0]~output_o\;

FL_DQ(1) <= \FL_DQ[1]~output_o\;

FL_DQ(2) <= \FL_DQ[2]~output_o\;

FL_DQ(3) <= \FL_DQ[3]~output_o\;

FL_DQ(4) <= \FL_DQ[4]~output_o\;

FL_DQ(5) <= \FL_DQ[5]~output_o\;

FL_DQ(6) <= \FL_DQ[6]~output_o\;

FL_DQ(7) <= \FL_DQ[7]~output_o\;

FL_DQ(8) <= \FL_DQ[8]~output_o\;

FL_DQ(9) <= \FL_DQ[9]~output_o\;

FL_DQ(10) <= \FL_DQ[10]~output_o\;

FL_DQ(11) <= \FL_DQ[11]~output_o\;

FL_DQ(12) <= \FL_DQ[12]~output_o\;

FL_DQ(13) <= \FL_DQ[13]~output_o\;

FL_DQ(14) <= \FL_DQ[14]~output_o\;

FL_DQ15_AM1 <= \FL_DQ15_AM1~output_o\;

SD_DAT0 <= \SD_DAT0~output_o\;

SD_DAT3 <= \SD_DAT3~output_o\;

SD_CMD <= \SD_CMD~output_o\;

GPIO0_D(8) <= \GPIO0_D[8]~output_o\;

GPIO0_D(9) <= \GPIO0_D[9]~output_o\;

GPIO0_D(10) <= \GPIO0_D[10]~output_o\;

GPIO0_D(11) <= \GPIO0_D[11]~output_o\;

GPIO0_D(12) <= \GPIO0_D[12]~output_o\;

GPIO0_D(13) <= \GPIO0_D[13]~output_o\;

GPIO0_D(14) <= \GPIO0_D[14]~output_o\;

GPIO0_D(15) <= \GPIO0_D[15]~output_o\;

GPIO0_D(16) <= \GPIO0_D[16]~output_o\;

GPIO0_D(17) <= \GPIO0_D[17]~output_o\;

GPIO0_D(18) <= \GPIO0_D[18]~output_o\;

GPIO0_D(19) <= \GPIO0_D[19]~output_o\;

GPIO0_D(20) <= \GPIO0_D[20]~output_o\;

GPIO0_D(21) <= \GPIO0_D[21]~output_o\;

GPIO0_D(22) <= \GPIO0_D[22]~output_o\;

GPIO0_D(23) <= \GPIO0_D[23]~output_o\;

GPIO0_D(24) <= \GPIO0_D[24]~output_o\;

GPIO0_D(25) <= \GPIO0_D[25]~output_o\;

GPIO0_D(26) <= \GPIO0_D[26]~output_o\;

GPIO0_D(27) <= \GPIO0_D[27]~output_o\;

GPIO0_D(28) <= \GPIO0_D[28]~output_o\;

GPIO0_D(29) <= \GPIO0_D[29]~output_o\;

GPIO0_D(30) <= \GPIO0_D[30]~output_o\;

GPIO0_D(31) <= \GPIO0_D[31]~output_o\;

GPIO1_D(0) <= \GPIO1_D[0]~output_o\;

GPIO1_D(1) <= \GPIO1_D[1]~output_o\;

GPIO1_D(2) <= \GPIO1_D[2]~output_o\;

GPIO1_D(3) <= \GPIO1_D[3]~output_o\;

GPIO1_D(4) <= \GPIO1_D[4]~output_o\;

GPIO1_D(5) <= \GPIO1_D[5]~output_o\;

GPIO1_D(6) <= \GPIO1_D[6]~output_o\;

GPIO1_D(7) <= \GPIO1_D[7]~output_o\;

GPIO1_D(8) <= \GPIO1_D[8]~output_o\;

GPIO1_D(9) <= \GPIO1_D[9]~output_o\;

GPIO1_D(10) <= \GPIO1_D[10]~output_o\;

GPIO1_D(11) <= \GPIO1_D[11]~output_o\;

GPIO1_D(12) <= \GPIO1_D[12]~output_o\;

GPIO1_D(13) <= \GPIO1_D[13]~output_o\;

GPIO1_D(14) <= \GPIO1_D[14]~output_o\;

GPIO1_D(15) <= \GPIO1_D[15]~output_o\;

GPIO1_D(16) <= \GPIO1_D[16]~output_o\;

GPIO1_D(17) <= \GPIO1_D[17]~output_o\;

GPIO1_D(18) <= \GPIO1_D[18]~output_o\;

GPIO1_D(19) <= \GPIO1_D[19]~output_o\;

GPIO1_D(20) <= \GPIO1_D[20]~output_o\;

GPIO1_D(21) <= \GPIO1_D[21]~output_o\;

GPIO1_D(22) <= \GPIO1_D[22]~output_o\;

GPIO1_D(23) <= \GPIO1_D[23]~output_o\;

GPIO1_D(24) <= \GPIO1_D[24]~output_o\;

GPIO1_D(25) <= \GPIO1_D[25]~output_o\;

GPIO1_D(26) <= \GPIO1_D[26]~output_o\;

GPIO1_D(27) <= \GPIO1_D[27]~output_o\;

GPIO1_D(28) <= \GPIO1_D[28]~output_o\;

GPIO1_D(29) <= \GPIO1_D[29]~output_o\;

GPIO1_D(30) <= \GPIO1_D[30]~output_o\;

GPIO1_D(31) <= \GPIO1_D[31]~output_o\;

GPIO0_D(0) <= \GPIO0_D[0]~output_o\;

GPIO0_D(1) <= \GPIO0_D[1]~output_o\;

GPIO0_D(2) <= \GPIO0_D[2]~output_o\;

GPIO0_D(3) <= \GPIO0_D[3]~output_o\;

GPIO0_D(4) <= \GPIO0_D[4]~output_o\;

GPIO0_D(5) <= \GPIO0_D[5]~output_o\;

GPIO0_D(6) <= \GPIO0_D[6]~output_o\;

GPIO0_D(7) <= \GPIO0_D[7]~output_o\;
END structure;


