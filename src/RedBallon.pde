class RedBallon extends Ballon {
  RedBallon(int d) {
    setBallonXLevel(getBallonXLevel() + d);
  }
   
  RedBallon(int d, float initialY) {
    setBallonXLevel(getBallonXLevel() + d);
     setBallonYLevel(initialY);
  }

  void displayBallonLevel1(PImage RedBallonPhoto) {
    image(RedBallonPhoto, getBallonXLevel(), getBallonYLevel(), 80, 80);
  }

  void UpdateBallonLevel2() {
    this.UpdateBallonLevel1();
  }

    void UpdateBallonLevel1() {
     super.setBallonYLevel((getBallonYLevel() -2 ) < - 90 ? 350 : (getBallonYLevel() - 2));
  } 
  
  }
