void options() {
  
    background(lightblue);
  
  
  rect(320, 125, 170, 80);
  
  fill(255);
  textSize(30);
  
  text("Main Menu", 325, 175);

 
thickness = map(sliderX, 100, 700, 100, 5);

  
  if (mousePressed) {
    if (dist(sliderX, 450, mouseX, mouseY) < 50) {
      sliderX = mouseX;
      if (sliderX > 700) sliderX = 700;
      if (sliderX < 100) sliderX = 100;
 }
 
 
 
 
 
 }
 
 
   
   
  
 
 
  line(100, 450, 700, 450);
 ellipse(sliderX, 450, 50, 50);
 
 
 
 textSize(50);
  
  fill(black);
  text("Paddle Thickness", 200, 350);
  
  
  ellipse(px, py, thickness +50, thickness + 50);
  if (rightKey) px = px +5;
  if (leftKey) px = px - 5;
  
  
  
  
}


void optionClicks() {
  
  if (mouseX > 320 && mouseX < 490 && mouseY > 125 && mouseY < 205) {
    
    mode = INTRO;

    }
  
  
}
