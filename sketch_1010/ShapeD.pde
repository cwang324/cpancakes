class ShapeD extends Shapes {

ShapeD (float xcor, float ycor) {
    super(xcor, ycor);
    int[][] localAry = { {1,1,1} };
    this.sAry = localAry;  
    this.c = color(237, 148, 73);
  }
  
String toString() {
    return "shapeD picked up = " + Arrays.toString(sAry);
   }  
    

}