class Level2 extends Level {
  
   
  void loadRedBallonsAndDisplayIt(RedBallon[] RedBallonLevel2,PImage RedBallonPhoto) {


    for (int i = 0; i < RedBallonLevel2.length; i++) {
      if (RedBallonLevel2[i] == null) {
        
        RedBallonLevel2[i] = new RedBallon((i*50)+5,random(height , height + 200));
      }
    

      if (!RedBallonLevel2[i].Hide) {
        RedBallonLevel2[i].UpdateBallonLevel2(); 
      }
       if (!RedBallonLevel2[i].Hide && RedBallonLevel2[i].getBallonYLevel() < (height -170)) {
        RedBallonLevel2[i].displayBallonLevel1(RedBallonPhoto);
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
        Firedballon[i] = new YellowBallon();
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
