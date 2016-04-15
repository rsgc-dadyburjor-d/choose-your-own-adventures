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
    
background(#8B0000);
    
    
   

    //Text
    textAlign(CORNER);//Text Loads Centered
    fill(20,20,20,100);
    textFont(subtitle);
    textSize(60);
    text("Start (S)", 50, displayHeight/1.3); 
    text("Quit (ESC)", 50, displayHeight/1.15);
    text("Chainsaw Is Here...", 750, displayHeight/1.15); 
     image(gordon, X/health*10, Y/health*10);
     image(ferrar,1300 ,500 ); 
     textFont(title);
    fill(255);
    textSize(255);
    text("CHAINSAW", -14, displayHeight/3.8); 
    textSize(20);
    
  
    
  }
}