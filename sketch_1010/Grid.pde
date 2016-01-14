class Grid{
 
  
 int row, col;
 
 Cell[][] grid;
 int[][] gAry;

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
   gAry = new int[10][10];
   for(int c=0;c<10;c++){
     for(int k=0;k<10;k++){
       gAry[c][k] = 0;
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
  
  
  int validX(int x){
   return (x-75)/21; 
  }
  
  int validY(int y){
    return (y-30)/21;
  }
  
  void dropShape(int[][] ary, int x, int y){
    // checks if in grid
    if ((x<10 && x>=0) && (y<10 && y>=0)){
      
      // checks if in empty space in grid
      for (int row=0; row < ary.length; row++){
        for  (int col=0; col<ary[0].length; col++){
          if (!(ary[row][col]==0 || gAry[x+row][y+col]==0)){
            return;
          }
        }
      }
    }else{
      return;
    }
    
    // changing values in gAry
    for (int row=0; row < ary.length; row++){
      for  (int col=0; col<ary[0].length; col++){
        gAry[row+x][col+y]+=ary[row][col];
      }
    }
    }
  }

