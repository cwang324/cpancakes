class Grid {
    int row, col;
 
    Cell[][] grid;
    int[][] gAry;

    Grid(int row, int col) {
        this.row = row;
        this.col = col;
        grid = new Cell[cols][rows];
        
        for (int i = 0; i < cols; i++) {
            for (int j = 0; j < rows; j++) {
                // Initialize each object
                // rwang 
                //grid[i][j] = new Cell(i*21+75,j*21+30,20,20,color(209));
                // pass in row and col as well
                grid[i][j] = new Cell(i, j, i*21+75,j*21+30,20,20,color(209));
            }
        }
        gAry = new int[10][10]; 
    } 

  
    void display() {
       print("\n !!!!!!!!!!!!!!!!!!!!\ndisplay the whole grid\n");
        for (int i = 0; i < cols; i++) {
            for (int j = 0; j < rows; j++) {
               print("display grid[" + i + "][" + j + "]");
               grid[i][j].display();               
            }
            println();
        }
    }


    // changes the color of the grid if gAry value is not 0, indicating filled position
    void changeCellColor() {
        for(int i=0;i<10;i++) {
            for(int j=0;j<10;j++) {
                if(gAry[i][j]==1) {
                    grid[i][j].changeColor(color(0));
                }
                
                if (gAry[i][j]==0) {
                    grid[i][j].changeColor(color(209));
                }
            }
        }
    }


    // clears color of grid row if totally filled
    void clearRow(int row){
        for(int i=0;i<10;i++){
            gAry[row][i]=0;
        }
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
    if(numrow==9){clearRow(i);}
    if(numcol==9){clearCol(i);}
    numrow=0;
    numcol=0;
  }
}

//converts mouse x and mouse y to cell number
int convertX(int x){
  if(x>=75){
    int rowNum=0;
    for(int i=x;i>=75;i-=21){
      rowNum+=1;
    }
  return rowNum;
  }else{
    return -1;}
}

int convertY(int y){
   if(y>=30){
     int colNum=0;
     for(int i=y;i>=30;i-=21){
       colNum+=1;
     }
   return colNum;
   }else{
     return -1;}
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
  boolean dropShape(int[][] ary, int x, int y) {
    
      println ("\n=======================\nGrid.dropShape() method. input argument ary = " + ary  + "\n=======================\n");
    
      // checks if in grid
      if ((x<10 && x>=0) && (y<10 && y>=0)) {
      
          // checks if in empty space in grid
          for (int row=0; row < ary.length; row++){
              for  (int col=0; col<ary[0].length; col++){
                  if (!(ary[row][col]==0 || gAry[x+row][y+col]==0)) {
                      return false;
                  }
              }
          }
      } 
      
      println("print shape array");
      printArray(ary);  
      
      
      // before changing gAry
      println("Before changing gAry");
      printArray(gAry);  
      
      // changing values in gAry
      for (int row=0; row < ary.length; row++) {        
          for  (int col=0; col<ary[row].length; col++) {         
              gAry[row+x][col+y]+=ary[row][col];
          }
      }

      println("After changing gAry");
      printArray(gAry);  
      return true;
  }
  
    
   public void printArray(int[][] xArray)  {
       for ( int i = 0; i < xArray.length; i++) {
           for ( int j = 0; j < xArray[i].length; j++ ) {
               print ( xArray[i][j] );
               if ( j < xArray[i].length-1 ) {
                   print(", ");
               }                     
           }
           println();
       }
   }    
    
    
    
  // checks if the shape is being dropped inside the grid
  boolean validLocation(int xcor, int ycor) {
      if ( (xcor < 10 && xcor >=0) && (ycor<10 && ycor>=0)){
         return true;
      }
      return false;
  }
  
}
  