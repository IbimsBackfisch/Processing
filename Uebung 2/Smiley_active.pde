int x = 50;
int y = 50;


void setup() {
  background(0);
}


void draw() {
  background(0);
  fill(#DCEA45);
  ellipse(mouseX, mouseY, x, y);
  arc(mouseX, mouseY, x - 20, y - 30, radians(0), radians(180));
  ellipse(mouseX - 10, mouseY - 10, x / 5, y / 5);
  ellipse(mouseX + 10, mouseY - 10, x / 5, y / 5);
}
