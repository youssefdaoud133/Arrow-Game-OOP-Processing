class YellowBallon extends Ballon {
  
   YellowBallon(float d) {
       setBallonXLevel(d);
  }

  void displayYellowBallonLevel2(PImage YellowBallonPhoto) {
    image(YellowBallonPhoto, getBallonXLevel(), getBallonYLevel(), 80, 80);
  }

  void UpdateYellowBallonLevel2() {
    for(float acc = 0.15;acc<=2;acc+=random(0.25,0.75)){
    super.setBallonYLevel((getBallonYLevel() - random(1,5)+acc) < - 90 ? 350 : (getBallonYLevel() - random(1,5)+acc));
  }}
}
