class ShapeA extends Shape {
  
    // the shape that consists of a single square
    ShapeA (float xcor, float ycor){   
        super(xcor, ycor);       
        int[][] localAry = {{1}};  
        this.sAry = localAry;   
        this.c = color(123,104,238);  
    }
  
    ShapeA(){
        this(0.0f, 0.0f); 
    }
  
String toString() {
    return "ShapeA picked up = " + Arrays.toString(sAry);
  }  
  

  
}