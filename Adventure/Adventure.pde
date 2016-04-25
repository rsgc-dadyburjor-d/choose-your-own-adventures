//audio Libraries
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


  
//audio Tracks
Minim minim;
AudioPlayer startup; //level pass
AudioPlayer song; //menu music
AudioPlayer saw; //WIP
AudioPlayer death; //death scream
AudioPlayer death2; //death music
AudioPlayer enemy; //enemy movement
AudioPlayer level1; //enemy movement
AudioPlayer level2; //enemy movement
AudioPlayer level3; //enemy movement
AudioPlayer win; //level pass
AudioPlayer csm; //level pass
AudioPlayer winner; //level pass

//Custom Fonts
PFont subtitle; //smaller thinner text
PFont title; //bolded text



//Images
PImage chainsaw;
PImage cursor;
PImage start;
PImage player;
PImage gordon;
PImage ferrar;
PImage violin;
PImage finish;
PImage success;
PImage joystick;

//variables
int timer;
int scene = 0; //Scene position
int X=137;//player X pos
int Y=356; //player Y pos
int enemyX=1400; //enemy X pos
int enemyY=800; //enemy Y pos
int hp=100; //enemy health
int dmg=10; //player damage
int bulletX = X; //bullet X pos
int bulletY = Y; //bullet Y pos
int health = 10; //player health
int deathcount = 0; //number of deaths (WIP)
int bg = 0; //number of deaths (WIP)
int r = 0;
int time=0;
int score= 10000 - time;

//scenes
Start menu = new Start(); //start menu
Lvl1 lvl1 = new Lvl1(); //lvl1
Lvl2 lvl2 = new Lvl2();
Lvl3 lvl3 = new Lvl3();
Win2 win2 = new Win2();
Lvl4 lvl4 = new Lvl4();
Lvl5 lvl5 = new Lvl5();
Win3 win3 = new Win3();
CS cs = new CS();
void setup() {

  fullScreen(JAVA2D); //1280x800
  frameRate(24); //enemy physics tied to fps
  

  // Music calls
  minim = new Minim(this);
startup = minim.loadFile("startup.mp3");
  song = minim.loadFile("Music.mp3");
  saw = minim.loadFile("Chainsaw.mp3");
  death = minim.loadFile("Scream.mp3");
  death2 = minim.loadFile("death.mp3");
  enemy = minim.loadFile("Enemy.mp3");
  level1 = minim.loadFile("Level1.mp3");
  level2 = minim.loadFile("Level2.mp3");
  level3 = minim.loadFile("Level3.mp3");
  win = minim.loadFile("Win.mp3");
  csm = minim.loadFile("cs.mp3");
  winner = minim.loadFile("winner.mp3");
  //plays music 
  //song.play();

  // font calls
  title = createFont("Bold.ttf", 32); //thick font
  subtitle = createFont("Roboto.ttf", 32); //regular font

  //Image Loads
   joystick = loadImage("joystick.png");//menusprite not used
  start = loadImage("Adventure.jpg");//menusprite not used
  gordon = loadImage("Gordon.png");//playersprite
  ferrar = loadImage("ferrar.png");//enemysprite
  chainsaw = loadImage("Chainsaw.png");//Chainsawsprite
  violin = loadImage("Violin.png");//Violin Sprite
  finish = loadImage("finish.png");//finish line Sprite
  success = loadImage("successful.png");//success sprite
  
  // Misc controls
  noStroke(); //removes outlines
  rectMode(CENTER);//Rect loads Centered
  textAlign(CENTER);//Text Loads Centered
  imageMode(CENTER);//Images Load Centered
}

