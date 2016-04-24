class Start { 

  void Start() {
  }
  
 int rectX, rectY; 
 
  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
    
     
     fill(#8B0000, 50); // semi-transparent white
  rect(0, 0, displayWidth*2, height*2);

    
    image(chainsaw, displayWidth/2.5, displayHeight/2);
   

    //Text
    textAlign(CORNER);//Text Loads Centered
    fill(20,20,20,100);
    textFont(subtitle);
    textSize(20);
   
    text("Let's get to it Gents (S)", 20, displayHeight/1.05); 
    text("Feeling Triggered ? (ESC)", 20, displayHeight/1.02);
    text("Revision 75", 1150, displayHeight/1.02);
    textFont(title);
    textSize(90);
    text("''Feeling Jolly Great!''", 540, displayHeight/1.05); 
     image(gordon, 137, 356);
     image(ferrar,1300 ,500 ); 
     
    fill(255);
    textSize(380);
    text("CHAINSAW", -4, displayHeight/3.2); 
    textSize(106);
    text("THE GAME", 900, displayHeight/2.4);

    
  
    
  }
}