//declaration
PImage photo;
Game NewGame;
void setup(){
  size(960,540);
  photo = loadImage("../background/Background.jpg");
  //Objects-----------------------
  NewGame = new  Game();
  NewGame.setRoute(true);
}

void draw(){
  //constructors---------------
  image(photo,0,0);
  
  //Home page------------------
  if(NewGame.getRoute()){
    NewGame.Home();
  }
  
  //Start page-----------------
  if(!NewGame.getRoute()){
    NewGame.Start();
  }
  
}
