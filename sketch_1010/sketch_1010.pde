Grid g;
Buttons b1;
Buttons b2;
Buttons b3;
Shapes A1;
Shapes B1;
Shapes C1;
Shapes s1 = null;
boolean pieceInHand = false;

int cols = 10;
int rows = 10;

void setup() {
    size(350,350);
  
    g = new Grid(10,10);
    b1 = new Buttons(155,250,50,20);
    b2 = new Buttons(80,250,50,20);
    b3 = new Buttons(230,250,50,20);
  
    // randomly generating shapes
  
    //int n = (int) (Math.random()*3);
    //if (n==0){
    //  A1 = new shapeA(90,275);
    //}else if (n==1){
    //  A1 = new shapeB(90,275);
    //}else{
    //  A1 = new shapeC(90,275);
    //}
  
    A1 = new shapeA(90,275);
    B1 = new shapeB(240,275);
    C1 = new shapeC(160,275);
}


  
void draw() {
    background(255); 
    g.display();
    b1.display();
    b2.display();
    b3.display();
  //if(b1.isover()&&mousePressed){
  //  grid[2][3].changecolor();
  //}
  
    if (A1.visible){
        A1.display();
    }
    if (B1.visible){
        B1.display();
    }
    if (C1.visible){
        C1.display();
    }
  
    A1.dragShape();
    B1.dragShape();
    C1.dragShape();
    g.changecellcolor();
    g.clearg();
    //mousePressed();
    //println(mouseX + ", " + mouseY);
    //println(g.validX(mouseX) + ", " + g.validY(mouseY));
    //println("g.gAry (0,0) value " + g.gAry[0][0]);
  
    //println((int)(Math.random()*3));
   //if ( s1 != null) {
   //    println("s1.length= " + s1.sAry.length ); 
   //    println("A1 =" + A1.sAry.length);  
   //    println(s1);
   // }
}


   int num=0;

//void mouseClicked(){
  //   println( g.convertY(mouseY));
     
  //}


  void mousePressed() {
      if (!pieceInHand) 
      {
          if (mouseX<110) { //<>//
              A1.setFollowMouse(true);
              s1 = A1;
              println("\n=========================\nsetting s1 to A1\n  s1 = " + s1 + ", A1 = " + A1 +  "\n=========================\n");
              
          } else if (mouseX<150) {
              B1.setFollowMouse(true);
              s1=B1;
          } else {
              C1.setFollowMouse(true);
              s1=C1;
          }       
          pieceInHand = true;
          println("set pieceInHand to " + pieceInHand );
      } 
      //else if (pieceInHand && g.validLocation(g.validX(mouseX), g.validY(mouseY))) {
      //    println("\n================================\n=  about to update the array with the shape. s1 =" + s1 + "\n===========================\n");
      //    g.dropShape(s1.sAry, g.validX(mouseX), g.validY(mouseY)); // want to make dropShape a boolean
      //    s1.visible=false;
      //    s1.setFollowMouse(false);
      //    pieceInHand = false;
      //} else if (pieceInHand){
      //    println("switch off shape to follow the mouse" );          
      //    s1.setFollowMouse(false);
      //    //s1 = null;
      //    pieceInHand = false;
      //}
  }
  
  
  void mouseReleased() {
      if ( pieceInHand ) {          
          pieceInHand = false;
          println("set pieceInHand to "  + pieceInHand);
          println("switch off shape to follow the mouse" );
          s1.setFollowMouse(false);
          
          if ( g.validLocation(g.validX(mouseX), g.validY(mouseY))) {
              println("\n================================\n=  about to update the array with the shape. s1 =" + s1 + "\n===========================\n");
              g.dropShape(s1.sAry, g.validX(mouseX), g.validY(mouseY)); // want to make dropShape a boolean
              s1.visible=false;
          } else {                        
              s1.setFollowMouse(false);              
          }          
      }    
  }  
      
  