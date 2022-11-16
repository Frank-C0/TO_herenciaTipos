package TypeInherance;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;

public class App {
    public static void main(String[] args) {
        
        ArrayList<? extends Drawable> shapes = new ArrayList<>(
                Arrays.asList(
                        new Triangle(7, 14),
                        new Rectangle(7, 6),
                        new Triangle(6, 8),
                        new Rectangle(9, 9),
                        new Triangle(12, 7),
                        new Rectangle(7, 4),
                        new Triangle(7, 11),
                        new Rectangle(5, 8)));

        for (Drawable s : shapes) {
            s.draw(System.out);
            System.out.println();
            System.out.println();
        }
    }
}

interface Drawable {
    void draw(PrintStream o);
}

class Rectangle implements Drawable {
    int sides = 4;
    double length;
    double width;

    Rectangle(int l, int w) {
        length = l;
        width = w;
    }
    @Override
    public void draw(PrintStream o) {
        //o.println(length*width);
        for (int j = 0; j < width; j++) {
            o.print("█");
        }
        o.print("\n");
        for (int i = 2; i < length; i++) {
            for (int j = 0; j < width; j++) {
                if(j==0 || j== width-1){
                    o.print("█");
                }else {
                    o.print(" ");
                }
            }
            o.print("\n");
        }
        for (int j = 0; j < width; j++) {
            o.print("█");
        }
        o.print("\n\n");
    }

}

class Triangle implements Drawable {
    int sides = 4;
    double height;
    double width;

    Triangle(int h, int w) {
        height = h;
        width = w;
    }
    @Override
    public void draw(PrintStream o) {
        o.println(height*width/2);
        for (int i = 1; i < height; i++) {
            double width_line = width/height*i;
            double width_line_end = width/height*(i+1);
            for (int j = 0; j < width_line+2; j++) {
                if(j==0){
                    o.print("█");
                }else if((j > width_line-1.5) && (j < width_line_end-0)){
                    o.print("█");
                }else {
                    o.print(" ");
                }
            }
            o.print("\n");
        }
        for (int j = 0; j < width; j++) {
            o.print("█");
        }
        o.print("\n\n");
    }
}