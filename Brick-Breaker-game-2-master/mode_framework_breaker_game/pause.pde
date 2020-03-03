void pause() {
  
  background(150, 150, 150);
  
   fill(255);
 rect(300, 250, 200, 100);
  
}

void pauseClicks() {
  
   if (mouseX > 300 && mouseX < 500 && mouseY > 250 && mouseY < 350) {
    
    mode = GAME;
    
    
 } 
  
}
