
void setup() {
}

void draw() {
  background(200);
  int x = 100;
  int y = 100;
  int b = 20;
  int h = 20;
  int farbe1 = 255;
  int farbe2 = 0;
  fill(farbe1);
  ellipse(mouseX, mouseY, b, h);
  fill(farbe2);
  ellipse(x- mouseX, y- mouseY, b, h);
}
