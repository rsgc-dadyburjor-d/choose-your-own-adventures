class Win2 { 
  void Win2(){
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
    fill(#0040FA, 30); // semi-transparent white
  rect(0, 0, width, height);
      win.play();
      level2.pause();
      fill(255);
      textSize(132);
      text("What a Time!",11,displayHeight/2);
      textSize(112);
      textFont(subtitle);
      text("Level 2 Complete!",24,displayHeight/9);
      text("Hold on a Wee While Gents!",24,displayHeight/1.8);
      textSize(612);
      fill(255,255,255,40);
      text("VICTORY",11,displayHeight/2+200);
      textSize(50);
      text("Exit (ESC)",24,displayHeight/1.04);
      text("Next (+)",24,displayHeight/1.13);
      level1.pause();
      fill(255);
      pushMatrix();
       image(success,1100,600); 
      popMatrix();
      
      if (key == '+' || key == '=') { //Start Command
      win.pause();
      enemyX=1400; 
    enemyY=800;
    health=10;
    X=137;
    Y=356;
    scene=6; //moves to Scene 2 (level 1)
    level2.pause();
    level3.play();
    
    
      }
  }
}