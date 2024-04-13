class YellowBallon extends Ballon {
  
   YellowBallon(float d) {
       setBallonXLevel1(getBallonXLevel1()+d);
  }

  void displayBallonLevel2(PImage YellowBallonPhoto) {
    image(YellowBallonPhoto, getBallonXLevel1(), getBallonYLevel1(), 80, 80);
  }

  void UpdateBallonLevel2() {
    super.setBallonYLevel1((getBallonYLevel1() - random(1,5)) < - 90 ? 350 : (getBallonYLevel1() - random(1,5)));
  }
  
}
