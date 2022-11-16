package ClassInherance;

import java.util.ArrayList;
import java.util.Arrays;

public class App {
    public static void main(String[] args) {
        ArrayList<Shape> shapes = new ArrayList<>(
                Arrays.asList(
                        new Triangle(2, 4),
                        new Rectangle(4, 6),
                        new Triangle(6, 8),
                        new Rectangle(5, 9),
                        new Triangle(3, 7),
                        new Rectangle(1, 3),
                        new Triangle(7, 5),
                        new Rectangle(2, 8)));

        for (Shape s : shapes) {
            System.out.println(s.getArea());
        }
    }
}

abstract class Shape {
    int sides;

    abstract double getArea();
}

class Rectangle extends Shape {
    int sides = 4;
    double length;
    double width;

    Rectangle(int l, int w) {
        length = l;
        width = w;
    }

    @Override
    double getArea() {
        return length * width;
    }

}

class Triangle extends Shape {
    int sides = 4;
    double length;
    double width;

    Triangle(int l, int w) {
        length = l;
        width = w;
    }

    @Override
    double getArea() {
        return length * width / 2;
    }
}