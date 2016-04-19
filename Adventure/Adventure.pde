import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;
 AudioPlayer saw;
 AudioPlayer death;
 AudioPlayer death2;

PFont subtitle;
PFont title;
//Images
PImage chainsaw;
PImage cursor;
PImage start;
PImage player;
PImage gordon;
PImage ferrar;


//variables

int scene = 1; //Scene
int X=140;//player X pos
int Y=350; //player Y pos
int enemyX=1400; //enemy X pos
int enemyY=800; //enemy Y pos
int hp=100; //enemy health
int dmg=10; //player damage
int bulletX = X; //bullet X pos
int bulletY = Y; //bullet Y pos
int health = 10; //player health

Start menu = new Start();
Lvl1 lvl1 = new Lvl1();

void setup() {

  fullScreen();
  frameRate(60);
  
 minim = new Minim(this);
 
  
  song = minim.loadFile("Music.mp3");
  saw = minim.loadFile("Chainsaw.mp3");
  death = minim.loadFile("Scream.mp3");
  death2 = minim.loadFile("death.mp3");
  song.play();
  
  title = createFont("Bold.ttf", 32);
  subtitle = createFont("Roboto.ttf", 32);
  start = loadImage("Adventure.jpg");//menusprite
  gordon = loadImage("Gordon.png");//playersprite
  ferrar = loadImage("ferrar.png");//enemysprite
  chainsaw = loadImage("Chainsaw.png");//Chainsawsprite
  noStroke();
  rectMode(CENTER);//Rect loads Centered
  textAlign(CENTER);//Text Loads Centered
  imageMode(CENTER);//Images Load Centered
  
  
}

void draw() { //Runs

  if (scene == 1) { //SCENE 1 (MENU)
    menu.drawAt(0, 0, 1, 1);
  }

  if (key == 's' || key == 'S') { //Start Prompt
    scene=2; //moves to level 1
    
  } else {
    //leave blank
   
  }

  if (scene == 2) { //SCENE 2 (Lvl1)
  
  
rectMode(CORNER); //rect draws from corner
    lvl1.drawAt(0, 0, 1, 1);
    


//review bullet code 

    if (mousePressed) { //on mouse press fire bullet

      rect(bulletX, bulletY, 5, 5);



      bulletX+=10;

      if (bulletX > 800) {
        if (mousePressed) {
          bulletX = X/10;
          bulletY = Y/10;
          rect(bulletX, bulletY, 5, 5);
        }
      }
    }


 
    


    if (Y < enemyY + 90 &&
      Y > enemyY &&
      X < enemyX + 90 &&
      X > enemyX) {

      if (hp > 1) {
        hp-=.01;
      }
    }

    //if (Y < enemyY + 90 &&
    //Y > enemyY &&
    //X < enemyX +90 &&
    //X > enemyX){

    //  if (hp > 1) {
    //  hp-=.01;
    //}

    if (Y < enemyY + 180 &&
      Y > enemyY -180 &&
      X < enemyX + 180 &&
      X > enemyX -180) {

      if (health > 1) {
        health-=11;
      }




      //if (Y/10 < enemyY+90){
      //if (X/10 > enemyX+90){
      //fill(20);
      //rect(200,200,200,200);
    }
  }
// borders
if (X > 1280){
  X=1280;
}
if (X < 0){
  X=1;
}
if (Y > 800){
  Y=800;
}
if (Y < 0){
  Y=0;
}
  if (scene == 3) {
    background(200);
  }
}


void keyPressed() { //KeyMappings for Player





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