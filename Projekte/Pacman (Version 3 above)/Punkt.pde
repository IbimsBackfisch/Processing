class Punkt {
  int x;
  int y;
  int wert = 5;
  boolean alive = true;

  Punkt(int px, int py) {
    x = px;
    y = py;
  }

  void draw() {
    // zeichne nur, wenn noch nicht gefressen
    if (alive) {
      noStroke();
      fill(#FF52F4);
      ellipse(x, y, 10, 10);
    }
  }
}
