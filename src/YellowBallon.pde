class YellowBallon extends Ballon {
  float y = random(-500, -50);
  float z = random(0, 20);
  float ySpeed = map(z, 0, 20, 1, 5);
  float InitialSpeed = ySpeed;
  float yGravity = map(z, 0, 20, 0, 0.2);
  
   YellowBallon() {
       setBallonXLevel(random(320,width-70));
  }

  void displayYellowBallonLevel2(PImage YellowBallonPhoto) {
    image(YellowBallonPhoto, getBallonXLevel(), getBallonYLevel(), 80, 80);
  }

  void UpdateYellowBallonLevel2() {  
    for(float acc = 0.15;acc<=2;acc+=random(0.25,0.75)){
    super.setBallonYLevel((getBallonYLevel() - random(1,7)+acc) < - 90 ? 350 : (getBallonYLevel() - random(1,7)+acc));
    
    
  }
    //float newY = (getBallonYLevel() - ySpeed);
    //super.setBallonYLevel(newY < -90 ? 350: newY);
    //if(newY == 350)
    //ySpeed += yGravity;
    
}
}
