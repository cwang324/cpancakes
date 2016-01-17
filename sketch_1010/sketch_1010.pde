Grid g;
Buttons b1;
Buttons b2;
Buttons b3;
shapeA A1;
shapeB B1;
shapeC C1;
Shapes s1;
boolean pieceInHand = false;

int cols = 10;
int rows = 10;

void setup() {
  size(350,350);
  
  g = new Grid(10,10);
  b1 = new Buttons(155,250,50,20);
  b2 = new Buttons(80,250,50,20);
  b3 = new Buttons(230,250,50,20);
  
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
  A1.display();
  B1.display();
  C1.display();
  A1.dragShape();
  B1.dragShape();
  C1.dragShape();
  g.changecellcolor();
  g.clearg();
  //mousePressed();
  //println(mouseX + ", " + mouseY);
  //println(g.validX(mouseX) + ", " + g.validY(mouseY))
  println("g.gAry (0,0) value " + g.gAry[0][0]);
}
   int num=0;

//void mouseClicked(){
  //   println( g.convertY(mouseY));
     
  //}


  void mousePressed() {
  if (!pieceInHand) {
    if (mouseX<110) {
      A1.toggleFollow();
      s1 = A1;
    } else if (mouseX<150) {
      B1.toggleFollow(); 
      s1=B1;
    } else {
      C1.toggleFollow();
      s1=C1;
    }
    pieceInHand = true;
  } else if (pieceInHand && g.validLocation(g.validX(mouseX), g.validY(mouseY))) {
    g.dropShape(s1.sAry, g.validX(mouseX), g.validY(mouseY));
    s1.toggleFollow();
    pieceInHand = false;
  } else if (pieceInHand){
    s1.toggleFollow(); 
    s1 = null;
    pieceInHand = false;
  }
  
}
  