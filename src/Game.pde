class Game {
  //variables
  private boolean Route;
  private boolean Selection = false;
  private int LastScore = 0;
  int stageOfGame = 1;

  Arrow[] FiredArrows = new Arrow[20];

  RedBallon[] FiredballonLevel1 = new RedBallon[15];
  YellowBallon[] FiredYellowBallon = new YellowBallon[3];
  float[] initialPositions = new float[12];
  RedBallon[] RedBallonLevel2 = new RedBallon[12];

  Utils NewButton = new Utils();
  Character c1;
  PImage BackgroundImage;
  PImage Character1;
  PImage Character2;
  PImage Character3;
  PImage RedBallonPhoto;
  PImage YellowBallonPhoto;

  Level1 level1 = new Level1();
  Level2 level2 = new Level2();

  //Methods
  Game() {
    BackgroundImage = loadImage("../background/Background.jpg");
    RedBallonPhoto = loadImage("../balloons/red.png");
    YellowBallonPhoto = loadImage("../balloons/yellow.png");
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
    }
    if (mousePressed && mouseButton == LEFT && mouseX >= 400 && mouseX <= 550 && mouseY >= 430 && mouseY <= 470) {
      Route = false;
      c1 = new Character("Arlekina");
    }
    if (mousePressed && mouseButton == LEFT && mouseX >= 700 && mouseX <= 850 && mouseY >= 430 && mouseY <= 470) {
      Route = false;
      c1 = new Character("Revenant");
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
   
    case 3:
      implementLevel2();
      break;
    case 4:
      whenLoseLevel2();
      break;
    case 5:
      whenWinLevel2();
      break;
    default:
      System.out.println("Invalid option");
      break;
    }
  }



  //check if we consume all arrows
  
  

  void whenLoseLevel1() {
    level1.setSettingsToDefaultLevel1(FiredballonLevel1);
    Route =true;
    Selection =false;
    stageOfGame = 1;
  }

  void whenWinLevel1() {
   level1.setSettingsToDefault();
   NewButton.drawButton("Next", 64, 360, 200, 200, 80);
    if (mousePressed && mouseButton == LEFT && mouseX >= 360 && mouseX <= 560 && mouseY >= 200 && mouseY <= 280) {
      stageOfGame = 3;
    }
    
  }

  void implementLevel1() {
    c1.UpdateY();
    level1.loadRedBallonsAndDisplayIt(FiredballonLevel1, RedBallonPhoto);
    level1.firedArrow(FiredArrows, c1);
    level1.updatePositionOfArrow(FiredArrows);
    level1.displayScore();
    level1.poppedBallonLevel(FiredArrows, FiredballonLevel1);
    if ((level1.NumberOfFiredArrows == FiredArrows.length && FiredArrows[FiredArrows.length - 1].getX() > 960) || level1.HideBallons ==FiredballonLevel1.length ) {
      stageOfGame = (level1.HideBallons == FiredballonLevel1.length) ? 2 : 0 ;  // win : lose level 1
    } else {
      stageOfGame = 1;
    }
  }
  
  void implementLevel2(){
    c1.UpdateY();
    level2.loadYellowBallonsAndDisplayIt(FiredYellowBallon,YellowBallonPhoto);
    level2.loadRedBallonsAndDisplayIt( RedBallonLevel2, RedBallonPhoto);
    level2.firedArrow(FiredArrows, c1);
    level2.updatePositionOfArrow(FiredArrows);
    level2.displayScore(); // 
    level2.poppedBallonLevel(FiredArrows, FiredYellowBallon);
    level2.poppedBallonLevel(FiredArrows, RedBallonLevel2);
    if ((level2.NumberOfFiredArrows == FiredArrows.length && FiredArrows[FiredArrows.length - 1].getX() > 960) || level2.HideBallons ==15) {
      stageOfGame = (level2.HideBallons == 15) ? 5 : 4 ;  // win : lose level 1
    } else {
      stageOfGame = 3;
    }

      
  }
  void whenLoseLevel2() {
    level2.setREDSettingsToDefaultLevel2(RedBallonLevel2);
    level2.setYellowSettingsToDefaultLevel2(FiredYellowBallon);
    stageOfGame = 2;
  }

  void whenWinLevel2() {
    level2.setREDSettingsToDefaultLevel2(RedBallonLevel2);
    level2.setYellowSettingsToDefaultLevel2(FiredYellowBallon);
   NewButton.drawButton("Again", 64, 360, 200, 200, 80);
    if (mousePressed && mouseButton == LEFT && mouseX >= 360 && mouseX <= 560 && mouseY >= 200 && mouseY <= 280) {
      stageOfGame = 0;
  }
}
}
