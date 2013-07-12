LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

entity LEDController is
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

end LEDController;


architecture a of LEDController is
    signal t_r             : std_logic := '0';
    signal t_g             : std_logic := '0';
    signal t_b             : std_logic := '0';
    signal t_cath          : std_logic := '0';
    signal t_clk           : std_logic := '0';
    signal t_l             : std_logic := '0';
    signal t_Oena          : std_logic := '1';
    signal t_rst           : std_logic := '0';
    signal curRomAddr      : std_logic_vector (8 downto 0) := "000000000";


    type LEDControllerStates is (   init,
                                    setAddress,
                                    loadValue,
                                    clockLow,
                                    clockHigh,
                                    disableOutput,
                                    latchData,
                                    enableOutput,
                                    unknown);
    shared variable curState        : LEDControllerStates           := init;
    shared variable nextState       : LEDControllerStates           := init;
    shared variable r_d             : std_logic := '0';
    shared variable g_d             : std_logic := '0';
    shared variable b_d             : std_logic := '0';
    shared variable c_d             : std_logic := '0';

    shared variable bitShiftCounter : integer range 0 to 511 := 511;
    shared variable iteration       : integer range 0 to 31  := 0;
begin
    --this design will need 2 state machines one for the r g b and cathode lines and another for clk latch ena and rst.
    Statecontrol: process(clock)
    begin
        if(clock'event and clock = '1') then
            case(curState) is
                when init          =>   nextState := setAddress;
                when setAddress    =>   nextState := loadValue;
                when loadValue     =>   nextState := clockLow;
                when clockLow      =>   nextState := clockHigh;
                when clockHigh     =>   if( (bitShiftCounter mod 64) = 63) then
                                            nextState := disableOutput;
                                        else
                                            nextState := setAddress;
                                        end if;
                when disableOutput =>   nextState := latchData;
                when latchData     =>   nextState := enableOutput;
                when enableOutput  =>   nextState := setAddress;
                when others        =>   nextState := init;
            end case;
        end if;
    end process;

    stateOutput: process(clock)
    begin
        case(curState) is
            when init          =>
                                    t_r    <= '0';
                                    t_g    <= '0';
                                    t_b    <= '0';
                                    t_cath <= '0';
                                    t_clk  <= '0';
                                    t_l    <= '1';
                                    t_Oena <= '0';
                                    t_rst  <= '1';
            when setAddress    =>
                                    t_r    <= '0';
                                    t_g    <= '0';
                                    t_b    <= '0';
                                    t_cath <= '0';
                                    t_clk  <= '1';
                                    t_l    <= '1';
                                    t_Oena <= '0';
                                    t_rst  <= '1';
            when loadValue     =>
                                    t_r    <= '0';
                                    t_g    <= '0';
                                    t_b    <= '0';
                                    t_cath <= '0';
                                    t_clk  <= '0';
                                    t_l    <= '1';
                                    t_Oena <= '0';
                                    t_rst  <= '1';
            when clockLow      =>
                                    t_r    <= r_d;
                                    t_g    <= g_d;
                                    t_b    <= b_d;
                                    t_cath <= c_d;
                                    t_clk  <= '0';
                                    t_l    <= '1';
                                    t_Oena <= '0';
                                    t_rst  <= '1';
            when clockHigh     =>
                                    t_r    <= r_d;
                                    t_g    <= g_d;
                                    t_b    <= b_d;
                                    t_cath <= c_d;
                                    t_clk  <= '0';
                                    t_l    <= '1';
                                    t_Oena <= '0';
                                    t_rst  <= '1';
            when disableOutput =>
                                    t_r    <= '0';
                                    t_g    <= '0';
                                    t_b    <= '0';
                                    t_cath <= '0';
                                    t_clk  <= '0';
                                    t_l    <= '0';
                                    t_Oena <= '1';
                                    t_rst  <= '1';
            when latchData     =>
                                    t_r    <= '0';
                                    t_g    <= '0';
                                    t_b    <= '0';
                                    t_cath <= '0';
                                    t_clk  <= '0';
                                    t_l    <= '1';
                                    t_Oena <= '1';
                                    t_rst  <= '1';
            when enableOutput  => --this state is probably redundant.
                                    t_r    <= '0';
                                    t_g    <= '0';
                                    t_b    <= '0';
                                    t_cath <= '0';
                                    t_clk  <= '0';
                                    t_l    <= '1';
                                    t_Oena <= '0';
                                    t_rst  <= '1';
            when others        =>
                                    t_r    <= '0';
                                    t_g    <= '0';
                                    t_b    <= '0';
                                    t_cath <= '0';
                                    t_clk  <= '0';
                                    t_l    <= '0';
                                    t_Oena <= '0';
                                    t_rst  <= '0';
        end case;
    end process;

    curgetsnext: process(clock)
    begin
        curState        := nextState;
        curRomAddr      <= std_logic_vector(conv_unsigned(bitShiftCounter, 9));
        LEDCont_s_red   <= t_r;
        LEDCont_s_green <= t_g;
        LEDCont_s_blue  <= t_b;
        LEDCont_s_cath  <= t_cath;
        LEDCont_s_clk   <= t_clk;
        LEDCont_s_latch <= t_l;
        LEDCont_s_OEna <= t_Oena;
        LEDCont_s_Rst  <= t_rst;
    end process;

    counting: process(clock)
    variable reddata   : std_logic_vector (4 downto 0) := "00000";
    variable greendata : std_logic_vector (4 downto 0) := "00000";
    variable bluedata  : std_logic_vector (4 downto 0) := "00000";
    variable address   : std_logic_vector (8 downto 0) := "000000000";
    begin
        address := std_logic_vector(conv_unsigned(bitShiftCounter, 9));
        if(clock'event and clock = '0') then
            case(curState) is
                when setAddress =>
                                if(bitShiftCounter = 511) then
                                    bitShiftCounter := 0;
                                else
                                    bitShiftCounter := bitShiftCounter + 1;
                                end if;
                                reddata   := reddata;
                                greendata := greendata;
                                bluedata  := bluedata;
                                iteration := iteration;
                                r_d       := '0';
                                g_d       := '0';
                                b_d       := '0';
                                c_d       := '0';


                when loadValue  =>
                                bitShiftCounter := bitShiftCounter;
                                reddata   := LEDCont_Data(4  downto  0);
                                greendata := LEDCont_Data(9  downto  5);
                                bluedata  := LEDCont_Data(14 downto 10);
                                iteration := iteration;
                                r_d       := '0';
                                g_d       := '0';
                                b_d       := '0';
                                c_d       := '0';

                when clockLow   =>
                                bitShiftCounter := bitShiftCounter;
                                reddata   := reddata;
                                greendata := greendata;
                                bluedata  := bluedata;
                                iteration := iteration;
                                if( iteration < reddata ) then
                                    r_d       := '1';
                                else
                                    r_d       := '0';
                                end if;
                                if( iteration < greendata ) then
                                    g_d       := '1';
                                else
                                    g_d       := '0';
                                end if;
                                if(  iteration < bluedata ) then
                                    b_d       := '1';
                                else
                                    b_d       := '0';
                                end if;
                                if(address(5 downto 3) = "111") then
                                    if (address(8 downto 6) = address(2 downto 0)) then
                                        c_d := '1';
                                    else
                                        c_d := '0';
                                    end if;
                                else
                                    c_d := '0';
                                end if;

                when clockHigh  =>
                                bitShiftCounter := bitShiftCounter;
                                if(bitShiftCounter = 511) then
                                                if (iteration = 31) then
                                        iteration := 0;
                                                else
                                                    iteration := iteration + 1;
                                                end if;
                                else
                                    iteration := iteration;
                                end if;
                                reddata   := reddata;
                                greendata := greendata;
                                bluedata  := bluedata;
                                r_d       := r_d;
                                g_d       := g_d;
                                b_d       := b_d;
                                c_d       := c_d;

                when others     =>
                                bitShiftCounter := bitShiftCounter;
                                iteration := iteration;
                                reddata   := "00000";
                                greendata := "00000";
                                bluedata  := "00000";
                                r_d       := r_d;
                                g_d       := g_d;
                                b_d       := b_d;
                                c_d       := c_d;

            end case;
        end if;
    end process;

end a;
