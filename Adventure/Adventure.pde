
PImage cursor;
PImage start;
int mouse = mouseX;
 int scene = 1;
 Start menu = new Start();
 Lvl1 lvl1 = new Lvl1();
void setup(){
size(1280,800);
frameRate(60);

start = loadImage("Adventure.jpg");

rectMode(CENTER);
textAlign(CENTER);

}
 
void draw(){

  if (scene == 1) {
     menu.drawAt(0, 0, 1, 1);
  }
    
 

 if (key == 's' || key == 'S') {
       scene=2;
       }
       else {
      scene = 1;
       }
  
 
    
    
   if (scene == 2) {
    lvl1.drawAt(0, 0, 1, 1);
    
  }
   if (scene == 3) {
     background(200);
  }


   

  
  


  scene += 1;
}