
#include "writeLib.h"

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
// this class will handle holding and managing colors.
// colors are 5 bits.
// no special handling is needed for the client.
// any bits given more than 5 are ignored.

class color
{
    uint16_t packedcolor;
public:
    size_t red()
    {
        return packedcolor && (0x001F << 0);
    }
    void red(size_t r)
    {
        packedcolor = (r << 0) && (0x001F << 0);
    }
    size_t green()
    {
        return packedcolor && (0x001F << 5);
    }
    void green(size_t g);
    {
        packedcolor = (g << 5) && (0x001F << 5);
    }
    size_t blue()
    {
        return packedcolor && (0x001F << 10);
    }
    void blue(size_t b);
    {
        packedcolor = (b << 10) && (0x001F << 10);
    }
    uint16_t dump()
    {
        return packedcolor;
    }
};
//retarded cyclical dependancy
class snakeNode;

class snake
{
    snakeNode* head;
    direction  dir;
public:
    snake(coord c):dir(left)
    {
        head = new snakeNode(c);
    }
    ~snake()
    {
        snakeNode* t(head), t2(head);
        while(t)
        {
            t2 = t;
            t = t->m_next;
            delete t2;
        }
    }
    void addNode( snakeNode* t)
    {
        head->findtail()->m_next = t;
    }

//i don't plan on ever removing a node.

    void updatePos()
    {
        coord t = head->m_pos;
        t+dir;
        fixcoord(t, dir);
        head->updatePod(t);
    }
    bool p_dead()
    {
        if(head->m_next)
            return head->m_next->check(head);
        return false;
    }
};

class snakeNode
{
    coord m_pos;
    color m_color;
    snakeNode * m_next;
public:
friend snake;
    snakeNode()
    {
        m_next = NULL;
    }
    updatePos(coord n)
    {
        if(m_next)
            m_next->updatePos(m_pos);
        m_next = n;
        return;
    }
    snakeNode * findTail()
    {
        if(!m_next)
            return this;
        return m_next->findTail();
    }

    bool check( snakeNode * lhs )
    {
        if(lhd->m_pos == m_pos)
            return true;
        if(m_next)
            return m_next->check(lhs);
        return false;
    }
};

class snakeGame
{
    //datamembers
    //bottom left is considered 0,0,0
    coord Maxes;
    snake* theSnake;

    //internal methods
    //draws the whole array
    void Draw();
public:
    //expects that we just moved out of the play area this move
    void fixcoord(coord & c, dir d)
    {
        switch(dir)
        {
            case up: if (c.up >= Maxes.up) c.up=0;
            break;
            case down: if (c.down <= 0) c.down=Maxes.down;
            break;
            case right: if (c.right >= Maxes.right) c.right=0;
            break;
            case left: if (c.left <= 0) c.left=Maxes.left;
            break;
            case in: if (c.in >= Maxes.in) c.in=0;
            break;
            case out: if (c.out <= 0) c.out=Maxes.out;
            break;
            default:
        }
    }
    snakeGame(size_t u, r, i, len = 3):maxUp(u), maxRight(r), maxIn(i)
    {
        theSnake = new snake(len);
    }
    ~snakeGame()
    {
        delete(theSnake);
    }
    int play(direction d = none);
};
