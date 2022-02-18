
void draw() {
  background(255);
  int x = 10;
  int y = 100;

  fill(255);
  rect(x, mouseY, 3 * x, y);
  rect(6 * x, mouseY, 3 * x, y);

  fill(0);
  rect(-x, y, 3 * x, -mouseY);
  rect(3 * x, y, 4 * x, -mouseY);
  rect(8 * x, y, 3 * x, -mouseY);
}
