int farbe = 0;

void keyPressed() {
  farbe=255;
}

void mousePressed() {
  farbe=0;
}

void draw() {
  background(farbe);
  rectMode(CENTER);
  rect(50, 50, 40, 40);
}
