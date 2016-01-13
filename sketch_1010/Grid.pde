class Grid{
 
 int row, col;
 Cell[][] grid;

 Grid(int row, int col){
   this.row = row;
   this.col = col;
   grid = new Cell[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      // Initialize each object
      grid[i][j] = new Cell(i*21+75,j*21+30,20,20,color(209));
    }
  }
  
 } 
  
  void display(){
   for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      grid[i][j].display();
    }
  }
}  
}
