int farbe = 0;
int farbekreis = 255;

void keyPressed() {
farbe=255;
farbekreis=0;
}

void mousePressed() {
 farbe=0;
 farbekreis=255;
}

void draw() {
  background(farbe);
  rectMode(CENTER);
  fill(farbekreis);
  ellipse(50, 50, 30, 30);
}
