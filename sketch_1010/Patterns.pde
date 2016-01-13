class Patterns{
 int col;
 int row;

 
 Patterns(int column, int rows){
   col=column;
   row=rows;
 }
 
 
   void makePattern(int numPattern){
     if (numPattern==1){
       new Cell(col,row);
     }       
      
    }
    
    void display() {
    stroke(255);
    fill(50);
  //  rect(x,y,w,h); 
    }
  }

          
