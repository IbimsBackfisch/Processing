int hintergrund = 0;
int farbeball = 255;
int x = 0;

void setup() {
  background(hintergrund);
}

void draw() {
  background(hintergrund);
  fill(farbeball);
  ellipse(x, 50, 30, 30);
}

void mousePressed() {
  x = x + 5;
}
