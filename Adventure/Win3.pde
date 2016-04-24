class Win3 { 
  void Win3(){
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
   fill(#FF4A03, 60); // semi-transparent white
  rect(0, 0, width, height);
    
      win.play();
      level3.pause();
      fill(255);
      textSize(132);
      text("Gents, This is Bad!",11,displayHeight/2);
      textSize(112);
      textFont(subtitle);
      text("Level 3 Complete!",24,displayHeight/9);
      text("What a Waste!",24,displayHeight/1.8);
      textSize(612);
      fill(255,255,255,40);
      text("WINNER",11,displayHeight/2+200);
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
       winner.close();
      enemyX=1400; 
    enemyY=800;
    health=10;
    X=137;
    Y=356;
    scene=8; //moves to Scene 2 (level 1)
    winner = minim.loadFile("winner.mp3");
    
    
      }
  }
}