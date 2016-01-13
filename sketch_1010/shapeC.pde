class shapeC extends Shapes{
  
  // the shape that consists of a four squares arranged in a square
  
 shapeC(float xcor, float ycor){
   super(xcor, ycor);
 }
  
  void display(){
   stroke(255);
   fill(0);
   rect(x,y,20,20);
   rect(x,y+20,20,20);   
   rect(x+20,y,20,20);
   rect(x+20,y+20,20,20);
     
  }
}
