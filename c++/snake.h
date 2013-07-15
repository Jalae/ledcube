
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
bool operator==(coord lhs, coord rhs);
void operator+(coord & lhs, direction rhs);

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
};

class snakeNode;
//^retarded cyclical dependancy
class snake
{
    snakeNode* head;
    direction  dir;
public:
    snake(coord c):dir(left);
    ~snake();
    void addNode( snakeNode* t);
    //i don't plan on ever removing a node.

    //will return a snakenode list that is the same as head, except it has the tail still
    //this will be used.
    coord updatePos(direction d);
    bool dead();
    bool contains(coord const & c);
};

class snakeNode
{
    coord m_pos;
    color m_color;
    snakeNode * m_next;
public:
friend snake;
    snakeNode();
    snakeNode(snakeNode const & cpy);
    snakeNode & operator=(snakeNode const & cpy);
    updatePos(coord n);
    snakeNode * findTail();

    bool check( coord const & lhs );
};

class snakeGame
{
    //datamembers
    //bottom left is considered 0,0,0
    coord Maxes;
    snake* theSnake;
    snakeNode * fruit;

    //internal methods
    //draws the whole array
    void Draw();
public:
    //expects that we just moved out of the play area this move
    //as in we didn't go out 3 moves ago.
    //it is fine if we didn't go out.
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
