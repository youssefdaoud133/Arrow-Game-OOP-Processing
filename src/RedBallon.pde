  class RedBallon extends Ballon {
   PImage RedBallonPhoto;
   RedBallon(float d){

      setBalloonXLevel1(getBallonXLevel1()+d);
      
      
   }
   
    
    void displayBallonLevel1(){
     RedBallonPhoto = loadImage("—Pngtree—red balloon pixels_8975816.png"); 
    }
     void UpdateBallonLevel1(){
       super.setBalloonXLevel1(getBallonXLevel1());
      
      }
      
    
    
    
    
  }
