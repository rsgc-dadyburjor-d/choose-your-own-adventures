
PImage cursor;
PImage start;
PImage player;
int mouse = mouseX;
int scene = 1;
int X=1;
int Y=1;

Start menu = new Start();
Lvl1 lvl1 = new Lvl1();
void setup() {
  size(1280, 800);
  frameRate(120);
  player = loadImage("player.png");
  start = loadImage("Adventure.jpg");

  rectMode(CENTER); //Rect loads Centered
  textAlign(CENTER);//Text Loads Centered
  imageMode(CENTER);//Images Load Centered
}

void draw() { //Runs

  if (scene == 1) { //SCENE 1
    menu.drawAt(0, 0, 1, 1);
  }

  if (key == 's' || key == 'S') { //Start Prompt
    scene=2;
  } else {
    //leave blank
  }

  if (scene == 2) { //SCENE 2 (Lvl1)
    lvl1.drawAt(0, 0, 1, 1);
    scale(10); //Player size
    image(player, X, Y); //player Sprite
  }


  if (scene == 3) {
    background(200);
  }
}
<<<<<<< HEAD


void keyPressed() { //KeyMappings for Player
=======
void keyPressed() {
>>>>>>> parent of 4957917... started descriptions

  if (key == CODED) {
    if (keyCode == LEFT) {
      X+=-4;
    
    }
     if (keyCode == RIGHT) {
      X+=4;
     }

    
    if (keyCode == UP) {
      Y+=-4;
    }
    if (keyCode == DOWN) {
      Y+=4;
    }
  }
}