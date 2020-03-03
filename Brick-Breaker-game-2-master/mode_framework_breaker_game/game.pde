void game() {
  background(0, 0, 255);

fill(255);
 rect(700, 0, 100, 50);

  int i = 0;
  while (i < 55) {
    Brick b = myBricks.get(i);
    b.act();
    b.show();
    i++;
  }

  ball();
  paddle();
  
  fill(0);
 textSize(40);
 text("Lives:" + lives , 25, 55);
  
 text("Score:" + bricknumber, 25, 105);
  
}

void gameClicks() {
  
  if (mouseX > 700 && mouseX < 800 && mouseY > 0 && mouseY < 50) {
    
    mode = PAUSE;
    
  }
  
  
  
}

void ball() {
  fill(0);
  ellipse(bx, by, 20, 20);


  // move the ball
  bx = bx + bvx;
  by = by + bvy;
  if (bx < 0 || bx > width) {

    bvx = -bvx; //bounce off the left and right walls
  }
  if (by < 0 ) {

    bvy = -bvy;//bounce off the top and bottom walls
  }
  

  if (dist(bx, by, px, py) < (thickness + 68)/2) {
    bvx = (bx - px )/10;
    bvy = (by - py )/10;
  }


  if (bricknumber >= 165) {
    mode = WIN;
    
  }
  
  if (by > 600) {
    
    lives = lives - 1;
    bx = width/2;
    by = 450;
    bvx = 0;
    bvy = 1;
  } 
  
  if (lives == 0) {
    
    mode = GAMEOVER;
    
  }
}


void paddle() {
  fill(255);
  ellipse(px, py, thickness + 50, thickness + 50);
  if (rightKey) px = px +5;
  if (leftKey) px = px - 5;
  
  
  
  
}
