class Win2 { 
  void Win2(){
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
    background(#A6FF03);
      win.play();
      level2.pause();
      fill(255);
      textSize(132);
      text("Gents, Well Done!",11,displayHeight/2);
      textSize(112);
      textFont(subtitle);
      text("Ill be back in a wee while!",24,displayHeight/1.8);
      textSize(612);
      fill(255,255,255,150);
      text("SUCCESS",11,displayHeight/2+200);
      textSize(50);
      text("Exit (ESC)",24,displayHeight/1.04);
      text("Next (+)",24,displayHeight/1.13);
      level1.pause();
      fill(255);
      if (key == '+' || key == '=') { //Start Command
      win.pause();
      enemyX=1400; 
    enemyY=800;
    health=10;
    X=137;
    Y=356;
    scene=6; //moves to Scene 2 (level 1)
    level2.play();
    
    
      }
  }
}