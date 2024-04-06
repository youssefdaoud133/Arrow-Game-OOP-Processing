Game NewGame;
void setup(){
  size(960,540);
  //Objects-----------------------
  NewGame = new  Game();
  NewGame.setRoute(true);
   cursor(HAND);
}

void draw(){
  //Home page------------------
  if(NewGame.getRoute()){
    NewGame.Home();
  }
  
  //Start page-----------------
  if(!NewGame.getRoute()){
    NewGame.Start();
  }
  
}
