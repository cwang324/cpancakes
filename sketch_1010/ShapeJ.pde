class ShapeJ extends Shapes {
  
// the shape that consists of a single square
ShapeJ (float xcor, float ycor){   
    super(xcor, ycor);       
    int[][] localAry = {{1, 1, 1},
                        {1, 0, 0},
                        {1, 0, 0} };  
                        
    this.sAry = localAry;   
    this.c = color(0,191,255);
  }
  
  ShapeJ(){
        this(0.0f, 0.0f); 
    }
  
String toString() {
    return "ShapeJ picked up = " + Arrays.toString(sAry);
  }  
  

  
}