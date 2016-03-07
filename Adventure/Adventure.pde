
PImage cursor;
 int scene = 1;
 
void setup(){
size(1280,800);
frameRate(500);
noCursor();
cursor = loadImage("cursor.png");
image(cursor, 0, 0);
cursor.resize(50,50);

}
 
void draw(){

  if (scene == 1) {
 background(255);
 
 } else if (scene == 2) {
   background(20);
   
  }
  
  image(cursor, mouseX,mouseY);
}
void keyPressed() { //advances scene on keypress
  scene += 1;
}