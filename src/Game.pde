class Game {
  //declaration
  PImage photo;
  PFont font;
  
  //variables
   private boolean Status;
   private boolean level1;
   private boolean level2;
   
   //Methods
   void setRoute(boolean s){
     Status = s;
   }
   
   boolean getRoute(){
     return Status;
   }
   
  void Home(){
      font = createFont("../fonts/KnightWarrior-w16n8.otf",1);
    //New Game
      fill(212, 145, 69);
      textFont(font,90);
      text("New Game",305,260);
    
      //Level 1----------------------------
      if(mousePressed && mouseButton == LEFT && mouseX >= 415 && mouseX <= 535 && mouseY >= 310 && mouseY <= 360){
        Status = false;
        level1 = true;
      }
      fill(212, 145, 69);
      textFont(font,40);
      text("level 1",420,350);
    
      //level 2------------------------------
      if(mousePressed && mouseButton == LEFT && mouseX >= 415 && mouseX <= 535 && mouseY >= 400 && mouseY <= 450){
        Status = false;
        level2 = true;
      }
      fill(212, 145, 69);
      textFont(font,40);
      text("level 2",420,435);
  }
  void Start(){}
}
