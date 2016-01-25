class ShapeC extends Shape {
     
    // the shape that consists of a four squares arranged in a square
    ShapeC (float xcor, float ycor) {
        super(xcor, ycor);
        int[][] localAry = { {1,1}, {1,1} };
        this.sAry = localAry;  
        this.c = color(151, 218, 82);
    }
  
    ShapeC () {
      this(0.0f, 0.0f);
    }  
  
    String toString() {
        return "ShapeC picked up = " + Arrays.toString(sAry);
    }  
}