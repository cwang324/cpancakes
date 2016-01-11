Cell[][] grid;
Buttons b;


int cols = 10;
int rows = 10;
color bcolor;

void setup() {
  size(350,350);
  grid = new Cell[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      // Initialize each object
      grid[i][j] = new Cell(i*21+75,j*21+30,20,20,color(209));
    }
  }
  
  b = new Buttons();
}


void draw() {
  background(255); 
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      grid[i][j].display();
    }
  }
  b.display();
  if(b.isover()&&mousePressed){
    grid[2][3].changecolor();
  }
}