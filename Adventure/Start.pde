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
    
    image(chainsaw, displayWidth/2.5, displayHeight/2);
   

    //Text
    textAlign(CORNER);//Text Loads Centered
    fill(20,20,20,100);
    textFont(subtitle);
    textSize(20);
    text("Let's get to it Gents (S)", 20, displayHeight/1.05); 
    text("Feeling Triggered ? (ESC)", 20, displayHeight/1.02);
    textFont(title);
    textSize(90);
    text("''Feeling Jolly Great!''", 430, displayHeight/1.05); 
     image(gordon, 137, 356);
     image(ferrar,1300 ,500 ); 
     
    fill(255);
    textSize(255);
    text("CHAINSAW", -14, displayHeight/3.8); 
    textSize(106);
    text("FARRAR", 876, displayHeight/2.7);
     textSize(43);
    text("KEITH", 755, displayHeight/3.15);
    
  
    
  }
}