LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;

ENTITY test_tb IS
END test_tb;

ARCHITECTURE behavior OF test_tb IS
    COMPONENT LEDController
    PORT(
        clock           : in  std_logic  := '1' ; --50 mhz clock
        LEDCont_Addr    : out std_logic_vector (8 downto 0) := "000000000"; --
        LEDCont_Data    : in  std_logic_vector(15 downto 0);

        LEDCont_s_red   : out std_logic  := '0' ; --current red value
        LEDCont_s_green : out std_logic  := '0' ; --current green value
        LEDCont_s_blue  : out std_logic  := '0' ; --current blue value
        LEDCont_s_cath  : out std_logic  := '0' ; --last 8 matter -- 1 activates (pulls down) a layer
        LEDCont_s_clk   : out std_logic  := '1' ; --on pos edge load new serial vals
        LEDCont_s_latch : out std_logic  := '1' ; --on pos edge load new parralel vals
        LEDCont_s_OEna  : out std_logic  := '1' ; --0 turns on the leds, 1 zzzz them
        LEDCont_s_Rst   : out std_logic  := '0'  --1 turns on the chip, 0 resets it
    );
    end component;
    signal clk  : std_logic := '0';
    
    signal Addr   : std_logic_vector (8 downto 0);
    signal Data   : std_logic_vector(15 downto 0) := "0000000000000000";
    
    signal LED_RED_OUT    : std_logic;
    signal LED_GREEN_OUT  : std_logic;
    signal LED_BLUE_OUT   : std_logic;
    signal LED_CATH_OUT   : std_logic;
    signal LED_CLK_OUT    : std_logic;
    signal LED_LATCH_OUT  : std_logic;
    signal LED_OENA_OUT   : std_logic;
    signal LED_RST_OUT    : std_logic;

    constant clk_period   : time := 20 ns;
    constant MAX_SIM_TIME : time := 1 sec;
BEGIN
    
    DUT: LEDController port map(
            clock           => clk,
            LEDCont_Addr    => Addr,
            LEDCont_Data    => Data,

            LEDCont_s_red   => LED_RED_OUT,
            LEDCont_s_green => LED_GREEN_OUT,
            LEDCont_s_blue  => LED_BLUE_OUT,
            LEDCont_s_cath  => LED_CATH_OUT,
            LEDCont_s_clk   => LED_CLK_OUT,
            LEDCont_s_latch => LED_LATCH_OUT,
            LEDCont_s_OEna  => LED_OENA_OUT,
            LEDCont_s_Rst   => LED_RST_OUT
            );

    clk_process: process
    begin
        while NOW < MAX_SIM_TIME loop
            clk <= not clk;
            wait for clk_period/2;
        end loop;
    end process;

    stimulus: process
    begin
        while NOW < MAX_SIM_TIME loop
            wait until Addr'event;
            wait for 5 ns;
            Data <= Addr(5 downto 0) & Addr(5 downto 1) & Addr(6 downto 2);
        end loop;
    end process;
    


END ;




