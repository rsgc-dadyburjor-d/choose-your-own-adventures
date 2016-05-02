class Start { 

  void Start() {
  }
  
 int rectX, rectY; 
 
  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
    
     
     fill(#8B0000, 120); // semi-transparent white
  rect(0, 0, 6000, 6000);

    
    image(chainsaw, width/2, height/2);


    //Text
    textAlign(CENTER);//Text Loads Centered
    fill(20,20,20,100);
    textFont(subtitle);
    textSize(70);
   textFont(title);
 
    textSize(20);
      text("Controls (C)", width/2, height/1.2);
    text("Let's get to it Gents (S)", width/2, height/1.07);
    textSize(20);
    text("Feeling Triggered ? (ESC)", width/2, height/1.02);
    text("Revision 100", width/1.049, height/1.02);
    
   
     
     textFont(title);
    
    fill(255);
    textSize(250);
    text("CHAINSAW", width/2, height/3.4); 
    textSize(20);

 
    textAlign(CORNER);
    if (key == 'x' || key == 'X') { //Start Command
    gordon = loadImage("trump.png");//playersprite
    }
   if (key == 'c' || key == 'C') { //Start Command
  rectMode(CENTER);//Rect loads Centered
   fill (50);
    rect(width/2, height/2, 500, 200);
    fill(255);
    textSize(40);
    text("Controls", width/3, height/2.2); 
    textSize(20);
    text("Movement - Arrow Keys", width/3, height/2.0); 
    text("Next Level - +", width/3, height/1.7); 
    text("Reset - Enter", width/3, height/1.8); 
    text("Start - S", width/3, height/1.9); 
    
   }
    
  }
}