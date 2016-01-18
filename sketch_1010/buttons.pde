class Buttons { 
    int x;
    int y;
    int w;
    int h;
    
    Buttons ( int xa,int ya,int wn,int hn ) {
        x = xa;
        y = ya;
        w = wn;
        h = hn;
    }
    
    boolean isover() {
        if ( mouseX >= x  && mouseX <= x+w  && mouseY >=y  && mouseY <= y+h ) {
            return true;
        }
      else{return false;}
    }
    
    void display() {
        stroke(255);
        fill(162);
        rect(x,y,w,h);
    }
}