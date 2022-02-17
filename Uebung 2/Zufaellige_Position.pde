float x = 0;
float y = 0;
int background = 255;
int kreisfarbe = 0;

void draw () {
  background(background);
  fill(kreisfarbe);
  ellipse(x, y, 10, 10);
}

void mousePressed() {
  x= random(0, 99);
  y= random(0, 99);
}
