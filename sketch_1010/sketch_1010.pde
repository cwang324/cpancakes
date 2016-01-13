Grid g;
Buttons b1;
Buttons b2;
Buttons b3;
shapeA a1;
shapeB B1;
shapeC C1;
Patterns p1;

int cols = 10;
int rows = 10;

void setup() {
  size(350,350);
  
  g = new Grid(10,10);
  b1 = new Buttons(155,250,50,20);
  b2 = new Buttons(80,250,50,20);
  b3 = new Buttons(230,250,50,20);
  p1 = new Patterns(90,270);
  p1.makePattern(1);
  
  //a1 = new shapeA(155,275);
  C1 = new shapeC(155,275);
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
  p1.display();
  C1.display();
  
}

