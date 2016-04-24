class Start { 

  void Start() {
  }
  
 int rectX, rectY; 
 
  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
    
     
     fill(#8B0000, 120); // semi-transparent white
  rect(0, 0, displayWidth*2, height*2);

    
    image(chainsaw, displayWidth/2, displayHeight/2);


    //Text
    textAlign(CENTER);//Text Loads Centered
    fill(20,20,20,100);
    textFont(subtitle);
    textSize(70);
   
    text("Let's get to it Gents (S)", displayWidth/2, displayHeight/1.07);
    textSize(20);
    text("Feeling Triggered ? (ESC)", displayWidth/2, displayHeight/1.02);
    text("Revision 75", displayWidth -50 , displayHeight/1.02);
    
   
     
     
    
    fill(255);
    textSize(250);
    text("CHAINSAW", displayWidth/2, displayHeight/3.4); 
    textSize(106);

    textAlign(CORNER);
  
    
  }
}