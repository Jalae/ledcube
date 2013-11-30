LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
--USE IEEE.STD_LOGIC_ARITH.all;
--USE IEEE.STD_LOGIC_UNSIGNED.all;
USE IEEE.NUMERIC_STD.all;

entity DE0 is
    Port (
        --//////////////////    Clock Input     ///////////////////
        CLOCK_50           : in    STD_logic;                      -- 50 MHz
        CLOCK_50_2         : in    STD_logic;                      -- 50 MHz

        --//////////////////    DPDT Switch     ///////////////////
        SW                 : in    STD_logic_vector (9 downto 0);  -- Toggle Switch[9:0]

        --//////////////////////    LED     ///////////////////////
        LEDG               : out   STD_logic_vector (9 downto 0);  -- LED Green[9:0]

        --//////////////////    GPIO    ///////////////////////////

        GPIO_0              : out STD_logic_vector(31 downto 0)         ; -- GPIO Connection 0 Data Bus

        GPIO_1              : out STD_logic_vector(31 downto 0)    -- GPIO Connection 1 Data Bus
    );

end DE0;

architecture a of DE0 is

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
            LEDCont_s_OEna  : out std_logic   := '1' ; --0 turns on the leds, 1 zzzz them
            LEDCont_s_Rst   : out std_logic   := '0'   --1 turns on the chip, 0 resets it
        );
    end component LEDController;



    signal LEDRom_addr    : std_logic_vector (8 downto 0);
    signal LEDRom_data    : std_logic_vector(15 downto 0); -- change to 15 in ip
    signal LEDRom_strobe  : std_logic;

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

	 signal CLK : std_logic;
	 
	 signal LEDREAD_dummy   : std_logic_vector(15 downto 0);
    begin
	 
	 testslow: process(CLOCK_50, CLK)
	 variable count : integer := 0;
	 begin
		if(clock_50'event and cloCK_50='1') then
			if(count > 5) then
				count := 0;
				CLK <=  not CLK;
			else
				count := count + 1;
				CLK <= CLK;
			end if;
		end if;
	 end process;
	 
	 

    GPIO_0(0) <= LED_RED_OUT;
    GPIO_0(1) <= LED_GREEN_OUT;
    GPIO_0(2) <= LED_BLUE_OUT;
    GPIO_0(3) <= LED_CATH_OUT;
    GPIO_0(4) <= LED_CLK_OUT;
    GPIO_0(5) <= LED_LATCH_OUT;
    GPIO_0(6) <= LED_OENA_OUT;
    GPIO_0(7) <= LED_RST_OUT;


	 LEDREAD_dummy <= '1' & SW(4 downto 0) & SW(4 downto 0) & SW(4 downto 0);
	 LEDG <= SW(4 downto 0) & SW(4 downto 0);
    --component declaration
    ledcon : LEDController
        PORT MAP (
            clock           => clk, -- change this back
            LEDCont_Addr    => LEDREAD_addr,
            LEDCont_Data    => LEDREAD_dummy, --change this back to data

            LEDCont_s_red   => LED_RED_OUT,
            LEDCont_s_green => LED_GREEN_OUT,
            LEDCont_s_blue  => LED_BLUE_OUT,
            LEDCont_s_cath  => LED_CATH_OUT,
            LEDCont_s_clk   => LED_CLK_OUT,
            LEDCont_s_latch => LED_LATCH_OUT,
            LEDCont_s_OEna  => LED_OENA_OUT,
            LEDCont_s_Rst   => LED_RST_OUT
        );

    end a;
