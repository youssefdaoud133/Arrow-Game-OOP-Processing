class Game {
  //variables
   private boolean Route;
   private boolean level1;
   private boolean level2;
   PImage photo;
   PFont font;
   
   //Methods
   void setRoute(boolean s){
     Route = s;
   }
   
   boolean getRoute(){
     return Route;
   }
   
  void Home(){
      font = createFont("../fonts/KnightWarrior-w16n8.otf",1);
    //New Game
      fill(212, 145, 69);
      textFont(font,90);
      text("New Game",305,260);
    
      //Level 1----------------------------
      if(mousePressed && mouseButton == LEFT && mouseX >= 415 && mouseX <= 535 && mouseY >= 310 && mouseY <= 360){
        Route = false;
        level1 = true;
      }
      fill(212, 145, 69);
      textFont(font,40);
      text("level 1",420,350);
    
      //level 2------------------------------
      if(mousePressed && mouseButton == LEFT && mouseX >= 415 && mouseX <= 535 && mouseY >= 400 && mouseY <= 450){
        Route = false;
        level2 = true;
      }
      fill(212, 145, 69);
      textFont(font,40);
      text("level 2",420,435);
  }
  void Start(){
    
  }
}
