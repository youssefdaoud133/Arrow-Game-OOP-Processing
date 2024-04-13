class Level2 extends Level {
  
    float[] initialPositions = new float[12]; // Store initial positions for red balloons
    float balloonSpeed = 2; // Constant speed for balloons

  void loadRedBallonsAndDisplayIt(RedBallon[] RedBallonLevel2,PImage RedBallonPhoto) {
    if (initialPositions[0] == 0) { // Check if initial positions are set
      // Set random initial positions for each red balloon
      for (int i = 0; i < initialPositions.length; i++) {
       // initialPositions[i] = random(10, 600); // Adjust range as needed
       initialPositions[i] = random(2,7);
      }
    }

    for (int i = 0; i < RedBallonLevel2.length; i++) {
      if (RedBallonLevel2[i] == null) {
        RedBallonLevel2[i] = new RedBallon(i*50+5);
      }

      if (!RedBallonLevel2[i].Hide) {
      RedBallonLevel2[i].displayBallonLevel1(RedBallonPhoto);
        RedBallonLevel2[i].UpdateBallonLevel2( balloonSpeed  ); // Pass the balloon speed
      }
    }
  }
   
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  void loadRedBallonsAndDisplayIt(YellowBallon [] Firedballon, PImage YellowBallonPhoto) {
    randomSeed(30);
    for (int i = 0; i < Firedballon.length; i++)
    {
      if (Firedballon[i] == null) {//x =60    y=60
        float y = random(x,x+70);
        x = y;
        println(x);
        Firedballon[i] = new YellowBallon(x);
      }
      
      if (!Firedballon[i].Hide) {
        Firedballon[i].displayBallonLevel2(YellowBallonPhoto);
        Firedballon[i].UpdateBallonLevel2();
      }  
    }
  }
     
  void setSettingsToDefaultLevel2(YellowBallon [] Firedballon){
    super.setSettingsToDefault();
    for (int i = 0; i < Firedballon.length; i++) {
        Firedballon[i] = null; // Set each element to null
    }
  
    
    
    
  }
  
  
}
