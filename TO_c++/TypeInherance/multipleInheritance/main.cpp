#include "Shapes.h"
#include <iostream>

int main()
{
    Rectangle r(4, 8);
    Triangle t(6, 9);

    Drawable *dArray[2];

    dArray[0] = &r;
    dArray[1] = &t;

    for (Drawable *d : dArray)
    {
        d->draw(std::cout);
    }
}