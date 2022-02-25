class Pacman {
// Gibt true zurück, wenn Punkt erfolgreich gegessen

boolean tryToEat(Punkt p) {
  // Punkt ist bereits gegessen
  if (!p.alive) {
    return false;
  }

  // Wenn auf gleichem Feld: Punkt essen
  if (dist(p.x, p.y, x, y) <= durchmesser/2) {
    p.alive = false; // Lecker, lecker
    return true; // Erfolgreich gegessen!
  }

  return false; // Nix gegessen
}
  int x;
  int y;
  int durchmesser;
  int state = 0;
  float animTimerSec = 0;
  float ANIM_CYCLE = .5;

  Pacman(int d) {
    durchmesser = d;
    x = d/2;
    y = d/2;
  }

  void draw() {
    noStroke();
    fill(#FFE624);
    animTimerSec += 1.0/frameRate;

    if (animTimerSec >= ANIM_CYCLE) {
      animTimerSec = 0;
      state++;
      state = state % 2;
    }

    if (state == 0) {
      ellipse(x, y, durchmesser, durchmesser);
    }
    else if (state == 1) {
      arc(x, y, durchmesser, durchmesser, radians(30),
      radians(330));
    }

    fill(0);
    ellipse(x+durchmesser/6, y-durchmesser/3, 8, 8);
  }

  void moveLeft() {
    x -= durchmesser;
    x = constrain(x, durchmesser/2, width-durchmesser/2);
  }

  void moveRight() {
    x += durchmesser;
    x = constrain(x, durchmesser/2, width-durchmesser/2);
  }

  void moveUp() {
    y -= durchmesser;
    y = constrain(y, durchmesser/2, height-durchmesser/2);
  }

  void moveDown() {
    y += durchmesser;
    y = constrain(y, durchmesser/2, height-durchmesser/2);
  }
}
