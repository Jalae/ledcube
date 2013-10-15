
#include <iostream>

#include "writeLib.h"
#include "stdlib.h"
#include "time.h"



#ifndef snakelib
#define snakelib

class snakeNode;
class snakeGame;
//^retarded cyclical dependancy
class snake
{
    snakeGame * momma;
    direction  dir;
public:
friend void write(snake *);
    snakeNode* head;
    snake(coord c, snakeGame * m);
    ~snake();
    void addNode( snakeNode* t);
    //i don't plan on ever removing a node.

    //will return a snakenode list that is the same as head, except it has the tail still
    //this will be used.
    coord updatePos(direction d);
    bool dead();
    bool contains(snakeNode const & c);
};

class snakeNode
{
public:
friend void write(snake *);
    snakeNode * m_next;
    coord m_pos;
    color m_color;
friend snake;
    snakeNode(coord);
    snakeNode(snakeNode const & cpy);
    snakeNode & operator=(snakeNode const & cpy);
    void updatePos(coord n);
    snakeNode * findTail();

    void setColor(color c)
    {
        m_color = c;
    }
    color getColor()
    {
        return m_color;
    }
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
friend void write(snake *);

    coord randomcoord()
    {
        coord c;
        srand(time(NULL));
        c.up = rand() % Maxes.up;
        c.right = rand() % Maxes.right;
        c.in = rand() % Maxes.in;
        return c;
    }
    //this function assumes the previous fruit is no longer the games
    //but rather the snakes
    void makeFruit()
    {
        coord c;
        do
        {
            c = randomcoord();
            std::cout << c.up << " " << c.right << " " << c.in << "\n";
        } while(theSnake->contains(c));
        snakeNode * temp = new snakeNode(c);
        fruit = temp;
    }

    //expects that we just moved out of the play area this move
    //as in we didn't go out 3 moves ago.
    //it is fine if we didn't go out.
    void fixcoord(coord & c, direction d)
    {
        switch(d)
        {
            case up: if (c.up >= Maxes.up) c.up=0;
            break;
            case down: if (c.up <= 0) c.up=0;
            break;
            case right: if (c.right >= Maxes.right) c.right=0;
            break;
            case left: if (c.right <= 0) c.right=0;
            break;
            case in: if (c.in >= Maxes.in) c.in=0;
            break;
            case out: if (c.in <= 0) c.in=0;
            default:
            break;
        }
    }

    snakeGame(size_t u, size_t r, size_t i, size_t len = 3)
    {
        Maxes.up=u; Maxes.right=r; Maxes.in=i;
        coord temp = {u/2,r/2,i/2};
        theSnake = new snake(temp, this);
        makeFruit();
    }

    ~snakeGame()
    {
        delete(theSnake);
    }

    int play(direction d = none);
};

#endif
