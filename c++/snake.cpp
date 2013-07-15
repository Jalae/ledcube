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
uint16_t color::dump()
{
    return packedcolor;
}

////////////////////////////////////SNAKE//////////////////////////////////////
snake::snake(coord c):dir(left)
{
    head = new snakeNode(c);
}
snake::~snake()
{
    snakeNode* t(head), t2(head);
    while(t)
    {
        t2 = t;
        t = t->m_next;
        delete t2;
    }
}
void snake::addNode( snakeNode* t)
{
    head->findtail()->m_next = t;
}

//i don't plan on ever removing a node.

//will return a snakenode list that is the same as head, except it has the tail still
//this will be used.
coord snake::updatePos(direction d)
{
    if(d != none)
        dir = d;
    coord t = head->m_pos;
    t+dir;
    fixcoord(t, dir); //idk how to get this to snakegame
    coord old = head->findTail()->m_pos;
    head->updatePod(t);
    return old;
}
bool snake::dead()
{
    if(head->m_next)
        return head->m_next->check(head->m_pos);
    return false;
}
bool snake::contains(coord const & c)
{
    return head->check(c);
}


//////////////////////////////////SNAKENODE////////////////////////////////////
snakeNode::snakeNode()
{
    m_next = NULL;
}
snakeNode::snakeNode(snakeNode const & cpy)
{
    *this = cpy;
}
snakeNode::snakeNode & operator=(snakeNode const & cpy)
{
    this->m_pos = cpy.m_pos;
    this->m_color = cpy.m_color;
    this->m_next = NULL;
    //i really don't want to copy the structure, just the data.
}
snakeNode::updatePos(coord n)
{
    if(m_next)
        m_next->updatePos(m_pos);
    m_next = n;
    return;
}
snakeNode::snakeNode * findTail()
{
    if(!m_next)
        return this;
    return m_next->findTail();
}
bool snakeNode::check( coord const & lhs )
{
    if(lhs == m_pos)
        return true;
    if(m_next)
        return m_next->check(lhs);
    return false;
}






int play(direction d)
{
    coord old = theSnake->upDatePos(d);
    if(theSnake->dead())
        return 0;
    if( theSnake->contains(fruit->m_pos) )
    {
        addNode(fruit);
        makeFruit();
        WRITE(theSnake);
    }
    else
    {
        WRITE(theSnake);
        WRITE(old, 0);
    }
}
