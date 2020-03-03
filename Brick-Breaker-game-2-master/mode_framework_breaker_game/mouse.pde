void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    
    gameClicks();
    
  } else if (mode == WIN) {
    winClicks();
  }else if (mode == PAUSE) {
    pauseClicks();
    
  } else if(mode == OPTIONS) {
    optionClicks();
    
  } else if (mode == GAMEOVER) {
    gameoverClicks();
    
  } else {
    println("Error: Mode = " + mode);
  }
}
