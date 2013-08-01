

#ifndef WRITELIB
#define WRITELIB
#define DEBUG_WIN32
#ifdef DEBUG_WIN32
//put windows specific code here

    //windows specific color code converter for the console
    uint32_t colorconvert(color c)
    {
        
    }
    //generic write function for a single point on the dataset
    void _write(coord p, color c)
    {
        //need to find console functions for writing to a specific location on the buffer

    }
#else
//put NIOS II specific code here
    //Design specific address swap because wiring blunder
    /*
    0 1 2  3  4  5  6  7
    8 9 10 11 12 13 14 15

    0 2 4  6  8  10 12 14
    1 3 5  7  9  11 13 15

    0 - 0    +0
    1 - 8    +7
    2 - 1    -1
    3 - 9    +6
    4 - 2    -2
    5 - 10   +5
    6 - 3    -3
    7 - 11   +4
    8 - 4    -4
    9 - 12   -3
    10 - 5   -5
    11 - 13  +2
    12 - 6   -6
    13 - 14  +1
    14 - 7   -7
    15 - 15  +0
*/
    int addrOffsetConv(int x)
    {
        int offset;
        switch(x%16)
        {
            case 0:  offset = 0  ;
            case 1:  offset = 7  ;
            case 2:  offset = -1 ;
            case 3:  offset = 6  ;
            case 4:  offset = -2 ;
            case 5:  offset = 5  ;
            case 6:  offset = -3 ;
            case 7:  offset = 4  ;
            case 8:  offset = -4 ;
            case 9:  offset = -3 ;
            case 10: offset = -5 ;
            case 11: offset = 2  ;
            case 12: offset = -6 ;
            case 13: offset = 1  ;
            case 14: offset = -7 ;
            case 15: offset = 0  ;
        }
        return x + offset;
    }
    void _write(coord p, color c)
    {
        
    }
#endif
//put generic code here

    //writes each coord found with the color at that node
    void WRITE(snakeNode * h)
    {

    }
    //writes a single value
    void WRITE(coord p, color c)
    {

    }
#endif
