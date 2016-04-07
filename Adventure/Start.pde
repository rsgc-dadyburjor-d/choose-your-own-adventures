class Start { 

  void Start() {
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
    image(start, 0,0);
start.resize(displayWidth, displayHeight);
 fill(20,150);
 rect(displayWidth/1, displayHeight/2, displayWidth/3, displayHeight);
 fill(200);
textSize(32);
text("Start", displayWidth/8, displayHeight/2); 
 textSize(32);
text("Options", displayWidth/8, displayHeight*2/3); 
  }
}