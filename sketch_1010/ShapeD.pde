class ShapeD extends Shape {

ShapeD (float xcor, float ycor) {
    super(xcor, ycor);
    int[][] localAry = { {1,1,1} };
    this.sAry = localAry;  
    this.c = color(255,140,0);
  }
  
  ShapeD(){
        this(0.0f, 0.0f); 
    }
  
String toString() {
    return "shapeD picked up = " + Arrays.toString(sAry);
   }  
    

}