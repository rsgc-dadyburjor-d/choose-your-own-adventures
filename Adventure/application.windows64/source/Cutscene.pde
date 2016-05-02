class CS { 
  void CS() {
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn

  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {


fill(#6DD302,80);
    rect(0, 0, 6000, 6000);

    csm.play();
    win.pause();
    level2.pause();
    fill(255);


    textSize(612);
    fill(255, 255, 255, 80);
    text("SCORE", width/116.36, height/1.33);

    textSize(100);

    fill(255);
    text(score, width/2.13, height/1.1);
    
    
    textSize(30);
    text("Menu (Enter)", width/24, height/1.03);

if (score < lastscore){
  textSize(100);
  image(attempt,width/1.16,height/1.33);
  text("Final Score", width/116.36, height/1.1);
}
if (score == lastscore){
  textSize(100);
  text("High Score!", width/116.36, height/1.1);
image(high,width/1.16,height/1.33);
}
if (score > lastscore){
  image(violin,1100,700); 
  lastscore = score;
}


   
      }
  }