class ShapeE extends Shape {

ShapeE (float xcor, float ycor) {
    super(xcor, ycor);
    int[][] localAry = { {1,1},{1,0} };
    this.sAry = localAry;  
    this.c = color(20, 188, 115);
  }
  
  ShapeE(){
        this(0.0f, 0.0f); 
    }
  
String toString() {
    return "shapeE picked up = " + Arrays.toString(sAry);
   }  
    

}