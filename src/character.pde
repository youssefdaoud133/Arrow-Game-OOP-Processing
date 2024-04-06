 
  class character {
  float characterx = 10;
  float charactery = mouseY;
  float characterwidth = 100;
  float characterheight = 100;
  PImage characterImage1;
  PImage characterImage2;
  private boolean Case;
  
  character(){
   characterImage1 = loadImage("../characters/HumanCase0.png");
   characterImage2 = loadImage("../characters/HumanCase1.png");
  }
 
  void setCase(boolean iscase ){
    Case = iscase;
  }
   boolean getcase(){
     return Case;
   }
 
    void normalsituation(){
      
      image(characterImage1, characterx, charactery, characterwidth, characterheight);

  } 
        void readysituation(){ 
           
          image(characterImage2, characterx, charactery, characterwidth, characterheight);

   }
       
       

        
}
