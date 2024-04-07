class Arrow {
 private PImage ArrowPhoto; 
private float ArrowX=10;
private float ArrowY;
  Arrow(float CharacterY) {
  ArrowY=CharacterY;
    ArrowPhoto = loadImage("../arrows/arrow.png");
    
  }
  void display() {
   
 image(ArrowPhoto, ArrowX, ArrowY);
   

  }
  
  void  ObjectPosition() {

  ArrowX += 7;
 // if (ArrowX> width) {
//   ArrowX = 0; }
}

  
  
  
}
