//audio Libraries
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//audio Tracks
Minim minim;
AudioPlayer song; //game music
AudioPlayer saw; //WIP
AudioPlayer death; //death scream
AudioPlayer death2; //death music

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

//variables

int scene = 1; //Scene position
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

//scenes
Start menu = new Start(); //start menu
Lvl1 lvl1 = new Lvl1(); //lvl1

void setup() {

  fullScreen(); //1280x800
  frameRate(60); //enemy physics tied to fps

  // Music calls
  minim = new Minim(this);

  song = minim.loadFile("Music.mp3");
  saw = minim.loadFile("Chainsaw.mp3");
  death = minim.loadFile("Scream.mp3");
  death2 = minim.loadFile("death.mp3");
  song.play();

  // font calls
  title = createFont("Bold.ttf", 32); //thick font
  subtitle = createFont("Roboto.ttf", 32); //regular font

  //Image Loads
  start = loadImage("Adventure.jpg");//menusprite not used
  gordon = loadImage("Gordon.png");//playersprite
  ferrar = loadImage("ferrar.png");//enemysprite
  chainsaw = loadImage("Chainsaw.png");//Chainsawsprite
  violin = loadImage("Violin.png");//Violin Sprite

  // Misc controls
  noStroke(); //removes outlines
  rectMode(CENTER);//Rect loads Centered
  textAlign(CENTER);//Text Loads Centered
  imageMode(CENTER);//Images Load Centered
}

void draw() { //Runs once in program

  if (scene == 1) { //loads SCENE 1 (MENU) loads at start
    menu.drawAt(0, 0, 1, 1);
  }

  if (key == 's' || key == 'S') { //Start Command
    scene=2; //moves to Scene 2 (level 1)
  } else {
    //leave blank, No else statement needed.
  }

  if (scene == 2) { //SCENE 2 (Lvl1)


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
}


void keyPressed() { //KeyMappings for Player



  if (keyCode == LEFT) { //Move left
    X+=-13;
  }
  if (keyCode == RIGHT) { //Move right
    X+=13;
  }

  if (keyCode == UP) { //move up
    Y+=-13;
  }
  if (keyCode == DOWN) { //move down
    Y+=13;
  }
  if (keyCode == ENTER) { //after death resets game
  //all variables are reset
    scene = 1;
    redraw();
    enemyX=1400; 
    enemyY=800;
    health=10;
    X=137;
    Y=356;
  }
}