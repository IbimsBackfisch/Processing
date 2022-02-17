void setup() {
  background(255);
}

void draw() {
}

void mousePressed() {
  fill(random(256));
  rect(random(0, 99), random(0, 99), random(5, 40), random(5, 40));
}
