abstract class Shapes{
 
 boolean followMouse=false;
 float x,y, origX, origY;
 

 
 
 Shapes(float xcor, float ycor){
  x=xcor;
  y=ycor;
  origX=xcor;
  origY=ycor;
 }
 
 void display(){};
  
 void toggleFollow(){
  followMouse=!followMouse; 
 }
  
 // dragging thing
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
