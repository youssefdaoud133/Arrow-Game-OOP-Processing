   class Character extends Game {
  private float CharacterX = 10;
  private float CharacterY ;
  private float CharacterWidth = 165;
  private float CharacterHeight = 145;
  PImage CharacterImage1;
  PImage CharacterImage2;
  private boolean Case =false;
  
  Character(String TypeOfCharacter){
   CharacterImage1 = loadImage("../characters/"+TypeOfCharacter+"Case0.png");
   CharacterImage2 = loadImage("../characters/"+TypeOfCharacter+"Case1.png");
  }
 
  void setCase(boolean iscase ){
    Case = iscase;
  }
   boolean getcase(){
     return Case;
   }
 
    void NormalSituation(){
      
      image(CharacterImage1, CharacterX, CharacterY-(CharacterHeight/2), CharacterWidth, CharacterHeight);

  } 
        void ReadySituation(){ 
           
          image(CharacterImage2, CharacterX, CharacterY-(CharacterHeight/2), CharacterWidth, CharacterHeight);

   }
Arrow CreateArrow(){
 Arrow A1=new Arrow(CharacterY-(CharacterHeight/4)+20);

return A1;


}  

void UpdateY(){
    CharacterY=mouseY >=370? 370: mouseY;
  }
       

        
}
