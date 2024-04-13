class YellowBallon extends Ballon {
  
   YellowBallon(float d) {
       setBallonXLevel1(getBallonXLevel1()+d);
  }

  void displayBallonLevel2(PImage YellowBallonPhoto) {
    image(YellowBallonPhoto, getBallonXLevel1(), getBallonYLevel1(), 80, 80);
  }

  void UpdateBallonLevel2() {
    for(float acc = 0.15;acc<=2;acc+=random(0.25,0.75)){
    super.setBallonYLevel1((getBallonYLevel1() - random(1,5)+acc) < - 90 ? 350 : (getBallonYLevel1() - random(1,5)+acc));
  }}
  
}
