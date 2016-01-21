class ShapeF extends Shapes {

ShapeF (float xcor, float ycor) {
    super(xcor, ycor);
    int[][] localAry = { {1,0},{1,1} };
    this.sAry = localAry;  
    this.c = color(87, 201, 134);
  }
  
String toString() {
    return "shapeF picked up = " + Arrays.toString(sAry);
   }  
    
boolean contains(int mX, int mY) {
    return ( (mX>x && mX<(x+40)) && (mY>y && mY<(y+40)) );
   }
}