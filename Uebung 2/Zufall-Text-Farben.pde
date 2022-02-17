
background(255);
 fill(random(256));
 rectMode(CENTER);
 rect(50, 50, 50, 50);
 //Random Fill
 
 size(200, 200);
 fill(0);
 textAlign(CENTER);
 textSize(32);
 text("Hallo Welt!", 100, 100);
 stroke(255);
 line(100, 0, 100, 200);
 line(0, 100, 200, 100);
//Hallo Welt

void setup() {
  size(255, 100);
  colorMode(HSB);
}

void draw() {
  background(mouseX, 255, 255);
}
//Random Color
