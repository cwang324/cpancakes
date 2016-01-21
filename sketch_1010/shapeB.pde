import java.util.Arrays;

class shapeB extends Shapes {
  
// the shape that consists of a two squares stacked vertically  
shapeB(float xcor, float ycor) {
    super(xcor, ycor);
    int[][] localAry = {{1}, {1}};
    this.sAry = localAry;  
    this.c = color(237, 148, 73);
  }
  
String toString() {
    return "shapeB picked up = " + Arrays.toString(sAry);
  }  
  
boolean contains(int mX, int mY) {
    return ( (mX>x && mX<(x+20)) && (mY>y && mY<(y+40)) );
  }
}