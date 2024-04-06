void settings(){
  size(960,540);
}
 Game NewGame;
void setup(){
   NewGame = new  Game();
   NewGame.setRoute(true);
}

void draw(){
  if(NewGame.getRoute()){
    NewGame.Home();
  }
  
  if(!NewGame.getRoute()){
    NewGame.Start();
  }


}
