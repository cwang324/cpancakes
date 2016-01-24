class ShapeI extends Shapes {

ShapeI (float xcor, float ycor) {
    super(xcor, ycor);
    int[][] localAry = { {1},
                         {1},
                         {1} };
    this.sAry = localAry;  
    this.c = color(255,140,0);
  }
  
  ShapeI(){
        this(0.0f, 0.0f); 
    }
  
String toString() {
    return "shapeD picked up = " + Arrays.toString(sAry);
   }  
    

}