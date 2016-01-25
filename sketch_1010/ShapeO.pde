class ShapeO extends Shape {
  
// the shape that consists of a two squares stacked vertically  
ShapeO(float xcor, float ycor) {
    super(xcor, ycor);
    int[][] localAry = {{1, 1, 1, 1, 1}};
    this.sAry = localAry;  
    this.c = color(220,20,60);
  }
  
  ShapeO(){
        this(0.0f, 0.0f); 
    }
  
String toString() {
    return "ShapeO picked up = " + Arrays.toString(sAry);
  }  
  

}