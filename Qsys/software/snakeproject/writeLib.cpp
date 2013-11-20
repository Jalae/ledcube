#include <system.h>
#include <io.h>

#include "writeLib.h"
#include "snake.h"


//helper functions

bool operator==(coord lhs, coord rhs)
{
    bool u, r, i;
    u = r = i = false;
    u = lhs.up    == rhs.up;
    r = lhs.right == rhs.right;
    i = lhs.in    == rhs.in;
    return u && r && i;
}
void operator+(coord & lhs, direction rhs)
{
    switch(rhs)
    {
        case up:    lhs.up += 1;
            break;
        case down:  lhs.up -= 1;
            break;
        case left:  lhs.right -= 1;
            break;
        case right: lhs.right += 1;
            break;
        case in:    lhs.in += 1;
            break;
        case out:   lhs.in -= 1;
            break;
        case none:
        default:    lhs;
        	break;
    }
}

//put generic code here

////////////////////////////////////COLOR//////////////////////////////////////
size_t color::red()
{
    return packedcolor && (0x001F << 0);
}
void color::red(size_t r)
{
    packedcolor = (r << 0) && (0x001F << 0);
}
size_t color::green()
{
    return packedcolor && (0x001F << 5);
}
void color::green(size_t g)
{
    packedcolor = (g << 5) && (0x001F << 5);
}
size_t color::blue()
{
    return packedcolor && (0x001F << 10);
}
void color::blue(size_t b)
{
    packedcolor = (b << 10) && (0x001F << 10);
}

uint color::dump()
{
    return packedcolor;
}




class snakeNode;
//writes each coord found with the color at that node
void write(snakeNode * h)
{
	if(h)
    {
		color nodecolor = h->getColor();
		coord nodepos   = h->getPos();
		snakeNode * temp = h->m_next;
		write(nodepos, nodecolor);
		if(temp)
			write(temp);
    }
}
//writes a single value
void write(coord p, color c)
{
	int data = 0;
	volatile int d0(0);
	volatile int d1(1);
	IOWR_16DIRECT(LEDROM_ENA_BASE, 0, d0);
	IOWR_16DIRECT(LEDROM_DATA_BASE, 0, c.dump());
	data = ((p.up & 0x07) << 6) | ((p.right & 0x07)<<3) | (p.in & 0x07);
	IOWR_16DIRECT(LEDROM_ADDRESS_BASE, 0, data);
	IOWR_16DIRECT(LEDROM_ENA_BASE, 0, d1);
	IOWR_16DIRECT(LEDROM_ENA_BASE, 0, d0);
}


