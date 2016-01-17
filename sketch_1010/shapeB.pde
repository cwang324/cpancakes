class shapeB extends Shapes{
  
  int[][] sAry = {{1},{1}};
  
  // the shape that consists of a two squares stacked vertically
  
 shapeB(float xcor, float ycor){
   super(xcor, ycor);
 
 }
  
  void display(){
   stroke(255);
   fill(0);
   rect(x,y,20,20);
   rect(x,y+20,20,20);    
  }
}