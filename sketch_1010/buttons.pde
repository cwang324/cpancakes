class Buttons { 
int x;
int y;
int w;
int h;
color colour;
    
Buttons ( int xa,int ya,int wn,int hn, color c) {
    x = xa;
    y = ya;
    w = wn;
    h = hn;
    colour=c;
  }
    
boolean isover() {
    if ( mouseX >= x  && mouseX <= x+w  && mouseY >=y  && mouseY <= y+h ) {
      return true;
    }
  else{return false;}
}

void display() {
    stroke(255);
    fill(colour);
    rect(x,y,w,h,10);
  }
}