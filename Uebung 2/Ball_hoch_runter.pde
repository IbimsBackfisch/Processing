int x = 0;
int y = 50;
int hintergrund = 0;
int farbeellipse = 255;

void setup() {
  background(hintergrund);
}

void draw() {
  background(hintergrund);
  fill(farbeellipse);
  int x2 = x % 100;
  strokeWeight(0);
  ellipse(x2, y, 30, 30);
  x++;
}

void mousePressed() {
y = y + 5;
}

void keyPressed() {
y = y- 5;
}
