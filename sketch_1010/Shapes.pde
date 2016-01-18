abstract class Shapes {
   
    static final int CELL_SIZE = 20;
    boolean followMouse=false;
    float x,y, origX, origY;
    protected int[][] sAry = null;
    boolean visible;
 
    Shapes ( float xcor, float ycor ) {
        x=xcor;
        y=ycor;
        origX=xcor;
        origY=ycor;
        visible=true;
    }
 
    abstract boolean contains(int mX, int mY);
  
    void setFollowMouse ( boolean flag ) {
        this.followMouse = flag;
    }  
    
   
    // changes Shape coordinates based on mouse coordinates if followMouse=true and returns Shape to original position if 
    // Mouse=false
    void dragShape() {
      
        if (followMouse) {
            x = mouseX;
            y = mouseY;
        } else {
            x = origX;
            y = origY;
        }
    }
    
    
    void display () {
        stroke(255);
        fill(0);
        
        float startX = x;
        for ( int i = 0; i < sAry.length; i++ ) {
            for ( int j = 0; j < sAry[i].length; j++ )  {                
                rect(x,y,CELL_SIZE,CELL_SIZE);
                x += CELL_SIZE;
            }
            x = startX;
            y += CELL_SIZE;
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
 
 