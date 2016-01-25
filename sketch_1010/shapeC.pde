class shapeC extends Shape {
     
    // the shape that consists of a four squares arranged in a square
    shapeC (float xcor, float ycor) {
        super(xcor, ycor);
        int[][] localAry = { {1,1}, {1,1} };
        this.sAry = localAry;  
        this.c = color(151, 218, 82);
    }
  
    shapeC () {
      this(0.0f, 0.0f);
    }  
  
    String toString() {
        return "shapeC picked up = " + Arrays.toString(sAry);
    }  
}