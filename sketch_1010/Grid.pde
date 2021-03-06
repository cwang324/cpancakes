class Grid {
    int row, col; 
    Cell[][] grid;
    int[][] gAry;
    int score;
    
    Grid ( int row, int col ) {
        this.row = row;
        this.col = col;
        score=0;
        grid = new Cell[row][col];
        reset();
    } 

    void reset(){
        for ( int i = 0; i < row; i++ ) {
            for ( int j = 0; j < col; j++ ) {
            grid[i][j] = new Cell( i, j, j*21+75, i*21+50, 20, 20, 4, color(209) );                
            }
        }
        gAry = new int[10][10]; 
        score=0;
    }
  
    void display() {
        for (int i = 0; i < row; i++) {
            for (int j = 0; j < col; j++) {
                grid[i][j].display();              
            }
        }
    }


    // clears color of grid row if totally filled
    void clearRow(int row){
        for(int i=0;i<10;i++){
            gAry[row][i]=0;
            grid[row][i].changeColor(color(209));
        }
    }
        
    // clears color of grid column if totally filled
    void clearCol(int col){
        for(int i=0;i<10;i++){
            gAry[i][col]=0;
            grid[i][col].changeColor(color(209));
        }
    }

    // clears grid values
    void clearg(){
        int numrow=0;
        int numcol=0;
        for(int i=0;i<10;i++){
            for(int j=0;j<10;j++){
                if(gAry[i][j]>0){ numrow+=1; }
                if(gAry[j][i]>0){ numcol+=1; }
            }
        if(numrow==10){
          
            clearRow(i); 
            score+=10;
            
        } 
        
        if(numcol==10){
          
            clearCol(i); 
            score+=10;
            
        }
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
        } else {
            return -1;}
    }

    int convertY(int y){
        if(y>=50){
            int colNum=0;
            for(int i=y;i>=50;i-=21){ colNum+=1; }
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
        return (y-50)/21;
      }
      
      
    // checks if the drop location cell[x][y] can fit a new shape represented by int[][] ary  
    boolean isValidDropLocation(int x, int y, int[][] ary ) {
        // checks if in grid
        if (((x+ary.length-1)<10  && x>=0) && ((y+ary[0].length-1)<10 && y>=0)) {          
            // checks if in empty space in grid
            for (int row=0; row < ary.length; row++){
                for  (int col=0; col<ary[0].length; col++){
                    if (!(ary[row][col]==0 || gAry[x+row][y+col]==0)) {
                        return false;
                    }
                }
            }
            return true;
        }
        else {
            return false;
        }    
    }  
    
      
    // changes gAry values (dropping the shape) if the shape is placed on an empty space in the grid
    boolean dropShape(int[][] ary, int x, int y, color c, int pointVal) {
        
          //println ("\n=======================\nGrid.dropShape() method. input argument ary = " + ary  + "\n=======================\n");
        
          
          
         
          
          if ( !isValidDropLocation(x, y, ary) ) {
              return false;
          }    
          
        
          
          // changing values in gAry
          for (int row=0; row < ary.length; row++) {        
              for  (int col=0; col<ary[row].length; col++) {            
                  int i = row+x;
                  int j = col+y;
                  //println("dropShape() updating grid[" + i + "," + j + "] to color 0");
                  gAry[row+x][col+y]+=ary[row][col];
                  if (gAry[row+x][col+y]>0 && grid[row+x][col+y].currentColor==color(209)){
                      grid[row+x][col+y].changeColor(c); 
                      
                  }
              }
          }
          score+=pointVal;
          println("After changing gAry " + pointVal);
          printArray(gAry);  
          return true;
    }
  
    
    public void printArray(int[][] xArray)  {
        for (int i = 0; i < xArray.length; i++) {
          for (int j = 0; j < xArray[i].length; j++) {
            print (xArray[i][j]);
            if (j < xArray[i].length-1) {
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
  


    boolean gameOver(int[][] ary) {
        for(int i=0;i<10;i++) {
            for(int j=0;j<10;j++) {
                if (  gAry[i][j] == 0 ) {
                    if ( isValidDropLocation(i, j, ary ) ){
                          return false;
                    }  
                }
            }
        }
        return true;        
    }
  
    
}
  