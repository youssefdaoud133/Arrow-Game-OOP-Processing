Game NewGame;
void setup() {
  size(960, 540);
  //Objects-----------------------
  NewGame = new  Game();
  NewGame.setRoute(true);
  cursor(HAND);
}

void draw() {
  //Home page------------------ //<>//
  if (NewGame.getRoute()) {
    NewGame.Home();
  }
  //Character selection
  if (NewGame.getSelection()) {
    NewGame.CharcSelect();
  }
  //Start page-----------------
  if (!NewGame.getRoute()) {
    NewGame.Start();
  }
}
