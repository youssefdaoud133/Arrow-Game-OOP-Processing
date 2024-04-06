class Utils{
  PFont font;
  void drawButton(String text,float textSize,float x,float y,float w,float h){
    font = createFont("../fonts/KnightWarrior-w16n8.otf",1);
    fill(255, 197, 0);
    stroke(255, 160, 9);
    rect(x,y,w,h,30);
    fill(255);
    textFont(font,textSize);
    float textWidth = textWidth(text);
    float textHeight = textAscent() + textDescent();
    float textX = x + (w - textWidth) / 2;
    float textY = y + (h - textHeight) / 2 + textAscent()-5;
    text(text,textX,textY);
  }
}
