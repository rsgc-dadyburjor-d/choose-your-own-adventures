class Lvl2 { 
  void Lvl2(){
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
    background(30);
    textSize(300);
    pushMatrix();
    scale(4);
    image(finish,320 ,0 );
    popMatrix();
    textFont(title);
    textSize(120);
    text("WINNER",420,displayHeight/3);
    textSize(60);
    text("Great work Gents!",420,displayHeight/1.9);
    text("level 2 Starting",420,displayHeight/1.5);
  }
}