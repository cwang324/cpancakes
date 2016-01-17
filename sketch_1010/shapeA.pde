class shapeA extends Shapes{
  
  
  
  // the shape that consists of a single square
  
 shapeA(float xcor, float ycor){
   super(xcor, ycor);
   
   sAry = new int[1][1];
 }
  
  void display(){
   stroke(255);
   fill(0);
   rect(x,y,20,20); 
  }
}