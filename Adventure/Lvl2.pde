class Lvl2 { 
  void Lvl2(){
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
    background(30);
      win.play();
      
      fill(255);
      textSize(132);
      text("Gents, Well Done!",11,displayHeight/2);
      textSize(112);
      textFont(subtitle);
      text("Ill be back in a jiffy!",24,displayHeight/1.8);
      textSize(612);
      fill(255,255,255,80);
      text("SUCCESS",11,displayHeight/2+200);
      textSize(50);
      text("Exit (ESC)",24,displayHeight/1.04);
      text("Menu (Enter)",24,displayHeight/1.13);
      level1.pause();
      fill(255);
  }
}