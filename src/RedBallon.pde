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
   
    setBallonYLevel(getBallonYLevel() - 2);

    // Check if the RedBallon has moved above the top of the screen
    if (getBallonYLevel() < -100) {
      // Reset the RedBallon's position to appear at the bottom of the screen
      setBallonYLevel(random(-90, height + 300)); // Random position below the screen
    }
  }

    void UpdateBallonLevel1() {
     super.setBallonYLevel((getBallonYLevel() -2 ) < - 90 ? 350 : (getBallonYLevel() - 2));
  } 
  
  }
