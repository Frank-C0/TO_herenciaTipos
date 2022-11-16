#include "Shapes.h"
#include <iostream>

int main()
{
    Rectangle r(4, 8);
    Triangle t(6, 9);

    Shape s[] = {r, t};

    for (Shape shape : s)
    {
        shape.draw(std::cout); // class "Shape" has no member "draw"C/C++(135)
    }
}