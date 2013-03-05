LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;


entity DE0 is
	Port (
		--//////////////////	Clock Input	 	////////////////////	 
		CLOCK_50           : in    STD_logic;                     -- 50 MHz
		CLOCK_50_2		    : in    STD_logic;				          -- 50 MHz
		
		--//////////////////	Push Button		////////////////////
		BUTTON             : in    STD_logic_vector (2 downto 0); -- Pushbutton[2:0]
		
		--//////////////////	DPDT Switch		////////////////////
		SW                 : in    STD_logic_vector (9 downto 0); -- Toggle Switch[9:0]
		
		--//////////////////	7-SEG Dispaly	////////////////////
		HEX0_D             : out   STD_logic_vector (6 downto 0); -- Seven Segment Digit 0
		HEX0_DP            : out   STD_logic;                     -- Seven Segment Digit DP 0
		HEX1_D             : out   STD_logic_vector (6 downto 0); -- Seven Segment Digit 1
		HEX1_DP            : out   STD_logic;                     -- Seven Segment Digit DP 1
		HEX2_D             : out   STD_logic_vector (6 downto 0); -- Seven Segment Digit 2
		HEX2_DP            : out   STD_logic;                     -- Seven Segment Digit DP 2
		HEX3_D             : out   STD_logic_vector (6 downto 0); -- Seven Segment Digit 3
		HEX3_DP            : out   STD_logic;                     -- Seven Segment Digit DP 3
		--//////////////////////	LED		////////////////////////
		LEDG                : out   STD_logic_vector (9 downto 0); -- LED Green[9:0]

		--///////////////////	SDRAM Interface		////////////////
		DRAM_CLK            : out   STD_logic;                     -- SDRAM Clock
		DRAM_ADDR           : out   STD_logic_vector(11 downto 0); -- SDRAM Address bus 13 Bits
		DRAM_BA_1           : out   STD_logic;                     -- SDRAM Bank Address 1
		DRAM_BA_0           : out   STD_logic;                     -- SDRAM Bank Address 0
		DRAM_CAS_N          : out   STD_logic;                     -- SDRAM Column Address Strobe
		DRAM_CKE            : out   STD_logic;                     -- SDRAM Clock Enable
		DRAM_CS_N           : out   STD_logic;                     -- SDRAM Chip Select
		DRAM_DQ             : inout STD_logic_vector(15 downto 0); -- SDRAM Data bus 16 Bits
		DRAM_UDQM           : out   STD_logic;                     -- SDRAM High-byte Data Mask
		DRAM_LDQM           : out   STD_logic;                     -- SDRAM Low-byte Data Mask 
		DRAM_RAS_N          : out   STD_logic;                     -- SDRAM Row Address Strobe
		DRAM_WE_N           : out   STD_logic;                     -- SDRAM Write Enable
				
		--//////////////////	Flash Interface		////////////////
		FL_DQ,                     -- FLASH Data bus 15 Bits
		FL_DQ15_AM1,               -- FLASH Data bus Bit 15 or Address A-1
		FL_ADDR,                   -- FLASH Address bus 22 Bits
		FL_WE_N,                   -- FLASH Write Enable
		FL_RST_N,                  -- FLASH Reset
		FL_OE_N,                   -- FLASH Output Enable
		FL_CE_N,                   -- FLASH Chip Enable
		FL_WP_N,                   -- FLASH Hardware Write Protect
		FL_BYTE_N,                 -- FLASH Selects 8/16-bit mode
		FL_RY,                     -- FLASH Ready/Busy
		
		--//////////////////	LCD Module 16X2		////////////////
		LCD_BLON,                  -- LCD Back Light ON/OFF
		LCD_RW,                    -- LCD Read/Write Select, 0 = Write, 1 = Read
		LCD_EN,                    -- LCD Enable
		LCD_RS,                    -- LCD Command/Data Select, 0 = Command, 1 = Data
		LCD_DATA,                  -- LCD Data bus 8 bits
		
		--//////////////////	SD_Card Interface	////////////////
		SD_DAT0,                   -- SD Card Data 0
		SD_DAT3,                   -- SD Card Data 3
		SD_CMD,                    -- SD Card Command Signal
		SD_CLK,                    -- SD Card Clock
		SD_WP_N,                   -- SD Card Write Protect
		
		--//////////////////	GPIO	////////////////////////////
		GPIO0_CLKIN,               -- GPIO Connection 0 Clock In Bus
		GPIO0_CLKOUT,              -- GPIO Connection 0 Clock Out Bus
		GPIO0_D,                   -- GPIO Connection 0 Data Bus
		GPIO1_CLKIN,               -- GPIO Connection 1 Clock In Bus
		GPIO1_CLKOUT,              -- GPIO Connection 1 Clock Out Bus
		GPIO1_D                    -- GPIO Connection 1 Data Bus
		
	--	--//////////////////////	UART	////////////////////////
	--	UART_TXD,						--	UART Transmitter
	--	UART_RXD,						-- UART Receiver
	--	UART_CTS,						--	UART Clear To Send
	--	UART_RTS,						--	UART Request To Send
	--	--//////////////////	PS2		////////////////////////////
	--	PS2_KBDAT,                 -- PS2 Keyboard Data
	--	PS2_KBCLK,                 -- PS2 Keyboard Clock
	--	PS2_MSDAT,                 -- PS2 Mouse Data
	--	PS2_MSCLK,                 -- PS2 Mouse Clock
	--	--//////////////////	VGA		////////////////////////////
	--	VGA_HS,                    -- VGA H_SYNC
	--	VGA_VS,                    -- VGA V_SYNC
	--	VGA_R,                     -- VGA Red[3:0]
	--	VGA_G,                     -- VGA Green[3:0]
	--	VGA_B,                     -- VGA Blue[3:0]
	);

