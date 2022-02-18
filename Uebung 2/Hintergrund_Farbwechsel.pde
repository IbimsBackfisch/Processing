int x = 0;
int y = 50;
int hintergrund = 0;
int farbeellipse = 255;

void setup() {
  background(hintergrund);
}

void draw() {
  background(hintergrund);
  fill(farbeellipse, 0, 0);
  int x2 = x % 100;
  strokeWeight(0);
  ellipse(x2, y, 30, 30);
  x++;
}

void mousePressed() {
  hintergrund = 255;
}

void keyPressed() {
  hintergrund = 0;
}
