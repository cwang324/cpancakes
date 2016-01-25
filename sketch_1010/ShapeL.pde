class ShapeL extends Shape {
  
    // the shape that consists of a two squares stacked vertically  
    ShapeL(float xcor, float ycor) {
        super(xcor, ycor);
        int[][] localAry = { {1}, 
                             {1},
                             {1},
                             {1} };
        this.sAry = localAry;  
        this.c = color(255,20,147);
    }
  
    ShapeL() {
      this(0.0f, 0.0f);
    }

  
  
  
  
String toString() {
    return "ShapeL picked up = " + Arrays.toString(sAry);
  }  
  

}