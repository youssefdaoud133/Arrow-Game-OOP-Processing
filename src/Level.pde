class Level {
  int HideBallons = 0;
  boolean rightClicked = false;
  int stageOfGame = 0;
  int Score = 0;

  Arrow[] FiredArrows = new Arrow[20];
  int NumberOfFiredArrows = 0;
  int RemainingArrows = 20;


  void  loadBackGround(PImage BackgroundImage ) {
    image(BackgroundImage, 0, 0);
  }

  void firedArrow(Arrow[] FiredArrows, Character c1) {
    if (mousePressed) {
      if (mouseButton == RIGHT) {
        c1.ReadySituation();
        rightClicked = true;
      } else if (mouseButton == LEFT && rightClicked && NumberOfFiredArrows < 20) {
        c1.NormalSituation();
        FiredArrows[NumberOfFiredArrows++] = c1.CreateArrow();
        RemainingArrows--;
        rightClicked = false;
      } else {
        c1.NormalSituation();
      }
    } else {
      c1.NormalSituation();
      rightClicked = false;
    }
  }

  void displayScore() {
    fill(255);
    textSize(32);
    text("Score: " + Score, 650, 490, 180, 40);
    text("Remaining Arrows: " + (20 - NumberOfFiredArrows), 650, 450, 380, 40);
  }

  void poppedBallonLevel1(Arrow[] FiredArrows, RedBallon [] Firedballon) {
    for (int i = 0; i < NumberOfFiredArrows; i++) {
      if (FiredArrows[i].getX()<960) {
        for (int j = 0; j < 15; j++)
        {
          float distance = dist(FiredArrows[i].getX(), FiredArrows[i].getY(), Firedballon[j].getBallonXLevel(), Firedballon[j].getBallonYLevel());
          if (distance < 40 && !Firedballon[j].Hide) {
            Firedballon[j].Hide = true;
            HideBallons++;
            Score = (21 - NumberOfFiredArrows) * HideBallons;
          }
        }
      }
    }
  }
  void poppedYellowBallon(Arrow[] FiredArrows, YellowBallon [] Firedballon) {
    for (int i = 0; i < NumberOfFiredArrows; i++) {
      if (FiredArrows[i].getX()<960) {
        for (int j = 0; j < 3; j++)
        {
          float distance = dist(FiredArrows[i].getX(), FiredArrows[i].getY(), Firedballon[j].getBallonXLevel(), Firedballon[j].getBallonYLevel());
          if (distance < 40 && !Firedballon[j].Hide) {
            Firedballon[j].Hide = true;
            HideBallons++;
            Score = (21 - NumberOfFiredArrows) * HideBallons;
          }
        }
      }
    }
  }
    void poppedRedBallon(Arrow[] FiredArrows, RedBallon[] RedBallonLevel2) {
    for (int i = 0; i < NumberOfFiredArrows; i++) {
      if (FiredArrows[i].getX()<960) {
        for (int j = 0; j < 12; j++)
        {
          float distance = dist(FiredArrows[i].getX(), FiredArrows[i].getY(), RedBallonLevel2[j].getBallonXLevel(),RedBallonLevel2[j].getBallonYLevel());
          if (distance < 40 && !RedBallonLevel2[j].Hide) {
            RedBallonLevel2[j].Hide = true;
            HideBallons++;
            Score = (21 - NumberOfFiredArrows) * HideBallons;
          }
        }
      }
    }
  }

  void updatePositionOfArrow(Arrow[] FiredArrows) {
    // display and update arrow position
    for (int i = 0; i < NumberOfFiredArrows; i++) {
      if (!FiredArrows[i].Hide) {
        FiredArrows[i].display();
        FiredArrows[i].ObjectPosition();
      }
    }
  }

  void setSettingsToDefault() {
    HideBallons = 0;
    rightClicked = false;
    Score = 0;
    FiredArrows = new Arrow[20];
    NumberOfFiredArrows = 0;
    RemainingArrows = 20;
  }
}
