
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
//#include <cstdint>

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

// this class will handle holding and managing colors.
// colors are 5 bits.
// no special handling is needed for the client.
// any bits given more than 5 are ignored.
class color
{
    uint packedcolor;
public:
    size_t red();
    void red(size_t r);
    size_t green();
    void green(size_t g);
    size_t blue();
    void blue(size_t b);
    uint dump();
    color()
    {packedcolor = 0xFFFF;}
    color(int i)
    {packedcolor = i;}
    color(color const & c)
    {packedcolor = c.packedcolor;}
    bool operator==(uint i)
    { return packedcolor == i; }
    bool operator==(color const & c)
	{return packedcolor == c.packedcolor;}
};

//put generic code here


class snakeNode;
//writes each coord found with the color at that node
void write(snakeNode * h);
//writes a single value
void write(coord p, color c);

#endif
