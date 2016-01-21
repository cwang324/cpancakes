class shapeC extends Shapes {
  
     
    // the shape that consists of a four squares arranged in a square
shapeC (float xcor, float ycor) {
    super(xcor, ycor);
    int[][] localAry = { {1,1}, {1,1} };
    this.sAry = localAry;  
    this.c = color(151, 218, 82);
  }
  
String toString() {
    return "shapeC picked up = " + Arrays.toString(sAry);
   }  
    
boolean contains(int mX, int mY) {
    return ( (mX>x && mX<(x+40)) && (mY>y && mY<(y+40)) );
   }
}