class Lvl1 { 
PImage player;

PImage photo;


  void Lvl1() {
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
saw.pause();

            
    background(30);
    textSize(300);
    pushMatrix();
    scale(4);
    image(finish,320 ,0 );
    popMatrix();
    text("RUN",420,displayHeight/2);
    textSize(22);
    text("USE THE ARROW KEYS",420,displayHeight/1.9);
    text("Level 1",420,displayHeight/1.8);
    
    image(gordon, X/health*10, Y/health*10);
    image(ferrar,enemyX ,enemyY ); 
    
    
   
   

  
  

 
    
    textSize(226);
    fill(#710101);
    if (health > 5) {
      time++;
    }
    
    if (health < 5) { //death screen
      
      
  
       
      song.pause();
      death.play();
      death2.play();
      background(#E00707);
      image(violin,1100,700); 
      fill(255);
      textSize(132);
      text("Gents, What a bloodbath,",11,displayHeight/2);
      textSize(112);
      textFont(subtitle);
      text("that just won't do!",24,displayHeight/1.8);
      textSize(612);
      fill(255,255,255,80);
      text("Dead",11,displayHeight/2+200);
      textSize(50);
      text("Exit (ESC)",24,displayHeight/1.04);
      text("Menu (Enter)",24,displayHeight/1.13);
      level1.pause();
      fill(255);
      X=-10000;
      Y=-10000;
     textFont(title);
      
    }
    
    //rect(enemyX,enemyY,hp,hp);
    if (X-30 < enemyX){
      enemyX-=level1d;
     enemy.play();
    } 
    if (X-30 > enemyX){
      enemyX+=level1d;
      
    }
    if (Y-30 < enemyY){
      enemyY-=level1d;
      
    }
    if (Y-20 > enemyY){
      enemyY+=level1d;
      
    }
    
    //finish
    
      if (X-30 > 1200){
      scene=3;
       enemy.close();
}
  

  }
}



  