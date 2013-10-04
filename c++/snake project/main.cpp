
#include <iostream>
#include <string>
#include "writeLib.h"
#include "snake.h"

using std::string;
using std::cin;
int main()
{
    string s;
    snakeGame sn(8,8,1,1);
    cin >> s;
    sn.play(none);
    while (s != "x")
    {
        direction d;
        switch(s[0])
        {
            case 'w': d = up;
            break;
            case 'a': d = left;
            break;
            case 's': d = down;
            break;
            case 'd': d = right;
            break;
            default: d = none;
        }
        sn.play(d);
        cin >> s;
    }
}
