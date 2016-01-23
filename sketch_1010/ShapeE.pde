class ShapeE extends Shapes {

ShapeE (float xcor, float ycor) {
    super(xcor, ycor);
    int[][] localAry = { {1,1},{1,0} };
    this.sAry = localAry;  
    this.c = color(87, 201, 134);
  }
  
String toString() {
    return "shapeE picked up = " + Arrays.toString(sAry);
   }  
    

}