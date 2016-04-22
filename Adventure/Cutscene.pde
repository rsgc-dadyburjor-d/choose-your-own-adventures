class CS { 
  void CS(){
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
    bg += 12;
    background(bg);
   csm.play();
      win.pause();
      level2.pause();
      fill(255);
      pushMatrix();
      rotate(.2*r/10); //rotates head
      imageMode(CENTER);
      scale(4);
     
      r++;
     image(ferrar,100 ,100); 
     popMatrix();
      level1.pause();
      fill(255);
      text("What a shame gents... I guess we're done for",24,displayHeight/1.1);
      
     
    
    
      }
  }