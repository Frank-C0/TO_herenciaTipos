#include <iostream>

class Shape
{
    int sides;
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

    void draw(std::ostream &o)
    {
        o << (height * width) << '\n';

        for (int j = 0; j < width; j++)
        {
            o << ("█");
        }
        o << ("\n");
        for (int i = 2; i < height; i++)
        {
            for (int j = 0; j < width; j++)
            {
                if (j == 0 || j == width - 1)
                {
                    o << ("█");
                }
                else
                {
                    o << (" ");
                }
            }
            o << ("\n");
        }
        for (int j = 0; j < width; j++)
        {
            o << ("█");
        }
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
    void draw(std::ostream &o)
    {
        o << (height * width / 2) << '\n';
        for (int i = 1; i < height; i++)
        {
            double width_line = width / height * i;
            double width_line_end = width / height * (i + 1);
            for (int j = 0; j < width_line + 2; j++)
            {
                if (j == 0)
                {
                    o << ("█");
                }
                else if ((j > width_line - 1.5) && (j < width_line_end - 0))
                {
                    o << ("█");
                }
                else
                {
                    o << (" ");
                }
            }
            o << ("\n");
        }
        for (int j = 0; j < width; j++)
        {
            o << ("█");
        }
    }
};