class Arrow {
  private PImage ArrowPhoto; 
  private float ArrowX=70;
  private float ArrowY;
  boolean Hide = false;
  
  Arrow(float CharacterY){
    ArrowY=CharacterY;
    ArrowPhoto = loadImage("../arrows/arrow.png");
      
  }
  float getX(){
    return ArrowX;
  }
    float getY(){
    return ArrowY;
  }
  void display() {
    image(ArrowPhoto, ArrowX, ArrowY, 100,100 );
  
  }
    
  void  ObjectPosition() {
   
   if ((ArrowX< (width+5))) {
    ArrowX += 8; 
 
    }else{
      Hide = true;
    }
  }  

}
