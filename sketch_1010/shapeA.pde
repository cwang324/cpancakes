class shapeA extends Shapes {
  
   // the shape that consists of a single square
  
   shapeA (float xcor, float ycor){   
       super(xcor, ycor);       
       int[][] localAry = {{1}};  
       this.sAry = localAry;       
   }
 
  void display() {
       stroke(255);
       fill(0);
       rect(x,y,20,20); 
  }
  
  String toString() {
        return "shapeA picked up = " + Arrays.toString(sAry);
  }  
  
  boolean contains(int mX, int mY){
       return ( (mX>x && mX<(x+20)) && (mY>y && mY<(y+20)) );
  }
  
  
}