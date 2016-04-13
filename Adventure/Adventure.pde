
PImage cursor;
PImage start;
PImage player;
int mouse = mouseX;
int scene = 1;
int X=1;
int Y=1;
int enemyX=400;
int enemyY=200;
int hp=100;
int dmg=10;
int bulletX = X;
int bulletY = Y;

Start menu = new Start();
Lvl1 lvl1 = new Lvl1();
void setup() {
  size(1280, 800);
  frameRate(120);
  player = loadImage("player.png");
  start = loadImage("Adventure.jpg");
noStroke();
  rectMode(CENTER); //Rect loads Centered
  textAlign(CENTER);//Text Loads Centered
  imageMode(CENTER);//Images Load Centered
}

void draw() { //Runs

  if (scene == 1) { //SCENE 1 (MENU)
    menu.drawAt(0, 0, 1, 1);
  }

  if (key == 's' || key == 'S') { //Start Prompt
    scene=2;
  } else {
    //leave blank
  }

  if (scene == 2) { //SCENE 2 (Lvl1)
    rectMode(CORNER);
    lvl1.drawAt(0, 0, 1, 1);
    scale(10); //Player size
    image(player, X/10, Y/10); //player Sprite
    
    
    if (mousePressed){
      
      rect(bulletX, bulletY, 5,5);
    
    
       
      bulletX+=10;
      
      if (bulletX > 800) {
        if (mousePressed){
          bulletX = X/10;
          bulletY = Y/10;
          rect(bulletX, bulletY, 5,5);
        }
      }
    }
    
     
     if (hp < 5){
      fill(10,10,0,0);
    }
    
    if (Y < enemyY + 90 &&
    bulletY > enemyY &&
    bulletX < enemyX +90 &&
    bulletX > enemyX){
    
      if (hp > 1) {
      hp-=.01;
    }
     
     
    
  
      
    //if (Y/10 < enemyY+90){
      //if (X/10 > enemyX+90){
        //fill(20);
        //rect(200,200,200,200);
      }
    }
        
  

  if (scene == 3) {
    background(200);
  }

    }


void keyPressed() { //KeyMappings for Player




  if (key == CODED) {
    if (keyCode == LEFT) {
      X+=-13;
    }
    if (keyCode == RIGHT) {
      X+=13;
    }


    if (keyCode == UP) {
      Y+=-13;
    }
    if (keyCode == DOWN) {
      Y+=13;
    }
  }
}