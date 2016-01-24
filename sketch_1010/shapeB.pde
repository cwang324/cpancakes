import java.util.Arrays;

class shapeB extends Shapes {
  
    // the shape that consists of a two squares stacked vertically  
    shapeB(float xcor, float ycor) {
        super(xcor, ycor);
        int[][] localAry = {{1}, {1}};
        this.sAry = localAry;  
        this.c = color(255,215,0);
    }
  
    shapeB() {
      this(0.0f, 0.0f);
    }

  
  
  
  
String toString() {
    return "shapeB picked up = " + Arrays.toString(sAry);
  }  
  

}