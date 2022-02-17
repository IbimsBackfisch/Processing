void setup() {
  background(255);
}

void draw() {
}

void mousePressed() {
  colorMode(HSB);
  background(random(256), mouseX * 2.56, 255);
}
