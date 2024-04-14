class YellowBallon extends Ballon {

  
   YellowBallon() {
       setBallonXLevel(random(320,width-70));
  }

  void displayYellowBallonLevel2(PImage YellowBallonPhoto) {
    image(YellowBallonPhoto, getBallonXLevel(), getBallonYLevel(), 80, 80);
  }

  void UpdateYellowBallonLevel2() {  
    for(float acc = 0.15;acc<=2;acc+=random(1.8,2)){
    super.setBallonYLevel((getBallonYLevel() - random(1,7)+acc) < - 90 ? 350 : (getBallonYLevel() - random(1,7)+acc));
    
    
  }

    
}
}
