class ShapeD extends Shapes {

ShapeD (float xcor, float ycor) {
    super(xcor, ycor);
    int[][] localAry = { {1,1,1} };
    this.sAry = localAry;  
    this.c = color(219, 200, 84);
  }
  
String toString() {
    return "shapeD picked up = " + Arrays.toString(sAry);
   }  
    
boolean contains(int mX, int mY) {
    return ( (mX>x && mX<(x+60)) && (mY>y && mY<(y+20)) );
   }
}