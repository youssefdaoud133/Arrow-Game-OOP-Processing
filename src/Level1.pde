class Level1 extends Level {


  void loadRedBallonsAndDisplayIt(RedBallon [] Firedballon, PImage RedBallonPhoto) {
    for (int i = 0; i < Firedballon.length; i++)
    {
      if (Firedballon[i] == null) {
        Firedballon[i] = new RedBallon(i * 40);
      }
      
      if (!Firedballon[i].Hide) {
        Firedballon[i].displayBallonLevel1(RedBallonPhoto);
        Firedballon[i].UpdateBallonLevel1();
      }  
    }
  }
     
  void setSettingsToDefaultLevel1(RedBallon [] Firedballon){
    super.setSettingsToDefault();
    for (int i = 0; i < Firedballon.length; i++) {
        Firedballon[i] = null; // Set each element to null
    }
    println("d");
    
    
    
  }
  
  
}
