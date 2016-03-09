
PImage cursor;
PImage start;
 int scene = 1;
 
void setup(){
size(1280,800);
frameRate(500);
noCursor();
start = loadImage("Adventure.jpg");
cursor = loadImage("cursor.png");

cursor.resize(50,50);
rectMode(CENTER);
textAlign(CENTER);
}
 
void draw(){

  if (scene == 1) {
image(start, 0,0);
 fill(20);
 rect(displayWidth/8, displayHeight/2, displayWidth/3, displayHeight);
 fill(200);
textSize(32);
text("Start", displayWidth/8, displayHeight/2); 
 textSize(32);
text("Options", displayWidth/8, displayHeight*2/3); 
 } else if (scene == 2) {
   background(20);
   
  }
  
  image(cursor, mouseX,mouseY);
}
void keyPressed() { //advances scene on keypress
  scene += 1;
}