int hintergrund = 0;
int farberect = 255;
int x = 50;
int y = 50;
int b = 40;
int h = 40;

void setup() {
  background(hintergrund);
}

void draw() {
  background(hintergrund);
  fill(farberect);
  rectMode(CENTER);
  rect(x, y, b, h);
}

void mousePressed() {
  b = b + 5;
  h = h + 5;
}

void keyPressed() {
  b = b - 5;
  h = h - 5;
}
