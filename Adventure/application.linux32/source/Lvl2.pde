class Lvl2 { 
  void Lvl2(){
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
   fill(#090093, 60); // semi-transparent white
  rect(0, 0, 6000, 6000);
  
      win.play();
      level2.pause();
      fill(255);
      
      textSize(132);
      text("Gents, Well Done!",width/116,height/2);
      textSize(112);
      textFont(subtitle);
      text("Level 1 Complete!",width/53.333,height/9);
      text("Ill be back in two shakes of a lamb's tail!",width/53.333,height/1.8);
      textSize(612);
      fill(255,255,255,30);
      text("SUCCESS",width/116.36,height/1.33);
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
    enemyY=height;
    health=10;
    X=137;
    Y=356;
    scene=4; //moves to Scene 2 (level 1)
    level2.play();
    
    
      }
  }
}