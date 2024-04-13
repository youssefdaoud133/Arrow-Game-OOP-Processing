class Level2 extends Level {

  void loadRedBallonsAndDisplayIt(YellowBallon[] Firedballon, PImage YellowBallonPhoto) {
    randomSeed(30);
    for (int i = 0; i < Firedballon.length; i++) {
      if (Firedballon[i] == null) {
        float x = random(width - 250);
        println(x);       
        Firedballon[i] = new YellowBallon(x);
      }
      
      if (!Firedballon[i].Hide) {
        Firedballon[i].displayBallonLevel2(YellowBallonPhoto);
        Firedballon[i].UpdateBallonLevel2();
      }  
    }
  }

  void setSettingsToDefaultLevel2(YellowBallon[] Firedballon) {
    super.setSettingsToDefault();
    for (int i = 0; i < Firedballon.length; i++) {
      Firedballon[i] = null; // Set each element to null
    }
  }
}
