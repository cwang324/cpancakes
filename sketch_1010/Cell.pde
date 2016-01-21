class Cell {
// A cell object knows about its location in the grid 
// as well as its size with the variables x,y,w,h
float x,y;   
float w,h;   
color currentColor;
int row;
int col;


Cell(float tempX, float tempY, float tempW, float tempH, color colorc) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    currentColor=colorc;
  } 

Cell(int row, int col, float tempX, float tempY, float tempW, float tempH, color colorc) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    currentColor=colorc;
    this.row = row;
    this.col = col;
  } 

  
Cell(float tempX, float tempY){
    x = tempX;
    y = tempY;
    w = 20;
    h = 20;
    currentColor = 0;
  }
  

void changeColor(color colorz){
    currentColor=colorz;
  }


void display() {
    stroke(255);
    fill(currentColor);
    rect(x,y,w,h); 
  }
  
public String toString()
  {
    return "cell[" + row +"][" + col + "], x,y,w,h=[" + x + "," + y + "," + w + "," + h + "], color = " + currentColor + "  ";
  }  
  
}