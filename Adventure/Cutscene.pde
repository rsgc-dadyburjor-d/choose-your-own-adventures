class CS { 
  void CS() {
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn

  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {


    fill(#43DE4E, 140); // semi-transparent white
    rect(0, 0, 6000, 6000);

    csm.play();
    win.pause();
    level2.pause();
    fill(255);


    textSize(612);
    fill(255, 255, 255, 80);
    text("SCORE", 11, displayHeight/2+200);

    textSize(100);
    fill(255);
    text(5000 - time, 600, displayHeight/1.1);
    text("Final Score", 11, displayHeight/1.1);
    textSize(30);
    text("Menu (Enter)", 24, displayHeight/1.03);
   
  

  
      }
  }