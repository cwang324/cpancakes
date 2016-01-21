class shapeA extends Shapes {
  
// the shape that consists of a single square
shapeA (float xcor, float ycor){   
    super(xcor, ycor);       
    int[][] localAry = {{1}};  
    this.sAry = localAry;   
    this.c = color(100, 59, 129);
  }
  
String toString() {
    return "shapeA picked up = " + Arrays.toString(sAry);
  }  
  
boolean contains(int mX, int mY){
    return ( (mX>x && mX<(x+20)) && (mY>y && mY<(y+20)) );
  }
  
}