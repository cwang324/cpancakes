class ShapeG extends Shapes {
  
// the shape that consists of a single square

ShapeG(float xcor, float ycor){   
    super(xcor, ycor);       
    int[][] localAry = {{1,1,1},
                        {1,1,1},
                        {1,1,1}};  
    this.sAry = localAry;   
    this.c = color(0,250,154);
  }
  
String toString() {
    return "ShapeG picked up = " + Arrays.toString(sAry);
  }  
  

  
}