

#include "writelib.h"
#include "snake.h"

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
        case up:    lhs.up + 1;
            break;
        case down:  lhs.up - 1;
            break;
        case left:  lhs.right - 1;
            break;
        case right: lhs.right + 1;
            break;
        case in:    lhs.in + 1;
            break;
        case out:   lhs.in - 1;
            break;
        case none:
        default:    lhs;
    }
}


void color::red(size_t r)
{
    packedcolor = (packedcolor & ((!(0x001F))<<0))|((r & 0x001F) << 0);
}
size_t color::red()
{
    return (packedcolor & (0x001F << 0)) >> 0;
}
void color::green(size_t g)
{
    packedcolor = (packedcolor & ((!(0x001F))<<5))|((g & 0x001F) << 5);
}
size_t color::green()
{
    return (packedcolor & (0x001F << 5)) >> 5;
}
void color::blue(size_t b)
{
    packedcolor = (packedcolor&((!(0x001F))<<10))|((b&0x001F)<<10);
}
size_t color::blue()
{
    return (packedcolor & (0x001F << 10)) >> 10;
}
uint16_t color::dump()
{
    return packedcolor;
}



void write(snake * s)
{
    snakeGame * m = s->momma;
    coord a;
    a.in = 0;
    std::cout << "   ";
    for(int i(0); i < m->Maxes.right; i++)
        std::cout << "#";
    std::cout << "##\n";
    for(a.up = 0; a.up < m->Maxes.up; a.up++)
    {
        std::cout << "   #";
        for(a.right = 0; a.right < m->Maxes.right; a.right++)
        {
            snakeNode t = snakeNode(a);
            if(s->contains(t))
                std::cout << "o" ;
            else
            {
                if(m->fruit->m_pos == a)
                    std::cout << "@";
                else
                    std::cout << " " ;
            }
        }
        std::cout << "#";
        std::cout << "\n";
    }
    std::cout << "   ";
    for(int i(0); i < m->Maxes.right; i++)
        std::cout << "#";
    std::cout << "##\n";

    std::cout << "\n";
    std::cout << "\n";
}




/* implement these for nios with the memwrite macro
//writes each coord found with the color at that node
void write(snakeNode * h)
{
}
//writes a single value
void write(coord p, color c)
{
}
*/

