class Start { 

  void Start() {
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
    image(start, 0, 0);
    start.resize(displayWidth, displayHeight);

    //rectangles
    fill(20, 150);
    rect(displayWidth/1, displayHeight/2, displayWidth/3, displayHeight); //Quit rect
    rect(displayWidth/2, displayHeight/2, displayWidth/3, displayHeight); //Start rect
    rect(displayWidth/9, displayHeight/2, displayWidth/8, displayHeight); //Option rect
    

    //Text
    fill(200);
    textSize(32);
    text("Start (S)", displayWidth/2, displayHeight/2); 
    textSize(32);
    text("Quit (esc)", displayWidth/1-100, displayHeight/2);
    text("Quit (esc)", displayWidth/1-100, displayHeight/2);
  }
}