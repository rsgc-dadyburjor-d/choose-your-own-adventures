class Win3 { 
  void Win3(){
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {

   fill(#FF4A03, 60); // semi-transparent white
  rect(0, 0, 6000, 6000);

   fill(#FF4A03, 30); // semi-transparent white
  rect(0, 0, width, height);

    
            win.play();
      level3.pause();
      fill(255);
      textSize(132);
      text("What a Time!",width/116,height/2);
      textSize(112);
      textFont(subtitle);
      textSize(32);
      text("Level 3 Complete!",width/53.333,height/9);
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
      enemyX=width*12; 
    enemyY=height;
    health=10;
    X=137;
    Y=356;
    scene=8; //moves to Scene 2 (level 1)
    
   
      }
  }
}