
void setup() {
}

void draw() {
  background(200);
  int x = 0;
  int y = 0;
  int b = 20;
  int h = 20;
  int farbe1 = 255;
  line(x, y, mouseX, mouseY);
  fill(farbe1);
  ellipse(mouseX, mouseY, b, h);
  fill(farbe1);
  ellipse(mouseX / 2, mouseY / 2, b, h);
}
