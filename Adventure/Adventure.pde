
PImage cursor;
PImage start;
int mouse = mouseX;
 int scene = 1;
 Start bg1 = new Start();
void setup(){
size(1280,800);
frameRate(60);

start = loadImage("Adventure.jpg");

rectMode(CENTER);
textAlign(CENTER);

}
 
void draw(){

  if (scene == 1) {
     bg1.drawAt(0, 0, 0.4, 0.4);
  }
    
   else if (key == 'b' || key == 'B') {
       scene=2;
       }
       else {
      scene = 1;
       }

  
 
    
    
   if (scene == 2) {
     background(200);
  }


   

  
  


  scene += 1;
}