void drawBG() {
  for (int i = 0; i< height; i++) {
    stroke(150, i, 200);
    line(0,i,width,i);
  }
}