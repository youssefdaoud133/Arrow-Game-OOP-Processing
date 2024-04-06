class Game {
  Utils NewButton = new Utils();
  //variables
   private boolean Route;
   private int LastScore = 0;
   private int CurrentScore;
   PImage BackgroundImage;
   //Methods
   Game(){
      BackgroundImage = loadImage("../background/Background.jpg");
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
      //Start-------------------
      NewButton.drawButton("Start",64,360,200,200,80);
      if(mousePressed && mouseButton == LEFT && mouseX >= 360 && mouseX <= 560 && mouseY >= 200 && mouseY <= 280)
        Route = false;
      
      //Last score--------------
      NewButton.drawButton("Last Score : "+LastScore,32,335,350,250,40);
    }
  void Start(){
    image(BackgroundImage,0,0);
  }
}
