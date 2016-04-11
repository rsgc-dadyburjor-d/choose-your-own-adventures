class Start { 

  void Start() {
  }
  
 int rectX, rectY; 
 
  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
    image(start, 0, 0);
    start.resize(displayWidth+200, displayHeight+200);
    
background(100);
    //rectangles
    fill(20, 150);
  
    rect(displayWidth/2, displayHeight/2, displayWidth/3, displayHeight); //Start rect
    
    

    //Text
    fill(200);
    textSize(40);
    text("Start (S)", displayWidth/2, displayHeight/2); 
    fill(255);
    textSize(70);
    text("SHOOT", displayWidth/2, displayHeight/9); 
    textSize(20);
  
    
  }
}