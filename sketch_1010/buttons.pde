class Buttons{ 
    
    boolean isover(){
      if(mouseX>=150&&mouseX<=200&&mouseY>=250&&mouseY<=270){
        return true;
      }
      else{return false;}
    }
    
    void display(){
      stroke(255);
      fill(162);
      rect(150,250,50,20);
    }
       
}