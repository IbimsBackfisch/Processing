class Geist {
  int x;
  int y;
  int durchmesser;
  // In Geist:
// Liefert true zurück, wenn Pacman gegessen wurde
boolean tryToEat(Pacman pacman) {
  return dist(x, y, pacman.x, pacman.y) < durchmesser/2;
}

  Geist(int gx, int gy, int d) {
    x = gx;
    y = gy;
    durchmesser = d;
  }

  void draw() {
    noStroke();
    fill(#79D3FF);  //#79D3FF

    // Körper
    ellipse(x, y, durchmesser, durchmesser);
    rectMode(CORNER);
    rect(x-durchmesser/2, y, durchmesser, durchmesser/2);

    // Augen
    rectMode(CENTER);
    fill(0);
    rect(x-durchmesser/4, y, durchmesser/4, durchmesser/8);
    rect(x+durchmesser/4, y, durchmesser/4, durchmesser/8);
  }


  // Im Gegensatz zu Pacman wollen wir einen
  // zufälligen Bewegungsschritt ausführen
  void move() {
    int richtung = (int)random(0, 4);
    if (richtung == 0) {
      moveLeft();
    }
    if (richtung == 1) {
      moveRight();
    }
    if (richtung == 2) {
      moveUp();
    }
    if (richtung == 3) {
      moveDown();
    }
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
