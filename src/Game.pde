class Game {
  //variables
   private boolean Route;
   private boolean level1;
   private boolean level2;
   private int LastScore = 0;
   private int CurrentScore;
   PImage BackgroundImage;
   PFont font;
   
   //Methods
   
   Game(){
      BackgroundImage = loadImage("../background/Background.jpg");
      font = createFont("../fonts/KnightWarrior-w16n8.otf",1);
      image(BackgroundImage,0,0);
   }
   
   void setRoute(boolean route){
     Route = route;
   }
   
   boolean getRoute(){
     return Route;
   }
   
   void setCurrentScore(int score){
        CurrentScore = score;
   }
   
   int getCurrentScore(){
     return CurrentScore;
   }
   
  void Home(){
    //title
      fill(212, 145, 69);
      textFont(font,90);
      text("Arrow-Bow",305,260);
      //Start----------------------------
      if(mousePressed && mouseButton == LEFT && mouseX >= 415 && mouseX <= 535 && mouseY >= 310 && mouseY <= 360){
        Route = false;
        level1 = true;
      }
      fill(212, 145, 69);
      textFont(font,40);
      text("Start",420,350);
      //Last score 
      
      
  }
  void Start(){
    image(BackgroundImage,0,0);
  }
}
