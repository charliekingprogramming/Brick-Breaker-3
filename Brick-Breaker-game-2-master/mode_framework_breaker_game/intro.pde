void intro() {
  
  background(5, 10, 30);
  
  
  
  fill(240, 229, 10);
  
  rect(320, 425, 170, 80);
  
  fill(0);
  textSize(40);
  
  text("Options", 325, 475);

  
  fill(255);
 rect(300, 250, 200, 100);
 
 fill(123, 123, 123);
 textSize(80);
 text("Play" , 325, 325);
 
 textSize(100);
 fill(255);
 
 text("Brick Breaker", 100, 100);

}
 
 void introClicks() {
 if (mouseX > 300 && mouseX < 500 && mouseY > 250 && mouseY < 350) {
    
    mode = GAME;
    setup();
    
 } 
 
 if (mouseX > 320 && mouseX < 490 && mouseY > 425 && mouseY < 505) {
    
    mode = OPTIONS;

    }
 
}
