#include <iostream>
class Drawable
{ // abstract class
public:
    virtual void draw(std::ostream &) = 0;
};