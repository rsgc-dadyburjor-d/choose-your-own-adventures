
PImage cursor;
PImage start;
 int scene = 1;
 Start bg1 = new Start();
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
     bg1.drawAt(0, 0, 0.4, 0.4);

 } else if (scene == 2) {
   background(20);
   
  }
  
  image(cursor, mouseX,mouseY);
}
void keyPressed() { //advances scene on keypress
  scene += 1;
}