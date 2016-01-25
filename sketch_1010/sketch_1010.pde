//import processing.sound.*; //<>// //<>//
int state;
PImage startScreen;
PImage score;
//SoundFile file;
Grid g; //<>// //<>// //<>// //<>//
Shape  a1;
Shape  b1;
Shape  c1;
Shape s1 = null;
Buttons start;
Buttons restart;
Shape a = new ShapeA();

Shape [] shapes = { new ShapeA(),
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
        g = new Grid(10,10);
  
   
    // randomly generating shapes
  
        start = new Buttons(132,200,100,50,color(153,255,51));
        restart = new Buttons(132,200,100,50,color(153,255,51));
    
    
        int n = (int) (Math.random()*numShapes);
        //a1 = shapes[n].deepClone();
        //a1.setXY(90,275);
        a1 = new ShapeN(90,275);
    
        n = (int) (Math.random()*numShapes);
        b1 = shapes[n].deepClone();
        b1.setXY(160,275);
    
        n = (int) (Math.random()*numShapes);
        c1 = shapes[n].deepClone();
        c1.setXY(240,275);
    
   
        //file = new SoundFile(this, "Whoosh.mp3");
    }



  
    void draw() {
        if (state==0){
            image(startScreen,0,0,width,height);
            start.display();
            fill(255);
            triangle(170,210,170,240,200,225);
            
            if (start.isover()&& mousePressed){
              
                state=1;
                
            }
        }
        
        if (state==2){
              restart.display();
              fill(255);
              triangle(170,210,170,240,200,225);
        if (start.isover()&&mousePressed){
              g.reset();
              state=1;
            }
        }
    
    
      if(state ==1){
          background(255); 
          g.display();
  //if(b1.isover()&&mousePressed){
  //  grid[2][3].changecolor();
  //}
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
    // no need
    //g.changeCellColor();
    
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
    //mousePressed();
    //println(mouseX + ", " + mouseY);
    //println(g.validX(mouseX) + ", " + g.validY(mouseY));
    //println("g.gAry (0,0) value " + g.gAry[0][0]);
  
    //println((int)(Math.random()*3));
   //if ( s1 != null) {
   //    println("s1.length= " + s1.sAry.length ); 
   //    println("a1 =" + a1.sAry.length);  
   //    println(s1);
   // }
          g.clearg();
          if ( endGame() ){
              regen=0;
              state=2;
          }
          
       }
   }



    int num=0;



    private void checkIfAShapeIsSelected () {
        if ( a1.visible  && a1.contains(mouseX, mouseY)) {
          a1.setFollowMouse(true);
          s1 = a1;
          println("\n=========================\nsetting s1 to a1\n  s1 = " + s1 + ", a1 = " + a1 +  "\n=========================\n"); 
          pieceInHand = true;
          println("set pieceInHand to " + pieceInHand );              
        }
        else if ( b1.visible && b1.contains(mouseX, mouseY) ){
          b1.setFollowMouse(true); //<>// //<>//
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
      //else if (pieceInHand && g.validLocation(g.validX(mouseX), g.validY(mouseY))) {
      //    println("\n================================\n=  about to update the array with the shape. s1 =" + s1 + "\n===========================\n");
      //    g.dropShape(s1.sAry, g.validX(mouseX), g.validY(mouseY)); // want to make dropShape a boolean
      //    s1.visible=false;
      //    s1.setFollowMouse(false);
      //    pieceInHand = false;
      //} else if (pieceInHand){
      //    println("switch off shape to follow the mouse" );          
      //    s1.setFollowMouse(false);
      //    //s1 = null;
      //    pieceInHand = false;
      //}
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
            if(g.GameOver(a1.sAry)){
                num2++;
            }
        }
        if(b1.visible){
            num1++;
            if(g.GameOver(b1.sAry)){
                num2++;
            }
        }
        if(c1.visible){
            num1++;
            if(g.GameOver(c1.sAry)){
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
  