end DE0;

architecture a of DE0 is
	
	component testnios is
        port (
            clk_clk                                   : in    std_logic                     := 'X';             -- clk
            sdram_0_wire_addr                         : out   std_logic_vector(11 downto 0);                    -- addr
            sdram_0_wire_ba                           : out   std_logic_vector(1 downto 0);                     -- ba
            sdram_0_wire_cas_n                        : out   std_logic;                                        -- cas_n
            sdram_0_wire_cke                          : out   std_logic;                                        -- cke
            sdram_0_wire_cs_n                         : out   std_logic;                                        -- cs_n
            sdram_0_wire_dq                           : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
            sdram_0_wire_dqm                          : out   std_logic_vector(1 downto 0);                     -- dqm
            sdram_0_wire_ras_n                        : out   std_logic;                                        -- ras_n
            sdram_0_wire_we_n                         : out   std_logic;                                        -- we_n
            switches_external_connection_export       : in    std_logic_vector(9 downto 0)  := (others => 'X'); -- export
            ledrom_address_external_connection_export : out   std_logic_vector(8 downto 0);                     -- export
            bluetooth_external_connection_rxd         : in    std_logic                     := 'X';             -- rxd
            bluetooth_external_connection_txd         : out   std_logic;                                        -- txd
            ledrom_data_external_connection_export    : out   std_logic_vector(11 downto 0);                    -- export
            buttons_external_connection_export        : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- export
            ledrom_ena_external_connection_export     : out   std_logic;                                        -- export
            sdram_clk_clk                             : out   std_logic;                                        -- clk
            flash_conduit_end_ADDR                    : out   std_logic_vector(21 downto 0);                    -- ADDR
            flash_conduit_end_CE_N                    : out   std_logic;                                        -- CE_N
            flash_conduit_end_OE_N                    : out   std_logic;                                        -- OE_N
            flash_conduit_end_WE_N                    : out   std_logic;                                        -- WE_N
            flash_conduit_end_RST_N                   : out   std_logic;                                        -- RST_N
            flash_conduit_end_DQ                      : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- DQ
            id7seg_external_HEX0                      : out   std_logic_vector(7 downto 0);                     -- HEX0
            id7seg_external_HEX1                      : out   std_logic_vector(7 downto 0);                     -- HEX1
            id7seg_external_HEX2                      : out   std_logic_vector(7 downto 0);                     -- HEX2
            id7seg_external_HEX3                      : out   std_logic_vector(7 downto 0);                     -- HEX3
            leds_external_export                      : out   std_logic_vector(9 downto 0);                     -- export
            sdcard_external_b_SD_cmd                  : inout std_logic                     := 'X';             -- b_SD_cmd
            sdcard_external_b_SD_dat                  : inout std_logic                     := 'X';             -- b_SD_dat
            sdcard_external_b_SD_dat3                 : inout std_logic                     := 'X';             -- b_SD_dat3
            sdcard_external_o_SD_clock                : out   std_logic                                         -- o_SD_clock
        );
    end component testnios;
	 
	 signal DRAM_DQM: std_logic_vector (1 downto 0);
	 signal DRAM_BA : std_logic_vector (1 downto 0);
	 begin	 
    DRAM_UDQM <= DRAM_DQM(1);
	 DRAM_LDQM <= DRAM_DQM(0);
	 DRAM_BA_1 <= DRAM_BA(1);
	 DRAM_BA_0 <= DRAM_BA(0);


    u0 : component testnios
        port map (
            clk_clk                                   => CONNECTED_TO_clk_clk,                                   --                                clk.clk
            sdram_0_wire_addr                         => CONNECTED_TO_sdram_0_wire_addr,                         --                       sdram_0_wire.addr
            sdram_0_wire_ba                           => CONNECTED_TO_sdram_0_wire_ba,                           --                                   .ba
            sdram_0_wire_cas_n                        => CONNECTED_TO_sdram_0_wire_cas_n,                        --                                   .cas_n
            sdram_0_wire_cke                          => CONNECTED_TO_sdram_0_wire_cke,                          --                                   .cke
            sdram_0_wire_cs_n                         => CONNECTED_TO_sdram_0_wire_cs_n,                         --                                   .cs_n
            sdram_0_wire_dq                           => CONNECTED_TO_sdram_0_wire_dq,                           --                                   .dq
            sdram_0_wire_dqm                          => CONNECTED_TO_sdram_0_wire_dqm,                          --                                   .dqm
            sdram_0_wire_ras_n                        => CONNECTED_TO_sdram_0_wire_ras_n,                        --                                   .ras_n
            sdram_0_wire_we_n                         => CONNECTED_TO_sdram_0_wire_we_n,                         --                                   .we_n
            switches_external_connection_export       => CONNECTED_TO_switches_external_connection_export,       --       switches_external_connection.export
            ledrom_address_external_connection_export => CONNECTED_TO_ledrom_address_external_connection_export, -- ledrom_address_external_connection.export
            bluetooth_external_connection_rxd         => CONNECTED_TO_bluetooth_external_connection_rxd,         --      bluetooth_external_connection.rxd
            bluetooth_external_connection_txd         => CONNECTED_TO_bluetooth_external_connection_txd,         --                                   .txd
            ledrom_data_external_connection_export    => CONNECTED_TO_ledrom_data_external_connection_export,    --    ledrom_data_external_connection.export
            buttons_external_connection_export        => CONNECTED_TO_buttons_external_connection_export,        --        buttons_external_connection.export
            ledrom_ena_external_connection_export     => CONNECTED_TO_ledrom_ena_external_connection_export,     --     ledrom_ena_external_connection.export
            sdram_clk_clk                             => CONNECTED_TO_sdram_clk_clk,                             --                          sdram_clk.clk
            flash_conduit_end_ADDR                    => CONNECTED_TO_flash_conduit_end_ADDR,                    --                  flash_conduit_end.ADDR
            flash_conduit_end_CE_N                    => CONNECTED_TO_flash_conduit_end_CE_N,                    --                                   .CE_N
            flash_conduit_end_OE_N                    => CONNECTED_TO_flash_conduit_end_OE_N,                    --                                   .OE_N
            flash_conduit_end_WE_N                    => CONNECTED_TO_flash_conduit_end_WE_N,                    --                                   .WE_N
            flash_conduit_end_RST_N                   => CONNECTED_TO_flash_conduit_end_RST_N,                   --                                   .RST_N
            flash_conduit_end_DQ                      => CONNECTED_TO_flash_conduit_end_DQ,                      --                                   .DQ
            id7seg_external_HEX0                      => CONNECTED_TO_id7seg_external_HEX0,                      --                    id7seg_external.HEX0
            id7seg_external_HEX1                      => CONNECTED_TO_id7seg_external_HEX1,                      --                                   .HEX1
            id7seg_external_HEX2                      => CONNECTED_TO_id7seg_external_HEX2,                      --                                   .HEX2
            id7seg_external_HEX3                      => CONNECTED_TO_id7seg_external_HEX3,                      --                                   .HEX3
            leds_external_export                      => CONNECTED_TO_leds_external_export,                      --                      leds_external.export
            sdcard_external_b_SD_cmd                  => CONNECTED_TO_sdcard_external_b_SD_cmd,                  --                    sdcard_external.b_SD_cmd
            sdcard_external_b_SD_dat                  => CONNECTED_TO_sdcard_external_b_SD_dat,                  --                                   .b_SD_dat
            sdcard_external_b_SD_dat3                 => CONNECTED_TO_sdcard_external_b_SD_dat3,                 --                                   .b_SD_dat3
            sdcard_external_o_SD_clock                => CONNECTED_TO_sdcard_external_o_SD_clock                 --                                   .o_SD_clock
        );
	 
end a;
