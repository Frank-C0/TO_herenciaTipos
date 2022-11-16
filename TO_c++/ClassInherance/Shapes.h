#include <iostream>

class Shape
{
    int sides;

public:
    virtual double area() = 0;
};

class Rectangle : public Shape
{
    double height;
    double width;

public:
    Rectangle(double h, double w)
    {
        height = h;
        width = w;
    }

    double area()
    {
        return height * width;
    }
};

class Triangle : public Shape
{
    double height;
    double width;

public:
    Triangle(double h, double w)
    {
        height = h;
        width = w;
    }
    double area()
    {
        return height * width / 2;
    }
};