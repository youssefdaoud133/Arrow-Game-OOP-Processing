  class RedBallon extends Ballon {
   PImage RedBallonPhoto;
    
   RedBallon(float d){
RedBallonPhoto = loadImage("../balloons/red.png"); 

      setBallonXLevel1(getBallonXLevel1()+d);
     
   }

    
    void displayBallonLevel1(){
    image(RedBallonPhoto, getBallonXLevel1(), getBallonYLevel1(), 80, 80);
    }
    
     void UpdateBallonLevel1(){
       super.setBallonYLevel1((getBallonYLevel1()-4) < -90 ? 350:(getBallonYLevel1()-4));
       
      
      }
      
    
    
    
    
  }
