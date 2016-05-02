import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 
import ddf.minim.analysis.*; 
import ddf.minim.effects.*; 
import ddf.minim.signals.*; 
import ddf.minim.spi.*; 
import ddf.minim.ugens.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Adventure extends PApplet {


PrintWriter output;

//audio Libraries







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
PImage high;
PImage attempt;
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
int highscore=0;
int lastscore=0;
int score;
int mode;
int d = 1;
//Difficulties
int level1d = 4 * d;
int level2d = 6 * d;
int level3d = 7 * d;


//scenes
Start menu = new Start(); //start menu
Lvl1 lvl1 = new Lvl1(); //lvl1
Lvl2 lvl2 = new Lvl2();
Lvl3 lvl3 = new Lvl3();
Win2 win2 = new Win2();
Lvl4 lvl4 = new Lvl4();

Win3 win3 = new Win3();
CS cs = new CS();



public void setup() {

  //1280x800
  
  surface.setResizable(true);

  frameRate(24); //enemy physics tied to fps


  // Music calls
  minim = new Minim(this);
  startup = minim.loadFile("startup.mp3");
  song = minim.loadFile("Music.mp3");
  saw = minim.loadFile("Chainsaw.mp3");
  death = minim.loadFile("Scream.mp3");
  death2 = minim.loadFile("death.mp3");
  enemy = minim.loadFile("startup.mp3");
  level1 = minim.loadFile("Level1.mp3");
  level2 = minim.loadFile("Level2.mp3");
  level3 = minim.loadFile("Level3.mp3");
  win = minim.loadFile("Win.mp3");
  csm = minim.loadFile("cs.mp3");
  winner = minim.loadFile("winner.mp3");
  //plays music 
  //song.play();

  // font calls
  title = createFont("Bold.ttf", 12); //thick font
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
  high = loadImage("highscore.png");//success sprite
  attempt = loadImage("attempt.png");

  // Misc controls
  noStroke(); //removes outlines
  rectMode(CORNER);//Rect loads Centered
  textAlign(CENTER);//Text Loads Centered
  imageMode(CENTER);//Images Load Centered
}

public void draw() { //Runs once in program

  noCursor();
  fill(255);


  if (scene == 0) { //loads SCENE 0 (splashscreen) loads at start
    background(255);
    fill(0xff0040FA);
    textFont(title);
    textSize(300);
    text("8-BIT", width/2, height/2.3f);
    textSize(50);
    fill(0);
    text("beep boop beep", width/2, height/2);
    image(joystick, width/2, height/1.2f ); 
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

  if (key == 's' || key == 'S') { //Start Command
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
        hp-=.01f;
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

  //scene 3 not currently used
  //if (scene == 3) {
  // background(200);
  //}


  pushMatrix();
  textSize(20);
  fill(255);

  //text(frameRate,width/1.066,height/8);
  text("SCORE", width/1.213f, height/40);
  text(score, width/1.113f, height/40);

  text("HIGHSCORE", width/64, height/40);
  text(lastscore, width/8.533f, height/40);


  popMatrix();

  score = (5000 - time);
}






public void keyPressed() { //KeyMappings for Player



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


    output = createWriter("score.txt");
  }
}

class CS { 
  public void CS() {
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn

  public void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {


fill(0xff6DD302,80);
    rect(0, 0, 6000, 6000);

    csm.play();
    win.pause();
    level2.pause();
    fill(255);


    textSize(612);
    fill(255, 255, 255, 80);
    text("SCORE", width/116.36f, height/1.33f);

    textSize(100);

    fill(255);
    text(score, width/2.13f, height/1.1f);
    
    
    textSize(30);
    text("Menu (Enter)", width/24, height/1.03f);

if (score < lastscore){
  textSize(100);
  image(attempt,width/1.16f,height/1.33f);
  text("Final Score", width/116.36f, height/1.1f);
}
if (score == lastscore){
  textSize(100);
  text("High Score!", width/116.36f, height/1.1f);
image(high,width/1.16f,height/1.33f);
}
if (score > lastscore){
  image(violin,1100,700); 
  lastscore = score;
}


   
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
saw.pause();

            
    background(30);
    textSize(300);
    pushMatrix();
    scale(4);
    image(finish, width/4 ,0 );
    popMatrix();
    
    
    text("RUN",width/2.6f,height/2);
    textSize(22);
    text("USE THE ARROW KEYS",width/2.6f,height/1.9f);
    text("Level 1",width/2.6f,height/1.8f);
    
    image(gordon, X, Y);
    
    image(ferrar,enemyX ,enemyY ); 
    
    
   
   

  
  

 
    
    textSize(226);
    fill(0xff710101);
    if (health > 5) {
      time++;
    }
    
    if (health < 5) { //death screen
      
      
  
       
      song.pause();
      death.play();
      death2.play();
      background(0xffE00707);
      image(violin,width/1.16f,height/1.14f); 
      fill(255);
      textSize(125);
      text("Gents, What a bloodbath!",width/116.5f ,height/2);
      textSize(112);
      textFont(subtitle);
      text("that just won't do!",width/53.3f,height/1.8f);
      textSize(612);
      fill(255,255,255,80);
      text("Dead",width/116.36f,height/1.33f);
      textSize(50);
      text("Exit (ESC)",width/53.3f,height/1.04f);
      text("Menu (Enter)",width/53.3f,height/1.13f);
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
    
      if (X-30 > width/1.1f){
      scene=3;
       enemy.close();
}
  

  }
}



  
class Lvl2 { 
  public void Lvl2(){
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  public void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
   fill(0xff090093, 60); // semi-transparent white
  rect(0, 0, 6000, 6000);
  
      win.play();
      level2.pause();
      fill(255);
      
      textSize(132);
      text("Gents, Well Done!",width/116,height/2);
      textSize(112);
      textFont(subtitle);
      text("Level 1 Complete!",width/53.333f,height/9);
      text("Ill be back in two shakes of a lamb's tail!",width/53.333f,height/1.8f);
      textSize(612);
      fill(255,255,255,30);
      text("SUCCESS",width/116.36f,height/1.33f);
      textSize(50);
      text("Exit (ESC)",width/53.333f,height/1.04f);
      text("Next (+)",width/53.333f,height/1.13f);
      level1.pause();
      fill(255);
      pushMatrix();
       image(success,width/1.163f, height/1.33f); 
      popMatrix();
      
      if (key == '+' || key == '=') { //Start Command
      enemy = minim.loadFile("startup.mp3");
      win.pause();
      enemyX=width; 
    enemyY=height;
    health=10;
    X=137;
    Y=356;
    scene=4; //moves to Scene 2 (level 1)
    level2.play();
    
    
      }
  }
}
class Lvl3 { 
PImage player;

PImage photo;


  public void Lvl3() {
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  public void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
saw.pause();

            
    background(30);
    textSize(300);
    pushMatrix();
    scale(4);
    image(finish, width/4 ,0 );
    popMatrix();
    fill(0xff03FFF0);
    text("ESCAPE",width/2.6f,height/2);
    textSize(22);
    text("Mindblowing stuff - Mindblowing stuff - Mindblowing stuff - Mindblowing stuff",width/2.6f,height/1.9f);
    text("level 2",width/2.6f,height/1.8f);
    image(gordon, X/health*10, Y/health*10);
    image(ferrar,enemyX ,enemyY ); 
    
    
  
   

  
  

 
    
    textSize(226);
    fill(0xff710101);
    
    if (health > 5) {
      time++;
    }
    if (health < 5) {
      
      
  level2.pause();
       
            song.pause();
      death.play();
      death2.play();
      background(0xffE00707);
      image(violin,width/1.16f,height/1.14f); 
      fill(255);
      textSize(125);
      text("OH.. Trigger Warning!",width/116.5f ,height/2);
      textSize(112);
      textFont(subtitle);
      text("Sorry Gents!",width/53.3f,height/1.8f);
      textSize(612);
      fill(255,255,255,80);
      text("Dead",width/116.36f,height/1.33f);
      textSize(50);
      text("Exit (ESC)",width/53.3f,height/1.04f);
      text("Menu (Enter)",width/53.3f,height/1.13f);
      level1.pause();
      fill(255);
      X=-10000;
      Y=-10000;
     textFont(title);
         
      
    }
    
    //rect(enemyX,enemyY,hp,hp);
    if (X-30 < enemyX){
      enemyX-=level2d;
     enemy.play();
    } 
    if (X-30 > enemyX){
      enemyX+=level2d;
      
    }
    if (Y-30 < enemyY){
      enemyY-=level2d;
      
    }
    if (Y-20 > enemyY){
      enemyY+=level2d;
      
    }
    
    //finish
    
      if (X-30 > width/1.1f){
      scene=5;
      enemy.close();
}
  if (Y < enemyY + 180 &&
      Y > enemyY -180 &&
      X < enemyX + 180 &&
      X > enemyX -180) {

      if (health > 1) {
        health-=11; //subtracts health on contact
      }
      }


  }
}



  
class Lvl4 { 
PImage player;

PImage photo;


  public void Lvl4() {
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  public void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
saw.pause();

            
    background(200);
    textSize(300);
    pushMatrix();
    scale(4);
    image(finish, width/4 ,0 );
    popMatrix();
    text("GENTS!",width/2.6f,height/2);
    textSize(22);
    text("TRIGGER WARNING - TRIGGER WARNING - TRIGGER WARNING - TRIGGER WARNING",width/2.6f,height/1.9f);
    text("level 3",width/2.6f,height/1.8f);
    image(gordon, X/health*10, Y/health*10);
    image(ferrar,enemyX ,enemyY ); 
    
    
   
   

  
  

 
    
    textSize(226);
    fill(0xff710101);
    
    if (health > 5) {
      time++;
    }
    if (health < 5) {
      
      
  level3.pause();
       
      level2.pause();
       
            song.pause();
      death.play();
      death2.play();
      background(0xffE00707);
      image(violin,width/1.16f,height/1.14f); 
      fill(255);
      textSize(125);
      text("It Happens Gents!",width/116.5f ,height/2);
      textSize(112);
      textFont(subtitle);
      text("It will buff out!",width/53.3f,height/1.8f);
      textSize(612);
      fill(255,255,255,80);
      text("Dead",width/116.36f,height/1.33f);
      textSize(50);
      text("Exit (ESC)",width/53.3f,height/1.04f);
      text("Menu (Enter)",width/53.3f,height/1.13f);
      level1.pause();
      fill(255);
      X=-10000;
      Y=-10000;
     textFont(title);
      
    }
    
    //rect(enemyX,enemyY,hp,hp);
    if (X-30 < enemyX){
      enemyX-=level3d;
     enemy.play();
    } 
    if (X-30 > enemyX){
      enemyX+=level3d;
      
    }
    if (Y-30 < enemyY){
      enemyY-=level3d;
      
    }
    if (Y-20 > enemyY){
      enemyY+=level3d;
      
    }
    
    //finish
    
      if (X-30 > width/1.1f){
      scene=7;
      enemy.close();
}
  if (Y < enemyY + 180 &&
      Y > enemyY -180 &&
      X < enemyX + 180 &&
      X > enemyX -180) {

      if (health > 1) {
        health-=11; //subtracts health on contact
      }
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
    
     
     fill(0xff8B0000, 120); // semi-transparent white
  rect(0, 0, 6000, 6000);

    
    image(chainsaw, width/2, height/2);


    //Text
    textAlign(CENTER);//Text Loads Centered
    fill(20,20,20,100);
    textFont(subtitle);
    textSize(70);
   textFont(title);
 
    textSize(20);
      text("Controls (C)", width/2, height/1.2f);
    text("Let's get to it Gents (S)", width/2, height/1.07f);
    textSize(20);
    text("Feeling Triggered ? (ESC)", width/2, height/1.02f);
    text("Revision 100", width/1.049f, height/1.02f);
    
   
     
     textFont(title);
    
    fill(255);
    textSize(250);
    text("CHAINSAW", width/2, height/3.4f); 
    textSize(20);

 
    textAlign(CORNER);
    if (key == 'x' || key == 'X') { //Start Command
    gordon = loadImage("trump.png");//playersprite
    }
   if (key == 'c' || key == 'C') { //Start Command
  rectMode(CENTER);//Rect loads Centered
   fill (50);
    rect(width/2, height/2, 500, 200);
    fill(255);
    textSize(40);
    text("Controls", width/3, height/2.2f); 
    textSize(20);
    text("Movement - Arrow Keys", width/3, height/2.0f); 
    text("Next Level - +", width/3, height/1.7f); 
    text("Reset - Enter", width/3, height/1.8f); 
    text("Start - S", width/3, height/1.9f); 
    
   }
    
  }
}
class Win2 { 
  public void Win2(){
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  public void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {

    fill(0xff0040FA, 60); // semi-transparent white
  rect(0, 0, 6000, 6000);

    fill(0xff0040FA, 30); // semi-transparent white
  rect(0, 0, width, height);

      win.play();
      level2.pause();
      fill(255);
      textSize(132);
      text("What a Time!",width/116,height/2);
      textSize(112);
      textFont(subtitle);
      text("Level 2 Complete!",width/53.333f,height/9);
      text("Hold on a Wee While Gents!",width/53.333f,height/1.8f);
      textSize(612);
      fill(255,255,255,40);
      text("VICTORY",width/116.36f,height/1.33f);
      textSize(50);
      text("Exit (ESC)",width/53.333f,height/1.04f);
      text("Next (+)",width/53.333f,height/1.13f);
      level1.pause();
      fill(255);
      pushMatrix();
       image(success,width/1.163f, height/1.33f); 
      popMatrix();
      
      if (key == '+' || key == '=') { //Start Command
      enemy = minim.loadFile("startup.mp3");
      win.pause();
      enemyX=width; 
    enemyY=height/2;
    health=10;
    X=137;
    Y=356;
    scene=6; //moves to Scene 2 (level 1)
    level2.pause();
    level3.play();
    
    
      }
  }
}
class Win3 { 
  public void Win3(){
  }

  //void drawAt will draw the robot at the specified location
  //xAnchor - horizotal anchor for where the robot is drawn
  //yAnchor - vertical anchor for where the robot is drawn
 
  public void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {

   fill(0xffFF4A03, 60); // semi-transparent white
  rect(0, 0, 6000, 6000);

   fill(0xffFF4A03, 30); // semi-transparent white
  rect(0, 0, width, height);

    
            win.play();
      level3.pause();
      fill(255);
      textSize(132);
      text("What a Time!",width/116,height/2);
      textSize(112);
      textFont(subtitle);
      text("Level 3 Complete!",width/53.333f,height/9);
      text("Hold on a Wee While Gents!",width/53.333f,height/1.8f);
      textSize(612);
      fill(255,255,255,40);
      text("VICTORY",width/116.36f,height/1.33f);
      textSize(50);
      text("Exit (ESC)",width/53.333f,height/1.04f);
      text("Next (+)",width/53.333f,height/1.13f);
      level1.pause();
      fill(255);
      pushMatrix();
       image(success,width/1.163f, height/1.33f); 
      popMatrix();
      
      if (key == '+' || key == '=') { //Start Command
      
      enemy = minim.loadFile("startup.mp3");
      win.pause();
      enemyX=width*12; 
    enemyY=height;
    health=10;
    X=137;
    Y=356;
    scene=8; //moves to Scene 2 (level 1)
    
   
      }
  }
}
  public void settings() {  fullScreen(JAVA2D);  noSmooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Adventure" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
