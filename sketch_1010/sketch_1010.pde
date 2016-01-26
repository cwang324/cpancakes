 //<>//
int state;
PImage instru;
PImage startScreen;
PImage score;
PImage instructions; //<>//
//SoundFile file;
Grid g; 
Shape  a1;
Shape  b1;
Shape  c1;
Shape s1 = null;
Buttons start;
Buttons restart;
Buttons pause;
Buttons instruction;
Buttons clear;
Shape a = new ShapeA();

Shape [] shapes = {  new ShapeA(),
                     new ShapeB(),
                     new ShapeC(),
                     new ShapeD(),
                     new ShapeE(),
                     new ShapeF(),
                     new ShapeG(),
                     new ShapeH(),
                     new ShapeI(),
                     new ShapeJ(),
                     new ShapeK(),
                     new ShapeL(),
                     new ShapeM(),
                     new ShapeN(),
                     new ShapeO()
                   };

ArrayList<Shape> GO;
boolean pieceInHand = false;
int regen = 3;
int numShapes=shapes.length;


int cols = 10;
int rows = 10;

    void setup() {
        state = 0;
        size(370,350);
        startScreen = loadImage("startscreen.png");
        score = loadImage("score.png");
        instru = loadImage("instru.png");
        instructions = loadImage("instructions.jpg");
        g = new Grid(10,10);
  
   
    // randomly generating shapes
  
        start = new Buttons(132,200,100,50,color(153,255,51));
        restart = new Buttons(132,200,100,50,color(153,255,51));
        pause = new Buttons(120,20,35,20,color(153,204,204));
        instruction = new Buttons(132,260,100,50,color(204,153,153));
        clear = new Buttons(300,20,35,20,color(204,153,255));
    
        int n = (int) (Math.random()*numShapes);
        a1 = shapes[n].deepClone();
        a1.setXY(90,275);
    
        n = (int) (Math.random()*numShapes);
        b1 = shapes[n].deepClone();
        b1.setXY(160,275);
    
        n = (int) (Math.random()*numShapes);
        c1 = shapes[n].deepClone();
        c1.setXY(240,275);
    
   
  
    }



  
    void draw() {
        if (state==0){
            image(startScreen,0,0,width,height);
            start.display();
            fill(255);
            triangle(170,210,170,240,200,225);
            instruction.display();
            image(instru,165,270,30,30);
            if(instruction.isOver()&& mousePressed){
              image(instructions,75,75,200,290);
            }
            if (start.isOver()&& mousePressed){
              
                state=1;
                
            }
        }
        
        if(state==3){
            background(255);
            fill(204,204,204);
             text("Resume",132,180);
             text("Paused Game",130,70);
            start.display();
            fill(255);
            triangle(170,210,170,240,200,225); 
            if (start.isOver()&& mousePressed){
            state=1;
        }
        }
          
        
        if (state==2){
              background(255);
            fill(204,204,204);
             text("Restart",132,180);
             text("Game Over",130,70);
              restart.display();
              fill(255);
              triangle(170,210,170,240,200,225);
        if (start.isOver()&&mousePressed){
              g.reset();
              state=1;
            }
        }
    
    
      if(state ==1){
          background(255); 
          g.display();

          pause.display();
          fill(255);
          rect(130,25,5,10);
          rect(140,25,5,10);
          if(pause.isOver() && mousePressed){
            state=3;
          }
          
          clear.display();
          fill(255);
          textSize(10);
          text("clear",308,33);
          if(clear.isOver() && mousePressed){
            g.reset();
          }
          
          image(score,150,0,66,50);
          fill(102,204,255);
          textSize(20);
          text(g.score,200,45);
          fill(0);
          
          if (a1.visible){
              a1.display();
          }
          if (b1.visible){
              b1.display();
          }
          if (c1.visible){
              c1.display();
          }
    
  
          a1.dragShape();
          b1.dragShape();
          c1.dragShape();
    
    
    
          if (regen==0){
           
              int n = (int) (Math.random()*numShapes);
              a1 = shapes[n].deepClone();
              a1.setXY(90,275);

              n = (int) (Math.random()*numShapes);
              b1 = shapes[n].deepClone();
              b1.setXY(160,275);
          
              n = (int) (Math.random()*numShapes);
              c1 = shapes[n].deepClone();
              c1.setXY(240,275);
             
              regen=3;
          }
 
          g.clearg();
          if ( endGame() ){
              regen=0;
              state=2;
          }
          
       }
   }



    int num=0;


 //<>//
    private void checkIfAShapeIsSelected () {
        if ( a1.visible  && a1.contains(mouseX, mouseY)) {
          a1.setFollowMouse(true);
          s1 = a1;
          println("\n=========================\nsetting s1 to a1\n  s1 = " + s1 + ", a1 = " + a1 +  "\n=========================\n"); 
          pieceInHand = true;
          println("set pieceInHand to " + pieceInHand );              
        }
        else if ( b1.visible && b1.contains(mouseX, mouseY) ){
          b1.setFollowMouse(true); 
          s1=b1;
          println("\n=========================\nsetting s1 to b1\n  s1 = " + s1 + ", b1 = " + b1 +  "\n=========================\n");
          pieceInHand = true;
          println("set pieceInHand to " + pieceInHand );          
        } 
        else if ( c1.visible && c1.contains (mouseX, mouseY) )  {
          c1.setFollowMouse(true);
          s1=c1;
          println("\n=========================\nsetting s1 to c1\n  s1 = " + s1 + ", c1 = " + c1 +  "\n=========================\n");
          pieceInHand = true;
          println("set pieceInHand to " + pieceInHand );             
        } 
        
    }  


    void mousePressed() {
        if(!endGame()){
            if (!pieceInHand){     
            
                checkIfAShapeIsSelected();             
            }
        } 
    }
  
  
    void mouseReleased() {
        if ( pieceInHand ) {          
            pieceInHand = false;
            println("set pieceInHand to "  + pieceInHand);
            println("switch off shape to follow the mouse" );
            s1.setFollowMouse(false);          
            
            if ( g.validLocation(g.validY(mouseY), g.validX(mouseX))) {
                println("\n================================\n=  about to update the array with the shape. s1 =" + s1 + "\n===========================\n");
                if ( g.dropShape(s1.sAry, g.validY(mouseY), g.validX(mouseX), s1.c, s1.pointValue()) ){ // want to make dropShape a boolean
                    s1.visible=false;
              //file.play();
                    s1 = null;
                    regen-=1;
                }
            } else {                        
                s1.setFollowMouse(false);              
            }          
        }
    }
  
    

          
      
      
    
            
    boolean endGame(){
        int num1=0;
        int num2=0;
        if(a1.visible){
            num1++;
            if(g.gameOver(a1.sAry)){
                num2++;
            }
        }
        if(b1.visible){
            num1++;
            if(g.gameOver(b1.sAry)){
                num2++;
            }
        }
        if(c1.visible){
            num1++;
            if(g.gameOver(c1.sAry)){
                num2++;
            }
        }
        if(num1==num2){
            println("true");
            return true;
        }
        println("false");
        return false;
  }  
  