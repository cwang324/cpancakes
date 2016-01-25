class ShapeH extends Shape {
  
// the shape that consists of a two squares stacked vertically  
ShapeH(float xcor, float ycor) {
    super(xcor, ycor);
    int[][] localAry = {{1, 1}};
    this.sAry = localAry;  
    this.c = color(255,215,0);
  }
  
  ShapeH(){
        this(0.0f, 0.0f); 
    }
  
String toString() {
    return "ShapeH picked up = " + Arrays.toString(sAry);
  }  
  

}