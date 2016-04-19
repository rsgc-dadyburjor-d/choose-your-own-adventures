import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Adventure extends PApplet {

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

public void setup() {

  
  frameRate(60);
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

public void draw() { //Runs

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
      X < enemyX +90 &&
      X > enemyX) {

      if (hp > 1) {
        hp-=.01f;
      }
    }

    //if (Y < enemyY + 90 &&
    //Y > enemyY &&
    //X < enemyX +90 &&
    //X > enemyX){

    //  if (hp > 1) {
    //  hp-=.01;
    //}

    if (Y < enemyY + 90 &&
      Y > enemyY &&
      X < enemyX +90 &&
      X > enemyX) {

      if (health > 1) {
        health-=11;
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


public void keyPressed() { //KeyMappings for Player





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
class Lvl1 { 
PImage player;

PImage photo;


  public void Lvl1() {
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  public void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {

    background(0xff550000);
    text("RUN",420,displayHeight/2);
    textSize(22);
    text("Forgot to do your homework did you??",430,displayHeight/1.9f);
    image(gordon, X/health*10, Y/health*10);
    image(ferrar,enemyX ,enemyY ); 
   
 
 
    
    textSize(226);
    fill(0xff710101);
    
    
    if (health < 5) {
      background(0xffE00707);
      fill(255);
      textSize(112);
      text("Gents, What a bloodbath,",11,displayHeight/2);
      textFont(subtitle);
      text("that just won't do!",24,displayHeight/1.8f);
    }

    //rect(enemyX,enemyY,hp,hp);
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

class Start { 

  public void Start() {
  }
  
 int rectX, rectY; 
 
  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
  public void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
    image(start, 0, 0);
    start.resize(displayWidth+200, displayHeight+200);
    
background(0xff8B0000);
    
    image(chainsaw, displayWidth/2.5f, displayHeight/2);
   

    //Text
    textAlign(CORNER);//Text Loads Centered
    fill(20,20,20,100);
    textFont(subtitle);
    textSize(20);
    text("Let's get to it Gents (S)", 50, displayHeight/1.19f); 
    text("Feeling Triggered ? (ESC)", 50, displayHeight/1.15f);
    textFont(title);
    textSize(60);
    text("''Feeling Jolly Great!''", 710, displayHeight/1.15f); 
     image(gordon, 137, 356);
     image(ferrar,1300 ,500 ); 
     
    fill(255);
    textSize(255);
    text("CHAINSAW", -14, displayHeight/3.8f); 
    textSize(106);
    text("FARRAR", 876, displayHeight/2.7f);
     textSize(43);
    text("KEITH", 755, displayHeight/3.15f);
    
  
    
  }
}
  public void settings() {  size(1280, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Adventure" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
