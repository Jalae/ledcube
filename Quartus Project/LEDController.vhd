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
        LEDCont_s_!OEna  : out std_logic  := '1' ; --0 turns on the leds, 1 zzzz them
        LEDCont_s_!Rst   : out std_logic  := '0' ; --1 turns on the chip, 0 resets it
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
    signal curRomAddr      : std_logic_vector (8 downto 0) := "000000000";


    type LEDControllerStates is (init, shift1, shift2, shiftp, disOut, latNew, enaOut, unknown);
    shared variable curState        : LEDControllerStates           := init;
    shared variable nextState       : LEDControllerStates           := init;

    shared variable bitShiftCounter : integer    range 63     to 0  := 63;   --counting from 63 down makes things work a little better
    shared variable iteration       : std_logic_vector (4 downto 0) := "00000";
    shared variable curRow          : std_logic_vector (7 downto 0) := "00000001";
begin
    process(clock,curState)
    begin
        case curState is
            when init   =>  nextState := shiftp;
            when shiftp =>  nextState := shift1;
            when shift1 =>  nextState := shift2;
            when shift2 =>  if( bitShiftCounter = 0) then
                                nextState := disOut;
                            else
                                nextState := shift1;
                            end if;
            when disOut =>  nextState := latNew;
            when latNew =>  nextState := enaOut;
            when enaOut =>  nextState := shift1;
            when others =>  nextState := init;
        end case;
    end process;

    process(clock,curState)
    variable curR : std_logic_vector (4 downto 0) := "00000";
    variable curG : std_logic_vector (4 downto 0) := "00000";
    variable curB : std_logic_vector (4 downto 0) := "00000";
    begin
        curR := LEDCont_Data( 4 downto  0);
        curG := LEDCont_Data( 9 downto  5);
        curB := LEDCont_Data(14 downto 10);

        case curState is
            when init   =>  t_r       ;
                            t_g       ;
                            t_b       ;
                            t_cath    ;
                            t_clk     ;
                            t_l       ;
                            t_Oena    ;
                            curRomAddr  <= "000000000";

            when shift1 =>  
            when shift2 =>  ;
            when shiftp =>  ;
            when disOut =>  ;
            when latNew =>  ;
            when enaOut =>  ;
            when others =>  ;
        end case;
    end process;

    process(clock, nextState)
    begin
        if(clock'event and clock = '1')
            curState := nextState;
        end if;
    end process;

    LEDCont_Addr    <= curRomAddr;
    LEDCont_s_red   <= t_r;
    LEDCont_s_green <= t_g;
    LEDCont_s_blue  <= t_b;
    LEDCont_s_cath  <= t_cath;
    LEDCont_s_clk   <= t_clk;
    LEDCont_s_latch <= t_l;
    LEDCont_s_!OEna <= t_Oena;

end a;
