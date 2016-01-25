class ShapeK extends Shape {
  
// the shape that consists of a single square
ShapeK (float xcor, float ycor){   
    super(xcor, ycor);       
    int[][] localAry = {{1, 1, 1},
                        {0, 0, 1},
                        {0, 0, 1} };  
                        
    this.sAry = localAry;   
    this.c = color(0,191,255);
  }
  
  ShapeK(){
        this(0.0f, 0.0f); 
    }
  
String toString() {
    return "ShapeK picked up = " + Arrays.toString(sAry);
  }  
  

  
}