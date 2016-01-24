class shapeA extends Shapes {
  
    // the shape that consists of a single square
    shapeA (float xcor, float ycor){   
        super(xcor, ycor);       
        int[][] localAry = {{1}};  
        this.sAry = localAry;   
        this.c = color(123,104,238);  
    }
  
    shapeA(){
        this(0.0f, 0.0f); 
    }
  
String toString() {
    return "shapeA picked up = " + Arrays.toString(sAry);
  }  
  

  
}