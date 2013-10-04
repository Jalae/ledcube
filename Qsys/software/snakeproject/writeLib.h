


#include "alt_types.h"
#include "altera_avalon_pio_regs.h"
#include "sys/alt_irq.h"
#include "system.h"
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdint.h>


#ifndef writelib
#define writelib
enum direction
{
    up, down, left, right, in, out, none
};
struct coord
{
    size_t up;
    size_t right;
    size_t in;
};
//helper functions
bool operator==(coord lhs, coord rhs);
void operator+(coord & lhs, direction rhs);

//use this for write
//IOWR_16DIRECT(BASE, OFFSET, DATA)

// this class will handle holding and managing colors.
// colors are 5 bits.
// no special handling is needed for the client.
// any bits given more than 5 are ignored.
class color
{
    uint16_t packedcolor;
public:
    size_t red();
    void red(size_t r);
    size_t green();
    void green(size_t g);
    size_t blue();
    void blue(size_t b);
    uint16_t dump();
    color()
    {packedcolor = 0xFFFF;}
    color(int i)
    {packedcolor = i;}
    bool operator==(uint16_t i)
    { return packedcolor == i; }
};

//put generic code here


class snakeNode;
//writes each coord found with the color at that node
void write(snakeNode * h);
//writes a single value
void write(coord p, color c);

#endif
