class Game {
  //variables
  private boolean Route;
  private boolean Selection = false;
  private int LastScore = 0;
  int stageOfGame = 1;

  Arrow[] FiredArrows = new Arrow[20];

  RedBallon[] Firedballon = new RedBallon[15];

  Utils NewButton = new Utils();
  Character c1;
  PImage BackgroundImage;
  PImage Character1;
  PImage Character2;
  PImage Character3;
  PImage RedBallonPhoto;

  Level1 level1 = new Level1();
  //Methods
  Game() {
    BackgroundImage = loadImage("../background/Background.jpg");
    RedBallonPhoto = loadImage("../balloons/red.png");
    Character1 = loadImage("../characters/ArlekinaCase0.png");
    Character2 = loadImage("../characters/HumanCase0.png");
    Character3 = loadImage("../characters/RevenantCase0.png");
    image(BackgroundImage, 0, 0);
  }

  void setRoute(boolean route) {
    Route = route;
  }
  boolean getRoute() {
    return Route;
  }

  void setSelection(boolean select) {
    Selection = select;
  }
  boolean getSelection() {
    return Selection;
  }



  void Home() {
    //Start-------------------
    NewButton.drawButton("Start", 64, 360, 200, 200, 80);
    if (mousePressed && mouseButton == LEFT && mouseX >= 360 && mouseX <= 560 && mouseY >= 200 && mouseY <= 280) {
      Selection = true;
    }
    //Last score--------------
    NewButton.drawButton("Last Score : " + LastScore, 32, 335, 350, 250, 40);
  }

  void CharcSelect() {


    image(BackgroundImage, 0, 0);
    image(Character1, 275, 80);
    image(Character2, - 25, 80);
    image(Character3, 575, 80);
    NewButton.drawButton("Human", 32, 100, 430, 150, 40);
    NewButton.drawButton("Arlekina", 32, 400, 430, 150, 40);
    NewButton.drawButton("Revenant", 32, 700, 430, 150, 40);
    if (mousePressed && mouseButton == LEFT && mouseX >= 100 && mouseX <= 250 && mouseY >= 430 && mouseY <= 470) {
      Route = false;
      c1 = new Character("Human");
      stageOfGame =1;
    }
    if (mousePressed && mouseButton == LEFT && mouseX >= 400 && mouseX <= 550 && mouseY >= 430 && mouseY <= 470) {
      Route = false;
      c1 = new Character("Arlekina");
      stageOfGame =1;
    }
    if (mousePressed && mouseButton == LEFT && mouseX >= 700 && mouseX <= 850 && mouseY >= 430 && mouseY <= 470) {
      Route = false;
      c1 = new Character("Revenant");
      stageOfGame =1;
    }
  }


  void Start() {
    level1.loadBackGround(BackgroundImage);
    switch (stageOfGame) {
    case 0:
      whenLoseLevel1();
      break;
    case 1:
      implementLevel1();
      break;
    case 2:
      whenWinLevel1();
      break;
    default:
      System.out.println("Invalid option");
      break;
    }
  }



  //check if we consume all arrows

  void whenLoseLevel1() {
    level1.setSettingsToDefaultLevel1(Firedballon);
    Route =true;
    Selection =false;
    stageOfGame = 1;
  }

  void whenWinLevel1() {
    text("Level 1 completed", 400, 210, 300, 100);
    text("Score: " + level1.Score, 650, 490, 180, 40);
  }

  void implementLevel1() {
    c1.UpdateY();
    level1.loadRedBallonsAndDisplayIt(Firedballon, RedBallonPhoto);
    level1.firedArrow(FiredArrows, c1);
    level1.updatePositionOfArrow(FiredArrows);
    level1.displayScore();
    level1.poppedBallon(FiredArrows, Firedballon);
    if ((level1.NumberOfFiredArrows == FiredArrows.length && FiredArrows[FiredArrows.length - 1].getX() > 960) || level1.HideBallons == 15) {
      stageOfGame = (level1.HideBallons == 15) ? 2 : 0;  // win : lose level 1
    } else {
      stageOfGame = 1;
    }
  }
}
