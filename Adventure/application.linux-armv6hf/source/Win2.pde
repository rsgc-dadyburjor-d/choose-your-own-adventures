class Win2 { 
  void Win2(){
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {

    fill(#0040FA, 60); // semi-transparent white
  rect(0, 0, 6000, 6000);

    fill(#0040FA, 30); // semi-transparent white
  rect(0, 0, width, height);

      win.play();
      level2.pause();
      fill(255);
      textSize(132);
      text("What a Time!",width/116,height/2);
      textSize(112);
      textFont(subtitle);
      text("Level 2 Complete!",width/53.333,height/9);
      text("Hold on a Wee While Gents!",width/53.333,height/1.8);
      textSize(612);
      fill(255,255,255,40);
      text("VICTORY",width/116.36,height/1.33);
      textSize(50);
      text("Exit (ESC)",width/53.333,height/1.04);
      text("Next (+)",width/53.333,height/1.13);
      level1.pause();
      fill(255);
      pushMatrix();
       image(success,width/1.163, height/1.33); 
      popMatrix();
      
      if (key == '+' || key == '=') { //Start Command
      enemy = minim.loadFile("startup.mp3");
      win.pause();
      enemyX=width; 
    enemyY=height/2;
    health=10;
    X=137;
    Y=356;
    scene=6; //moves to Scene 2 (level 1)
    level2.pause();
    level3.play();
    
    
      }
  }
}