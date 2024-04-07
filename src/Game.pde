class Game {
  Utils NewButton = new Utils();
  //variables
   private boolean Route;
   private int LastScore = 0;
   private int CurrentScore;
  // New variables to track the state of the mouse buttons
  private boolean rightClicked = false;
  private boolean leftClicked = false;
  //suhila
      
  //
   
   Character c1;
   
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
      if(mousePressed && mouseButton == LEFT && mouseX >= 360 && mouseX <= 560 && mouseY >= 200 && mouseY <= 280){
        Route = false;
         c1 = new Character("Human");
      }
      
      //Last score--------------
      NewButton.drawButton("Last Score : "+LastScore,32,335,350,250,40);
    }
  
 void Start(){
   c1.UpdateY();

    image(BackgroundImage,0,0);
    
    if(mousePressed && mouseButton == RIGHT) {
      c1.ReadySituation();
      c1.setCase(true);
      rightClicked = true; // Set flag to true when right-clicked
    }
    else {
      c1.NormalSituation();
      //rightClicked = false; // Reset flag when not right-clicked
    }
    
    // Check for left-click and if right-click was previously done
    if(mousePressed && mouseButton == LEFT) {
      c1.setCase(false);
      leftClicked = true; // Reset flag after action is performed
    }
    if(rightClicked && leftClicked) {
      /********************/
      //Suhila
       
     
      /********************/
      // Reset both flags after action is performed
      rightClicked = false;
      leftClicked = false;
    } else if (!mousePressed) {
      // Reset leftClicked if the mouse is not pressed
      rightClicked = false;
      leftClicked = false;
    }
    

    

   
   
  }
  
}
