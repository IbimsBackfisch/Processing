int background = 0;

void setup() {
  background(background);
}

void draw() {
  int Zeit = frameCount / 60;
  background(background);
  textSize(32);
  textAlign(CENTER);
  text(Zeit, 50, 50);
  println(frameCount + " Frames :  " + Zeit + " Sekunden");
}

void mousePressed() {
  frameCount = 0;
}
