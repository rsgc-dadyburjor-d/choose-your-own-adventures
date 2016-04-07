
PImage cursor;
PImage start;
 int scene = 1;
 Start bg1 = new Start();
void setup(){
size(1280,800);
frameRate(500);

start = loadImage("Adventure.jpg");

rectMode(CENTER);
textAlign(CENTER);

}
 
void draw(){

  if (scene == 1) {
     bg1.drawAt(0, 0, 0.4, 0.4);
     

 } else if (scene == 2) {
   background(40);
   
  }
  
  
}
void keyPressed() { //advances scene on keypress
  scene += 1;
}