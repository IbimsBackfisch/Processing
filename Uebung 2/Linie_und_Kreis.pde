void setup () {
  background(255);
}

void draw() {
  background(255);
  line(mouseX, 0, mouseX, 100);
  ellipseMode(CENTER);
  ellipse(mouseX / 2, 50, mouseX, mouseX);
}
