abstract class Shapes {
 
    boolean followMouse=false;
    float x,y, origX, origY;
    protected int[][] sAry = null;
    boolean visible;
 
    Shapes (float xcor, float ycor) {
        x=xcor;
        y=ycor;
        origX=xcor;
        origY=ycor;
        visible=true;
    }
 
    abstract void display();
 
  
    //// acts as the switch for dragShape() whether to follow the mouse or not
    //void toggleFollow() {
    //    followMouse=!followMouse; 
    //}
  
    void setFollowMouse(boolean flag) {
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
 }
 
 