class CS { 
  void CS(){
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
    background(322);
      win.pause();
      level2.pause();
      fill(255);
     image(ferrar,600 ,400); 
      level1.pause();
      fill(255);
      if (key == '+' || key == '=') { //Start Command
      win.pause();
      enemyX=1400; 
    enemyY=800;
    health=10;
    X=137;
    Y=356;
    //scene=6; //moves to Scene 2 (level 1)
   
    
    
      }
  }
}