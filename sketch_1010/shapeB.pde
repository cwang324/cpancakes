import java.util.Arrays;

class ShapeB extends Shape {
  
    // the shape that consists of a two squares stacked vertically  
    ShapeB(float xcor, float ycor) {
        super(xcor, ycor);
        int[][] localAry = {{1}, {1}};
        this.sAry = localAry;  
        this.c = color(255,215,0);
    }
  
    ShapeB() {
      this(0.0f, 0.0f);
    }

  
  
  
  
String toString() {
    return "ShapeB picked up = " + Arrays.toString(sAry);
  }  
  

}