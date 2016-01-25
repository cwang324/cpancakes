class ShapeG extends Shape {
  
// the shape that consists of a single square

ShapeG(float xcor, float ycor){   
    super(xcor, ycor);       
    int[][] localAry = {{1,1,1},
                        {1,1,1},
                        {1,1,1}};  
    this.sAry = localAry;   
    this.c = color(64,224,208);
  }
  
  ShapeG(){
        this(0.0f, 0.0f); 
    }
    
String toString() {
    return "ShapeG picked up = " + Arrays.toString(sAry);
  }  
  

  
}