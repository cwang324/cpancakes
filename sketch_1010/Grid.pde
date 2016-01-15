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
  
 } 
 
 //void test(int row,int col){
  //gAry[row][col]=1;
 //}
 //just testing if clear and changecolor work
  
  void display(){
   for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      grid[i][j].display();
    }
  }
}

  // changes the color of the grid if gAry value is not 0, indicating filled position
void changecellcolor(){
  for(int i=0;i<10;i++){
    for(int j=0;j<10;j++){
      if(gAry[i][j]==1){
        grid[i][j].changecolor(color(0));}
        if(gAry[i][j]==0){
          grid[i][j].changecolor(color(209));}
    }
  }
}

  // clears color of grid row if totally filled
void clearRow(int row){
    for(int i=0;i<10;i++){
       gAry[row][i]=0;}
}
  // clears color of grid column if totally filled
void clearCol(int col){
   for(int i=0;i<10;i++){
     gAry[i][col]=0;}
}

  // clears grid values
void clearg(){
  int numrow=0;
  int numcol=0;
  for(int i=0;i<10;i++){
    for(int j=0;j<10;j++){
      if(gAry[i][j]==1){ numrow+=1;}
      if(gAry[j][i]==1){ numcol+=1;}
    }
    if(numrow==10){clearRow(i);}
    if(numcol==10){clearCol(i);}
    numrow=0;
    numcol=0;
  }
}
 
  // converts Processing xcor to 10x10 grid xcor 
  int validX(int x){
   return (x-75)/21; 
  }
  
  // converts Processing ycor to 10x10 grid ycor
  int validY(int y){
    return (y-30)/21;
  }
  
  // changes gAry values (dropping the shape) if the shape is placed on an empty space in the grid
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
    
    // checks if the shape is being dropped inside the grid
    boolean validLocation(int xcor, int ycor){
      if ( (xcor < 10 || xcor >=0) && (ycor<10 || ycor>=0)){
      return true;
    }
    return false;
  }
  
  
}
  
