class Cell {
  // A cell object knows about its location in the grid 
  // as well as its size with the variables x,y,w,h
  float x,y;   
  float w,h;   
  color currentcolor;


  Cell(float tempX, float tempY, float tempW, float tempH, color colorc) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    currentcolor=colorc;
  } 
  
  Cell(float tempX, float tempY){
    x = tempX;
    y = tempY;
    w = 20;
    h = 20;
    currentcolor = 50;
  }
  

  void changecolor(){
    currentcolor=color(50);
  }


  void display() {
    stroke(255);
    fill(currentcolor);
    rect(x,y,w,h); 
  }
}
