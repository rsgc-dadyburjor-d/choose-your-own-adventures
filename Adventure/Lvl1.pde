class Lvl1 { 
PImage player;

PImage photo;


  void Lvl1() {
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {

    background(200);
    rect(enemyX,enemyY,hp,hp);
    if (X-30 < enemyX){
      enemyX-=1;
    } 
    if (X-30 > enemyX){
      enemyX+=1;
    }
    if (Y-30 < enemyY){
      enemyY-=1;
    }
    if (Y-20 > enemyY){
      enemyY+=1;
    }
  }
}