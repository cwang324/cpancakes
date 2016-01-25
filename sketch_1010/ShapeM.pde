class ShapeM extends Shape {
  
// the shape that consists of a two squares stacked vertically  
ShapeM(float xcor, float ycor) {
    super(xcor, ycor);
    int[][] localAry = {{1, 1, 1, 1}};
    this.sAry = localAry;  
    this.c = color(255,20,147);
  }
  
  ShapeM(){
        this(0.0f, 0.0f); 
    }
  
String toString() {
    return "ShapeM picked up = " + Arrays.toString(sAry);
  }  
  

}