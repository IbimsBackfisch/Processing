void setup() {
size(200, 200);
}

void draw() {}

void keyPressed() {
rectMode(CENTER);
fill(255);
rect(mouseX, mouseY, 20, 20);
}

void mousePressed() {
 fill(255); 
  ellipse(mouseX, mouseY, 20, 20);
}
