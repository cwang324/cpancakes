Cell[][] grid;
Buttons b1;
Buttons b2;
Buttons b3;
int cols = 10;
int rows = 10;

void setup() {
  size(350,350);
  grid = new Cell[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      // Initialize each object
      grid[i][j] = new Cell(i*21+75,j*21+30,20,20,color(209));
    }
  }
  
  b1 = new Buttons(155,250,50,20);
  b2 = new Buttons(80,250,50,20);
  b3 = new Buttons(230,250,50,20);
}


  
void draw() {
  background(255); 
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      grid[i][j].display();
    }
  }
  b1.display();
  b2.display();
  b3.display();
  if(b1.isover()&&mousePressed){
    grid[2][3].changecolor();
  }
}
