   class Character extends Game {
  private float CharacterX = 10;
  private float charactery = mouseY;
  private float characterwidth = 165;
  private float characterheight = 145;
  PImage characterImage1;
  PImage characterImage2;
  private boolean Case =false;
  
  Character(String TypeOfCharacter){
   characterImage1 = loadImage("../characters/"+TypeOfCharacter+"Case0.png");
   characterImage2 = loadImage("../characters/"+TypeOfCharacter+"Case1.png");
  }
 
  void setCase(boolean iscase ){
    Case = iscase;
  }
   boolean getcase(){
     return Case;
   }
 
    void normalsituation(){
      
      image(characterImage1, CharacterX, charactery-(characterheight/2), characterwidth, characterheight);

  } 
        void readysituation(){ 
           
          image(characterImage2, CharacterX, charactery-(characterheight/2), characterwidth, characterheight);

   }
       
       

        
}
