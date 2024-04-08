  class RedBallon extends Ballon {
   PImage RedBallonPhoto;
    
   RedBallon(float d){
RedBallonPhoto = loadImage("../balloons/red.png"); 

      setBallonXLevel1(getBallonXLevel1()+d);
      
      
   }
   
    
    void displayBallonLevel1(){
    image(RedBallonPhoto, getBallonXLevel1(), getBallonYLevel1(), 20, 20);
    }
     void UpdateBallonLevel1(){
       super.setBallonYLevel1(getBallonYLevel1()-7);
      
      }
      
    
    
    
    
  }
