
void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  line(mouseX, 0, mouseX, 400);
  line(0, mouseY, 400, mouseY);
  
}
