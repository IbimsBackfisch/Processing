int x = 0;
int y = 50;
int hintergrund = 0;
int farbeellipse = 255;
int speed = 1;

void setup() {
  background(hintergrund);
}

void draw() {
  background(hintergrund);
  fill(0, farbeellipse, 0);
  int x2 = x % 100;
  strokeWeight(0);
  ellipse(x2, y, 20, 20);
  x = x + speed;
  println("Speed (in px):" + speed);
}

void mousePressed() {
speed = speed + 1;
}

void keyPressed() {
speed = 1;
}
