class ShapeF extends Shapes {

ShapeF (float xcor, float ycor) {
    super(xcor, ycor);
    int[][] localAry = { {1,0},{1,1} };
    this.sAry = localAry;  
    this.c = color(20, 188, 115);
  }
  
  ShapeF(){
        this(0.0f, 0.0f); 
    }
    
String toString() {
    return "shapeF picked up = " + Arrays.toString(sAry);
   }  
    

}