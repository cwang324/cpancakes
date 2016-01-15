abstract class Shapes{
 
 boolean followMouse=false;
 float x,y, origX, origY;
 int[][] sAry;

 
 
 Shapes(float xcor, float ycor){
  x=xcor;
  y=ycor;
  origX=xcor;
  origY=ycor;
  sAry = new int[0][0];
 }
 
 void display(){};
  
  // acts as the switch for dragShape() whether to follow the mouse or not
 void toggleFollow(){
  followMouse=!followMouse; 
 }
  
 // changes Shape coordinates based on mouse coordinates if followMouse=true and returns Shape to original position if 
 // Mouse=false
 void dragShape(){
  
  if (followMouse){
    x = mouseX;
    y = mouseY;
  }else{
    x = origX;
    y = origY;
  }
 }
 
 
 
}
