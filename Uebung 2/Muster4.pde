int x = 0;
int y = 0;
int blur = 255;

void draw() {
  strokeWeight(1);
  stroke(1, blur);
  line(x, 0, x, y);
  x++;
  y++;
  blur -= 2;
}
