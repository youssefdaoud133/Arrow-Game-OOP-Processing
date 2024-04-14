class Level2 extends Level {
  
    float[] initialPositions = new float[12]; // Store initial positions for red balloons
   
  void loadRedBallonsAndDisplayIt(RedBallon[] RedBallonLevel2,PImage RedBallonPhoto) {
    if (initialPositions[0] == 0) { // Check if initial positions are set
      // Set random initial positions for each red balloon
      for (int i = 0; i < initialPositions.length; i++) {
       initialPositions[i] = random(height + 100, height + 300);
      }
    }

    for (int i = 0; i < RedBallonLevel2.length; i++) {
      if (RedBallonLevel2[i] == null) {
        RedBallonLevel2[i] = new RedBallon(i*50+5,initialPositions[i]);
      }

      if (!RedBallonLevel2[i].Hide) {
      RedBallonLevel2[i].displayBallonLevel1(RedBallonPhoto);
        RedBallonLevel2[i].UpdateBallonLevel2( ); 
      }
    }
  }
   
  void setREDSettingsToDefaultLevel2(RedBallon[] RedBallonLevel2){
    super.setSettingsToDefault();
    for (int i = 0; i < RedBallonLevel2.length; i++) {
        RedBallonLevel2[i] = null; // Set each element to null
    }
  
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  void loadYellowBallonsAndDisplayIt(YellowBallon [] Firedballon, PImage YellowBallonPhoto) {
    randomSeed(30);
    for (int i = 0; i < Firedballon.length; i++)
    {
      if (Firedballon[i] == null) {
        float randomX = random(width/2,900);
        println(randomX);
        Firedballon[i] = new YellowBallon(randomX);
      }
      
      if (!Firedballon[i].Hide) {
        Firedballon[i].displayYellowBallonLevel2(YellowBallonPhoto);
        Firedballon[i].UpdateYellowBallonLevel2();
      }  
    }
  }
     
  void setYellowSettingsToDefaultLevel2(YellowBallon [] Firedballon){
    super.setSettingsToDefault();
    for (int i = 0; i < Firedballon.length; i++) {
        Firedballon[i] = null; // Set each element to null
    }    
  } 
}
