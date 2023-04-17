
void drawGrid(){
  strokeWeight(1);
  noFill();
  stroke(200);
  for(int col = 0; col<9; col++){
    line(col * u, 0, col * u, 8 * u);
  }
  for (int row = 0; row < 9; row++){
    line(0, row * u, 8 * u, row * u);
  }
}
