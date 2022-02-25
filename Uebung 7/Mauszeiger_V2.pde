void draw() {
  background(255);
  mauszeiger(mouseX, mouseY, 255, 0, 0);
}

void mauszeiger(int x, int y, int r, int g, int b) {
  fill(r, g, b);
  ellipse(x, y, 20, 20);
}
