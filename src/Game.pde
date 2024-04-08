class Game {
  //variables
   private boolean Route;
   private boolean Selection = false;
   private int LastScore = 0;
   private int CurrentScore;
  // New variables to track the state of the mouse buttons
  private boolean rightClicked = false;
  private boolean leftClicked = false;
  
  //suhila**************************************
     Arrow[] FiredArrows=new Arrow[20];
     int NumberOfFiredArrows=0;
 //*********************************************
// void calcnumber() {
//    if (mouseButton == RIGHT){
//   firedArrows[numFiredArrows] = new Arrow(, );
// numFiredArrows++;
//     } 
// text("Fired Arrows: " + numFiredArrows, 10, 20);
//     }
   Utils NewButton = new Utils();
   Character c1;
   PImage BackgroundImage;
   PImage Character1;
   PImage Character2;
   PImage Character3;
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
   
   void setSelection(boolean select){
     Selection = select;
   }
   boolean getSelection(){
     return Selection;
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
        Selection = true;
      }
      //Last score--------------
      NewButton.drawButton("Last Score : "+LastScore,32,335,350,250,40);
    }
    
  void CharcSelect(){
     Character1 = loadImage("../characters/ArlekinaCase0.png");
     Character2 = loadImage("../characters/HumanCase0.png");
     Character3 = loadImage("../characters/RevenantCase0.png");
     image(BackgroundImage,0,0);
     image(Character1,275,80);
     image(Character2,-25,80);
     image(Character3,575,80);
     NewButton.drawButton("Human",32,100,430,150,40);
     NewButton.drawButton("Arlekina",32,400,430,150,40);
     NewButton.drawButton("Revenant",32,700,430,150,40);
     if(mousePressed && mouseButton == LEFT&& mouseX >= 100 && mouseX <= 250 && mouseY >= 430 && mouseY <= 470){
        Route = false;
         c1 = new Character("Human");
       }
     if(mousePressed && mouseButton == LEFT&& mouseX >= 400 && mouseX <= 550 && mouseY >= 430 && mouseY <= 470){
        Route = false;
         c1 = new Character("Arlekina");
       }
     if(mousePressed && mouseButton == LEFT&& mouseX >= 700 && mouseX <= 850 && mouseY >= 430 && mouseY <= 470){
        Route = false;
         c1 = new Character("Revenant");
       }
    }
    
   void Start(){
     image(BackgroundImage,0,0);
     c1.UpdateY();
      // check if we consume all arrows
      if(NumberOfFiredArrows==20){}
      else{
      if(mousePressed && mouseButton == RIGHT) {
        c1.ReadySituation();
        //c1.setCase(true);
        rightClicked = true; // Set flag to true when right-clicked
      }
      else {
        c1.NormalSituation();
        //rightClicked = false; // Reset flag when not right-clicked
      }
      // Check for left-click and if right-click was previously done
      if(mousePressed && mouseButton == LEFT) {
       // c1.setCase(false);
        leftClicked = true; // Reset flag after action is performed
      }
      // when arrow shoul fired
      if(rightClicked && leftClicked) {
         FiredArrows[NumberOfFiredArrows]=(c1.CreateArrow());
         NumberOfFiredArrows++;
        // Reset both flags after action is performed
        rightClicked = false;
        leftClicked = false;
      }else if (!mousePressed) {
        // Reset leftClicked if the mouse is not pressed
        rightClicked = false;
        leftClicked = false;
      }
      // display and update arrow position
        for(int i=0; i<NumberOfFiredArrows;i++){
        FiredArrows[i].display();
        FiredArrows[i].ObjectPosition();
      
        }
      }
    }   
}
