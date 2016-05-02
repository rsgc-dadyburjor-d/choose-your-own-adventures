

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
AudioPlayer saw; 
AudioPlayer death; //death scream
AudioPlayer death2; //death music
AudioPlayer enemy; //enemy movement
AudioPlayer level1; //Level1 music
AudioPlayer level2; //level2 music
AudioPlayer level3; //level3 music
AudioPlayer win; //level pass
AudioPlayer csm; //level pass
AudioPlayer winner; //level pass

//Custom Fonts
PFont subtitle; //smaller thinner text
PFont title; //bolded text

//Images
PImage chainsaw; //Intro Screen
PImage cursor; //mouse
PImage start; //unused start
PImage gordon; //main char
PImage ferrar; //enemy
PImage violin; //death screen
PImage finish; //finish line
PImage success; //level pass
PImage joystick; //8bit splash
PImage high; //high score
PImage attempt; //score

//variables
int timer;
int scene = 0; //Scene position
int X=137;//player X pos
int Y=356; //player Y pos
int enemyX=width*12; //enemy X pos
int enemyY=height; //enemy Y pos
int hp=100; //enemy health
int dmg=10; //player damage
int bulletX = X; //bullet X pos
int bulletY = Y; //bullet Y pos
int health = 10; //player health
int deathcount = 0; //number of deaths (WIP)
int bg = 0; //number of deaths (WIP)
int r = 0;
int time=0;
int highscore=0; //best score
int lastscore=0;
int score; //current score
//int mode;
int d = 1; //difficulty multiplier (default 1)

//Difficulties
int level1d = 3 * d; //level 1 (default 7)
int level2d = 3 * d; //level 2 (default 13)
int level3d = 3 * d; //level 3 (default 15)

//scenes
Start menu = new Start(); //start menu
Lvl1 lvl1 = new Lvl1(); //lvl1
Lvl2 lvl2 = new Lvl2();//win1
Lvl3 lvl3 = new Lvl3();//lvl2
Win2 win2 = new Win2();//win2
Lvl4 lvl4 = new Lvl4();//lvl3
Win3 win3 = new Win3();//win3
CS cs = new CS(); //score

void setup() {

  fullScreen(P2D);//1280x800
  noSmooth(); //removes Anti-Aliasing
  surface.setResizable(true); //allows dynamic resize when out of fullscreen
  frameRate(60); //enemy physics tied to fps

  // Music calls
  minim = new Minim(this);
  startup = minim.loadFile("startup.mp3"); //splashscreen
  song = minim.loadFile("Music.mp3"); //menu music
  death = minim.loadFile("Scream.mp3"); //death scream
  death2 = minim.loadFile("death.mp3"); //death music
  enemy = minim.loadFile("startup.mp3"); //start level 1
  level1 = minim.loadFile("Level1.mp3"); //level 1 music
  level2 = minim.loadFile("Level2.mp3"); //level 2 music
  level3 = minim.loadFile("Level3.mp3"); //level 3 music
  win = minim.loadFile("Win.mp3"); //level pass
  csm = minim.loadFile("cs.mp3"); //score page
  //winner = minim.loadFile("winner.mp3");

  // font calls
  title = createFont("Bold.ttf", 202); //thick font
  subtitle = createFont("Roboto.ttf", 200); //regular font

  //Image Loads
  joystick = loadImage("joystick.png");//menusprite not used
  start = loadImage("Adventure.jpg");//menusprite not used
  gordon = loadImage("Gordon.png");//playersprite
  ferrar = loadImage("ferrar.png");//enemysprite
  chainsaw = loadImage("Chainsaw.png");//Chainsawsprite
  violin = loadImage("Violin.png");//Violin Sprite
  finish = loadImage("finish.png");//finish line Sprite
  success = loadImage("successful.png");//success sprite
  high = loadImage("highscore.png");//success sprite
  attempt = loadImage("attempt.png");

  // Misc controls
  noStroke(); //removes outlines
  rectMode(CORNER);//Rect loads Centered
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
    text("8-BIT", width/2, height/2.3);
    textSize(50);
    fill(0);
    text("beep boop beep", width/2, height/2);
    image(joystick, width/2, height/1.2 ); 
    startup.play();
    if (width < 1920) {
      textSize(10);
      text("Below Recommended Resolution (1920x1080)", width/2, height / 10);
    }
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
    if (keyPressed) {
  if (key == 'w' || key == 'W') { //Start Command
    Y+=-30;
    
  }
  if (key == 'a' || key == 'A') {
    X+=-30;
  }
  if (key == 's' || key == 'S') {
    Y+=30;
  }
  if (key == 'd' || key == 'D') {
    X+=30;
  }
    }
  if (key == 'i' || key == 'I') { //Start Command
    scene=2; //moves to Scene 2 (level 1)
    enemy.play();
    death = minim.loadFile("Scream.mp3");
    textAlign(CORNER);
    level1.play();
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

    //Player Health
    if (Y < enemyY + 180 &&
      Y > enemyY -180 &&
      X < enemyX + 180 &&
      X > enemyX -180) {

      if (health > 1) {
        health-=11; //subtracts health on contact
      }
    }
  }

  //player bounds scale to display

  if (X > width) {
    X= width;
  }
  if (X < 0) {
    X=1;
  }
  if (Y > height) {
    Y=height;
  }
  if (Y < 0) {
    Y=0;
  }

  //Gui Code
  pushMatrix();
  textSize(20);
  fill(255);
  text(frameRate,width/1.066,height/8);
  text("SCORE", width/1.213, height/40);
  text(score, width/1.113, height/40);
  text("HIGHSCORE", width/64, height/40);
  text(lastscore, width/8.533, height/40);
  popMatrix();

  //scoring
  score = (5000 - time); // score reduces as time goes on
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