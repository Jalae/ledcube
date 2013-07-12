
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
class color
{
    uint16_t packedcolor;
public:
    size_t red();
    void red(size_t);
    size_t green();
    void green(size_t);
    size_t blue();
    void blue(size_t);
};
class snakeNode
{
    coord cur;
    snakeNode * next;
public:
    updatePos(coord n)
    {
        updatePos();
    }
};

class snake
{
    snakeNode
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
