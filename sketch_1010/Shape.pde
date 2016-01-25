class Shape implements Cloneable{
   
    static final int CELL_SIZE = 20;
    static final int INIT_CELL_SIZE = 10;
    
    boolean followMouse=false;
    float x,y, origX, origY;
    protected int[][] sAry = null;
    boolean visible;
    color c;
    int pointValue = 0;
    int curCellSize = INIT_CELL_SIZE;
 
    Shape ( float xcor, float ycor ) {
        x=xcor;
        y=ycor;
        origX=xcor;
        origY=ycor;
        visible=true;
        c = color(0);
    }
  
    Shape (){
      this(0,0);
    }
 
    boolean contains(int mX, int mY){
        for (int row = 0; row < sAry.length; row++){
          if ( !(mX>x && mX<(x+(sAry[row].length*20)) && (mY>y && mY<(y+(sAry.length*20))))){
              return false;
          }
        }
      return true;
    }
  
    void setFollowMouse ( boolean flag ) {
        this.followMouse = flag;
    }  
    
   int pointValue(){
       int ones = 0;
       if (sAry!=null){
           for (int row=0; row < sAry.length; row++){
               for (int col=0; col < sAry[row].length; col++){
               
                   ones+=sAry[row][col];
               }
           }
       }
       return ones;
   }
   
    // changes Shape coordinates based on mouse coordinates if followMouse=true and returns Shape to original position if 
    // Mouse=false
    void dragShape() {      
        if (followMouse) {
          x = (mouseX-10);
          y = (mouseY-10);
          curCellSize = CELL_SIZE;
        } else {
          x = origX;
          y = origY;
          curCellSize = INIT_CELL_SIZE;
        }
      }
   
//Shape clone(){
//  return (Shape) super.clone();
//}
    
    Shape deepClone() {
        Shape s = new Shape();
        s.followMouse = this.followMouse;
        s.x = this.x;
        s.y = this.y;
        s.origX = this.origX;
        s.origY = this.origY;
        s.visible = this.visible;
        s.c = this.c;
      
       int[][] newArray = new int[sAry.length][];
       for ( int i = 0; i < sAry.length; i++ ) {
           newArray[i] = new int[sAry[i].length];
           for ( int j = 0; j < newArray[i].length; j++ ) {   
               newArray[i][j] = sAry[i][j];
           }            
       }
       s.sAry = newArray;
       return s;
    }
      
    void setXY(int newX, int newY){
        origX = newX;
        x = newX;
        origY = newY;
        y=newY;
    }
    
    
    void display () {
        stroke(255);
        fill(c);
        float startX = x;
        for ( int i = 0; i < sAry.length; i++ ) {
            for ( int j = 0; j < sAry[i].length; j++ )  {   
                if (sAry[i][j]==1){
                    rect(x,y,curCellSize,curCellSize,4);
                    x += curCellSize;
                }
                if (sAry[i][j]==0){
                    x += curCellSize;
                }
            }
        x = startX;
        y += curCellSize;
        }
    }  
    
    
      public void printArray ( int[][] xArray ) {
          for ( int i = 0; i < xArray.length; i++ ) {
            for ( int j = 0; j < xArray[i].length; j++ ) {
              print ( xArray[i][j] );
              if ( j < xArray[i].length-1 ) {
                print(", ");
              }                     
            }
            println();
          }
        }
}
 
 