void draw() { //Runs once in program
noCursor();
 fill(255);
  
  if (scene == 0) { //loads SCENE 0 (splashscreen) loads at start
    background(255);
    fill(#0040FA);
    textFont(title);
    textSize(300);
    text("8-BIT",displayWidth/2,displayHeight/2.3);
    textSize(50);
    fill(0);
    text("beep boop beep",displayWidth/2,displayHeight/2);
     image(joystick,displayWidth/2 ,displayHeight/1.2 ); 
    startup.play();
    if (millis() - timer >= 5000) {
    scene=1;
    startup.close();
    textAlign(CORNER);
    }
  }
  if (scene == 1) { //loads SCENE 1 (MENU) loads at start
    menu.drawAt(0, 0, 1, 1);
    death2.pause();
    song.play();
    win.pause();
   
  }

  if (key == 's' || key == 'S') { //Start Command
    scene=2; //moves to Scene 2 (level 1)
     death = minim.loadFile("Scream.mp3");
    textAlign(CORNER);
    level1.play();
  } else {
    //leave blank, No else statement needed.
  }
  if (scene == 3) { //SCENE 3 (win)
    lvl2.drawAt(0, 0, 1, 1);
  }
  if (scene == 4) { //SCENE 4 (lvl2)
    lvl3.drawAt(0, 0, 1, 1);
  }
  if (scene == 5) { //SCENE 4 (lvl2)
    win2.drawAt(0, 0, 1, 1);
  }
  if (scene == 6) { //SCENE 4 (lvl2)
    lvl4.drawAt(0, 0, 1, 1);
  }
  if (scene == 7) { //SCENE 4 (lvl2)
    win3.drawAt(0, 0, 1, 1);
  }
  if (scene == 8) { //SCENE 4 (lvl2)
    cs.drawAt(0, 0, 1, 1);
  }
  
  if (scene == 2) { //SCENE 2 (Lvl1)

    song.pause();

    rectMode(CORNER); //rect draws from corner
    lvl1.drawAt(0, 0, 1, 1);//lvl1 draw



    //review bullet code 
    //Not currently Working

    //if (mousePressed) { //on mouse press fire bullet

    //  rect(bulletX, bulletY, 5, 5);



    //  bulletX+=10;

    //  if (bulletX > 800) {
    //    if (mousePressed) {
    //      bulletX = X/10;
    //      bulletY = Y/10;
    //      rect(bulletX, bulletY, 5, 5);
    //    }
    //  }
    //}


    //Enemy health/ Damage script

    if (Y < enemyY + 90 &&
      Y > enemyY &&
      X < enemyX + 90 &&
      X > enemyX) {

      if (hp > 1) {
        hp-=.01;
      }
    }

    //unused code (ignore)
    //if (Y < enemyY + 90 &&
    //Y > enemyY &&
    //X < enemyX +90 &&
    //X > enemyX){

    //  if (hp > 1) {
    //  hp-=.01;
    //}

    //Player Health
    if (Y < enemyY + 180 &&
      Y > enemyY -180 &&
      X < enemyX + 180 &&
      X > enemyX -180) {

      if (health > 1) {
        health-=11; //subtracts health on contact
      }




      //if (Y/10 < enemyY+90){
      //if (X/10 > enemyX+90){
      //fill(20);
      //rect(200,200,200,200);
    }
  }

  //player bounds

  if (X > 1280) {
    X=1280;
  }
  if (X < 0) {
    X=1;
  }
  if (Y > 800) {
    Y=800;
  }
  if (Y < 0) {
    Y=0;
  }

  //scene 3 not currently used
  //if (scene == 3) {
  // background(200);
  //}
 
  
  pushMatrix();
  textSize(20);
  fill(255);
  text("SCORE",1150,20);
  text(10000 - time,1200,20);
  popMatrix();
}


void keyPressed() { //KeyMappings for Player



  if (keyCode == LEFT) { //Move left
    X+=-30;
  }
  if (keyCode == RIGHT) { //Move right
    X+=30;
  }

  if (keyCode == UP) { //move up
    Y+=-30;
  }
  if (keyCode == DOWN) { //move down
    Y+=30;
  }
  if (keyCode == ENTER) { //after death resets game
    //all variables are reset
    song.play();
    csm.pause();
    level1.pause();
    scene = 1;
    redraw();
    enemyX=1400; 
    enemyY=800;
    health=10;
    X=137;
    Y=356;
    time=0;
    death.close();
  }
}