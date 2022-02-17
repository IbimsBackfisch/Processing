void setup() {
  background(255);
  size(255, 100);
}

void draw() {
  colorMode(HSB);
  background(mouseX, mouseY * 2.56, 255);
}
