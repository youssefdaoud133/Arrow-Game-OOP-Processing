class RedBallon extends Ballon {
  RedBallon(int d) {
    setBallonXLevel1(getBallonXLevel1() + d);
  }
   
  RedBallon(int d, float initialY) {
    setBallonXLevel1(getBallonXLevel1() + d);
     setBallonYLevel1(initialY);
  }

  void displayBallonLevel1(PImage RedBallonPhoto) {
    image(RedBallonPhoto, getBallonXLevel1(), getBallonYLevel1(), 80, 80);
  }

  void UpdateBallonLevel2() {
   
    setBallonYLevel1(getBallonYLevel1() - 2);

    // Check if the RedBallon has moved above the top of the screen
    if (getBallonYLevel1() < -100) {
      // Reset the RedBallon's position to appear at the bottom of the screen
      setBallonYLevel1(random(-90, height + 300)); // Random position below the screen
    }
  }

    void UpdateBallonLevel1() {
     super.setBallonYLevel1((getBallonYLevel1() -2 ) < - 90 ? 350 : (getBallonYLevel1() - 2));
  } 
  
  }
