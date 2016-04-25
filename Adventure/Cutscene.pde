class CS { 
  void CS(){
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
    bg += 12;
    fill(bg, 90); // semi-transparent white
  rect(0, 0, width, height);
    
   csm.play();
      win.pause();
      level2.pause();
      fill(255);
      
     
     textSize(612);
      fill(255,255,255,40);
      text("SUCCESS",11,displayHeight/2+200);
      
    textSize(100);
      fill(0);
      text(10000 - time,600,displayHeight/1.1);
      text("Final Score",11,displayHeight/1.1);
      textSize(30);
      text("Menu (Enter)",24,displayHeight/1.03);
    

      }
  }