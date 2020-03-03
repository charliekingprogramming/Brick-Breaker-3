color sand      = #FAE73A;
color brown     = #BC5611;
color blue      = #1000FF;
color yellow    = #FFFF00;
color orange    = #FFAA00;
color green     = #00FF00;
color red       = #FF0000;
color white     = #FFFFFF;
color black     = #000000;
color gray      = #555555;
color darkgreen = #2B4D13;
color greenbrown= #859878;
color grey      = #7A8970;
color beige     = #FAF095;
color lightblue = #11A5D8;




ArrayList<Brick> myBricks;


//mode framework variables
final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
final int WIN = 5;
final int OPTIONS = 6;
int mode = INTRO;//1: intro screen, 2: game playing, 3

float thickness = 100;
float sliderX;

int lives, bricknumber;

float bx, by, bvx, bvy; //ball variables

//paddle variables
float px, py;

//keyboard variables
boolean leftKey, rightKey;

//brick planning variables
float gridx, gridy;

void setup() {
  myBricks = new ArrayList<Brick>(); 
  
  gridx = 100;
  gridy = 50;

  sliderX = 400;
  
  lives = 3;
  
  int i = 0;
  while (i < 55) {
   myBricks.add(new Brick() ); //calling constructor
   gridx = gridx + 60;
   if (gridx >= 750) {
     gridx = 100;
     gridy = gridy + 60;
     
   }
    i++;
  }
  
  size(800, 600);
  bx = width/2;
  by = 450;
  bvx = 0;
  bvy = 1;
  
  //paddle
  px = width/2;
  py = height+10;
 
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == WIN) {
    win();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == OPTIONS) {
    options();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
