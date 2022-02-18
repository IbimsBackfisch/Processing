void setup() {
  background(255);
}

void draw () {
  background (255);
  noStroke();
  rectMode(CENTER);
  rect(50, 50, 80, 80);
  fill(mouseX * 2.56);
}
