LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;


entity DE0 is
    Port (
        --//////////////////    Clock Input     ///////////////////
        CLOCK_50           : in    STD_logic;                      -- 50 MHz
        CLOCK_50_2         : in    STD_logic;                      -- 50 MHz

        --//////////////////    Push Button     ///////////////////
        BUTTON             : in    STD_logic_vector (2 downto 0);  -- Pushbutton[2:0]

        --//////////////////    DPDT Switch     ///////////////////
        SW                 : in    STD_logic_vector (9 downto 0);  -- Toggle Switch[9:0]

        --//////////////////    7-SEG Dispaly   ///////////////////
        HEX0_D             : out   STD_logic_vector (6 downto 0);  -- Seven Segment Digit 0
        HEX0_DP            : out   STD_logic;                      -- Seven Segment Digit DP 0
        HEX1_D             : out   STD_logic_vector (6 downto 0);  -- Seven Segment Digit 1
        HEX1_DP            : out   STD_logic;                      -- Seven Segment Digit DP 1
        HEX2_D             : out   STD_logic_vector (6 downto 0);  -- Seven Segment Digit 2
        HEX2_DP            : out   STD_logic;                      -- Seven Segment Digit DP 2
        HEX3_D             : out   STD_logic_vector (6 downto 0);  -- Seven Segment Digit 3
        HEX3_DP            : out   STD_logic;                      -- Seven Segment Digit DP 3
        --//////////////////////    LED     ///////////////////////
        LEDG               : out   STD_logic_vector (9 downto 0);  -- LED Green[9:0]

        --///////////////////   SDRAM Interface     ///////////////
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

        --//////////////////    Flash Interface     ///////////////
        FL_DQ               : inout STD_logic_vector(14 downto 0); -- FLASH Data bus 15 Bits
        FL_DQ15_AM1         : inout STD_logic;                     -- FLASH Data bus Bit 15 or Address A-1
        FL_ADDR             : out   STD_logic_vector(21 downto 0); -- FLASH Address bus 22 Bits
        FL_WE_N             : out   STD_logic;                     -- FLASH Write Enable
        FL_RST_N            : out   STD_logic;                     -- FLASH Reset
        FL_OE_N             : out   STD_logic;                     -- FLASH Output Enable
        FL_CE_N             : out   STD_logic;                     -- FLASH Chip Enable
        FL_WP_N             : out   STD_logic;                     -- FLASH Hardware Write Protect
        FL_BYTE_N           : out   STD_logic;                     -- FLASH Selects 8/16-bit mode
        FL_RY               : in    STD_logic;                     -- FLASH Ready/Busy



        --//////////////////    SD_Card Interface   ///////////////
        SD_DAT0             : inout STD_logic;                     -- SD Card Data 0
        SD_DAT3             : inout STD_logic;                     -- SD Card Data 3
        SD_CMD              : inout STD_logic;                     -- SD Card Command Signal
        SD_CLK              : out   STD_logic;                     -- SD Card Clock
        SD_WP_N             : in    STD_logic;                     -- SD Card Write Protect

        --//////////////////    GPIO    ///////////////////////////
        GPIO0_CLKIN         : in    STD_logic_vector(1  downto 0);  -- GPIO Connection 0 Clock In Bus
        GPIO0_CLKOUT        : out   STD_logic_vector(1  downto 0);  -- GPIO Connection 0 Clock Out Bus
        GPIO0_D             : inout STD_logic_vector(31 downto 0); -- GPIO Connection 0 Data Bus
        GPIO1_CLKIN         : in    STD_logic_vector(1  downto 0);  -- GPIO Connection 1 Clock In Bus
        GPIO1_CLKOUT        : out   STD_logic_vector(1  downto 0);  -- GPIO Connection 1 Clock Out Bus
        GPIO1_D             : inout STD_logic_vector(31 downto 0)  -- GPIO Connection 1 Data Bus


    --  --//////////////////    LCD Module 16X2     ///////////////
    --  LCD_BLON            : out   STD_logic;                     -- LCD Back Light ON/OFF
    --  LCD_RW              : out   STD_logic;                     -- LCD Read/Write Select, 0 = Write, 1 = Read
    --  LCD_EN              : out   STD_logic;                     -- LCD Enable
    --  LCD_RS              : out   STD_logic;                     -- LCD Command/Data Select, 0 = Command, 1 = Data
    --  LCD_DATA            : inout STD_logic_vector(7 downto 0);  -- LCD Data bus 8 bits
    --  --//////////////////////    UART    ///////////////////////
    --  UART_TXD            : inout STD_logic;                     -- UART Transmitter
    --  UART_RXD            : inout STD_logic;                     -- UART Receiver
    --  UART_CTS            : inout STD_logic;                     -- UART Clear To Send
    --  UART_RTS            : inout STD_logic;                     -- UART Request To Send
    --  --//////////////////    PS2     ///////////////////////////
    --  PS2_KBDAT           : inout STD_logic;                     -- PS2 Keyboard Data
    --  PS2_KBCLK           : inout STD_logic;                     -- PS2 Keyboard Clock
    --  PS2_MSDAT           : inout STD_logic;                     -- PS2 Mouse Data
    --  PS2_MSCLK           : inout STD_logic;                     -- PS2 Mouse Clock
    --  --//////////////////    VGA     ///////////////////////////
    --  VGA_HS              : out   STD_logic;                     -- VGA H_SYNC
    --  VGA_VS              : out   STD_logic;                     -- VGA V_SYNC
    --  VGA_R               : out   STD_logic_vector(3 downto 0);  -- VGA Red[3:0]
    --  VGA_G               : out   STD_logic_vector(3 downto 0);  -- VGA Green[3:0]
    --  VGA_B               : out   STD_logic_vector(3 downto 0);  -- VGA Blue[3:0]
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
            ledrom_data_external_connection_export    : out   std_logic_vector(15 downto 0);                    -- export
            buttons_external_connection_export        : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- export
            ledrom_ena_external_connection_export     : out   std_logic;                                        -- export
            sdram_clk_clk                             : out   std_logic;                                        -- clk
            flash_conduit_end_ADDR                    : out   std_logic_vector(21 downto 0);                    -- ADDR
            flash_conduit_end_CE_N                    : out   std_logic;                                        -- CE_N
            flash_conduit_end_OE_N                    : out   std_logic;                                        -- OE_N
            flash_conduit_end_WE_N                    : out   std_logic;                                        -- WE_N
            flash_conduit_end_RST_N                   : out   std_logic;                                        -- RST_N
            flash_conduit_end_DQ                      : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- DQ
            sevenseg_external_HEX0                    : out   std_logic_vector(7 downto 0);                     -- HEX0
            sevenseg_external_HEX1                    : out   std_logic_vector(7 downto 0);                     -- HEX1
            sevenseg_external_HEX2                    : out   std_logic_vector(7 downto 0);                     -- HEX2
            sevenseg_external_HEX3                    : out   std_logic_vector(7 downto 0);                     -- HEX3
            leds_external_export                      : out   std_logic_vector(9 downto 0);                     -- export
            sdcard_external_b_SD_cmd                  : inout std_logic                     := 'X';             -- b_SD_cmd
            sdcard_external_b_SD_dat                  : inout std_logic                     := 'X';             -- b_SD_dat
            sdcard_external_b_SD_dat3                 : inout std_logic                     := 'X';             -- b_SD_dat3
            sdcard_external_o_SD_clock                : out   std_logic                                        -- o_SD_clock
        );
    end component testnios;

    component LED_ROM_IP IS
        PORT(
            clock             : in std_logic  := '1';
            data              : in std_logic_vector(15 downto 0);
            rdaddress         : in std_logic_vector (8 downto 0);
            wraddress         : in std_logic_vector (8 downto 0);
            wren              : in std_logic  := '0';
            q                 : out std_logic_vector(15 downto 0)
        );
    end component LED_ROM_IP;

    component LEDController is
        port(
            clock            : in  std_logic  := '1' ; --50 mhz clock
            LEDCont_Addr     : out std_logic_vector (8 downto 0); --
            LEDCont_Data     : in  std_logic_vector(15 downto 0);

            LEDCont_s_red    : out std_logic  := '0' ; --current red value
            LEDCont_s_green  : out std_logic  := '0' ; --current green value
            LEDCont_s_blue   : out std_logic  := '0' ; --current blue value
            LEDCont_s_cath   : out std_logic  := '0' ; --last 8 matter -- 1 activates (pulls down) a layer
            LEDCont_s_clk    : out std_logic  := '1' ; --on pos edge load new serial vals
            LEDCont_s_latch  : out std_logic  := '1' ; --on pos edge load new parralel vals
            LEDCont_s_OEna  : out std_logic  := '1' ; --0 turns on the leds, 1 zzzz them
            LEDCont_s_Rst   : out std_logic  := '0'  --1 turns on the chip, 0 resets it
        );
    end component LEDController;

    signal DRAM_DQM       : std_logic_vector (1 downto 0);
    signal DRAM_BA        : std_logic_vector (1 downto 0);
    signal BT_rxd         : std_logic;
    signal BT_txd         : std_logic;

    signal LEDRom_addr    : std_logic_vector (8 downto 0);
    signal LEDRom_data    : std_logic_vector(15 downto 0); -- change to 15 in ip
    signal LEDRom_strobe  : std_logic;

    signal HEX0           : std_logic_vector(7 downto 0);
    signal HEX1           : std_logic_vector(7 downto 0);
    signal HEX2           : std_logic_vector(7 downto 0);
    signal HEX3           : std_logic_vector(7 downto 0);

    signal LEDREAD_addr   : std_logic_vector (8 downto 0);
    signal LEDREAD_data   : std_logic_vector(15 downto 0);

    signal LED_RED_OUT    : std_logic;
    signal LED_GREEN_OUT  : std_logic;
    signal LED_BLUE_OUT   : std_logic;
    signal LED_CATH_OUT   : std_logic;
    signal LED_CLK_OUT    : std_logic;
    signal LED_LATCH_OUT  : std_logic;
    signal LED_OENA_OUT   : std_logic;
    signal LED_RST_OUT    : std_logic;

    begin
    GPIO0_D(0) <= LED_RED_OUT;
    GPIO0_D(1) <= LED_GREEN_OUT;
    GPIO0_D(2) <= LED_BLUE_OUT;
    GPIO0_D(3) <= LED_CATH_OUT;
    GPIO0_D(4) <= LED_CLK_OUT;
    GPIO0_D(5) <= LED_LATCH_OUT;
    GPIO0_D(6) <= LED_OENA_OUT;
    GPIO0_D(7) <= LED_RST_OUT;
    DRAM_UDQM <= DRAM_DQM(1);
    DRAM_LDQM <= DRAM_DQM(0);
    DRAM_BA_1 <= DRAM_BA(1);
    DRAM_BA_0 <= DRAM_BA(0);

    HEX0_DP <= HEX0(7);
    HEX0_D  <= HEX0(6 downto 0);
    HEX1_DP <= HEX1(7);
    HEX1_D  <= HEX1(6 downto 0);
    HEX2_DP <= HEX2(7);
    HEX2_D  <= HEX2(6 downto 0);
    HEX3_DP <= HEX3(7);
    HEX3_D  <= HEX3(6 downto 0);

    FL_WP_N <= '0';
    FL_BYTE_N <= '0'; -- FLASH Selects 8/16-bit mode --we are in 8 bit


    --component declaration
    ledcon : LEDController
        PORT MAP (
            clock           => CLOCK_50,
            LEDCont_Addr    => LEDREAD_addr,
            LEDCont_Data    => LEDREAD_data,

            LEDCont_s_red   => LED_RED_OUT,
            LEDCont_s_green => LED_GREEN_OUT,
            LEDCont_s_blue  => LED_BLUE_OUT,
            LEDCont_s_cath  => LED_CATH_OUT,
            LEDCont_s_clk   => LED_CLK_OUT,
            LEDCont_s_latch => LED_LATCH_OUT,
            LEDCont_s_OEna  => LED_OENA_OUT,
            LEDCont_s_Rst   => LED_RST_OUT
        );
    u0 : LED_ROM_IP
        PORT MAP (
            clock        => CLOCK_50,         --global clock
            data         => LEDRom_data,      --from NIOSII
            rdaddress    => LEDREAD_addr,
            wraddress    => LEDRom_addr,      --from NIOSII
            wren         => LEDRom_strobe,    --from NIOSII
            q            => LEDREAD_data
        );

    u1 : testnios
        port map (
            clk_clk                                   => CLOCK_50,          --                                clk.clk

            ledrom_address_external_connection_export => LEDRom_addr,       -- ledrom_address_external_connection.export
            ledrom_ena_external_connection_export     => LEDRom_strobe,     --     ledrom_ena_external_connection.export
            ledrom_data_external_connection_export    => LEDRom_data,       --    ledrom_data_external_connection.export

            bluetooth_external_connection_rxd         => BT_rxd,            --      bluetooth_external_connection.rxd
            bluetooth_external_connection_txd         => BT_txd,            --                                   .txd

            switches_external_connection_export       => SW,                --       switches_external_connection.export
            buttons_external_connection_export        => BUTTON,            --        buttons_external_connection.export
            leds_external_export                      => LEDG,              --                      leds_external.export

            sevenseg_external_HEX0                    => HEX0,              --                    id7seg_external.HEX0
            sevenseg_external_HEX1                    => HEX1,              --                                   .HEX1
            sevenseg_external_HEX2                    => HEX2,              --                                   .HEX2
            sevenseg_external_HEX3                    => HEX3,              --                                   .HEX3

            sdram_0_wire_addr                         => DRAM_ADDR,         --                       sdram_0_wire.addr
            sdram_0_wire_ba                           => DRAM_BA,           --                                   .ba
            sdram_0_wire_cas_n                        => DRAM_CAS_N,        --                                   .cas_n
            sdram_0_wire_cke                          => DRAM_CKE,          --                                   .cke
            sdram_0_wire_cs_n                         => DRAM_CS_N,         --                                   .cs_n
            sdram_0_wire_dq                           => DRAM_DQ,           --                                   .dq
            sdram_0_wire_dqm                          => DRAM_DQM,          --                                   .dqm
            sdram_0_wire_ras_n                        => DRAM_RAS_N,        --                                   .ras_n
            sdram_0_wire_we_n                         => DRAM_WE_N,         --                                   .we_n
            sdram_clk_clk                             => DRAM_CLK,          --                          sdram_clk.clk

            flash_conduit_end_ADDR                    => FL_ADDR,           --                  flash_conduit_end.ADDR
            flash_conduit_end_CE_N                    => FL_CE_N,           --                                   .CE_N
            flash_conduit_end_OE_N                    => FL_OE_N,           --                                   .OE_N
            flash_conduit_end_WE_N                    => FL_WE_N,           --                                   .WE_N
            flash_conduit_end_RST_N                   => FL_RST_N,          --                                   .RST_N
            flash_conduit_end_DQ                      => FL_DQ(7 downto 0), --                                   .DQ

            sdcard_external_b_SD_cmd                  => SD_CMD,            --                    sdcard_external.b_SD_cmd
            sdcard_external_b_SD_dat                  => SD_DAT0,           --                                   .b_SD_dat
            sdcard_external_b_SD_dat3                 => SD_DAT3,           --                                   .b_SD_dat3
            sdcard_external_o_SD_clock                => SD_CLK             --                                   .o_SD_clock
        );

    end a;
