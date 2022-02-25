float timer = 0;
boolean gameOver = false;
boolean win = false;
boolean start = false;
int score = 0;
int cellSize = 40;
// neue globale Variablen
Geist[] geister = new Geist[3];
int leben = 3;
Pacman pacman = new Pacman(cellSize);
Punkt[] punkte = new Punkt[30];

void setup() {
  frameRate(60);
  size(10*cellSize, 10*cellSize);
  for (int i = 0; i < punkte.length; i++) {
    int x = (int)random(0, 10) * cellSize + cellSize/2;
    int y = (int)random(0, 10) * cellSize + cellSize/2;
    punkte[i] = new Punkt(x, y);
  }
  for (int i = 0; i < geister.length; i++) {
    int x = (int)random(3, 10) * cellSize + cellSize/2;
    int y = (int)random(3, 10) * cellSize + cellSize/2;
    geister[i] = new Geist(x, y, cellSize);
  }
}

void draw() {
  if (start == true) {
    if (gameOver == false) {
      if (win == false) {
        background(0);
        manageGeister();
        pacman.draw();
        for (int i = 0; i < punkte.length; i++) {
          boolean eaten = pacman.tryToEat(punkte[i]);

          if (eaten) {
            score += punkte[i].wert;
          }

          punkte[i].draw();
        }
        fill(255);
        textAlign(LEFT);
        textSize(24);
        text(score, 10, 30);
        if (score == 150) {
          win = true;
        }

        if (leben == 3) {
          smooth();
          noStroke();
          fill(255, 0, 0);
          beginShape();
          vertex(380, 15);
          bezierVertex(380, -5, 420, 5, 380, 40);
          vertex(380, 15);
          bezierVertex(380, -5, 340, 5, 380, 40);
          endShape();
          beginShape();
          vertex(350, 15);
          bezierVertex(350, -5, 390, 5, 350, 40);
          vertex(350, 15);
          bezierVertex(350, -5, 310, 5, 350, 40);
          endShape();
          beginShape();
          vertex(320, 15);
          bezierVertex(320, -5, 360, 5, 320, 40);
          vertex(320, 15);
          bezierVertex(320, -5, 280, 5, 320, 40);
          endShape();
        } else if (leben == 2) {
          smooth();
          noStroke();
          fill(255, 0, 0);
          beginShape();
          vertex(350, 15);
          bezierVertex(350, -5, 390, 5, 350, 40);
          vertex(350, 15);
          bezierVertex(350, -5, 310, 5, 350, 40);
          endShape();
          beginShape();
          vertex(320, 15);
          bezierVertex(320, -5, 360, 5, 320, 40);
          vertex(320, 15);
          bezierVertex(320, -5, 280, 5, 320, 40);
          endShape();
        } else if (leben == 1) {
          smooth();
          noStroke();
          fill(255, 0, 0);
          beginShape();
          vertex(320, 15);
          bezierVertex(320, -5, 360, 5, 320, 40);
          vertex(320, 15);
          bezierVertex(320, -5, 280, 5, 320, 40);
          endShape();
        } else {
          gameOver = true;
        }
      } else if (win == true) {
        if (keyPressed) {
          if (key == 32) {
            leben = 3;
            score = 0;
            for (int i = 0; i < punkte.length; i++) {
              int x = (int)random(0, 10) * cellSize + cellSize/2;
              int y = (int)random(0, 10) * cellSize + cellSize/2;
              punkte[i] = new Punkt(x, y);
            }
            for (int i = 0; i < geister.length; i++) {
              int x = (int)random(3, 10) * cellSize + cellSize/2;
              int y = (int)random(3, 10) * cellSize + cellSize/2;
              geister[i] = new Geist(x, y, cellSize);
            }
            win = false;
            gameOver = false;
          }
        } else {
          background(0);
          fill(0, 255, 0);
          textSize(36);
          textAlign(CENTER);
          text("You are pretty good!", 200, 200);
          fill(255);
          textSize(12);
          text("Press SPACE to restart!", 200, 250);
        }
      }
    } else if (gameOver == true) {
      if (keyPressed) {
        if (key == 32) {
          leben = 3;
          score = 0;
          for (int i = 0; i < punkte.length; i++) {
            int x = (int)random(0, 10) * cellSize + cellSize/2;
            int y = (int)random(0, 10) * cellSize + cellSize/2;
            punkte[i] = new Punkt(x, y);
          }
          for (int i = 0; i < geister.length; i++) {
            int x = (int)random(3, 10) * cellSize + cellSize/2;
            int y = (int)random(3, 10) * cellSize + cellSize/2;
            geister[i] = new Geist(x, y, cellSize);
          }
          gameOver = false;
          win = false;
        }
      } else {
        background(0);
        fill(255, 0, 0);
        textSize(36);
        textAlign(CENTER);
        text("Game Over", 200, 200);
        fill(255);
        textSize(12);
        text("Press SPACE to restart!", 200, 250);
      }
    }
  } else {
    if (keyPressed) {  //Schau ob eine Taste gedrückt wird.
      if (key == 32) { //Wenn diese true ist, wird Start auf true gesetzt und das Programm startet.
        start = true;
      }
    } else {
      fill(255);
      background(0);
      textAlign(CENTER);
      textSize(36);
      text("Press SPACE", 200, 200);
      textSize(12);
      text("LEFT = Pfeiltaste Links", 200, 250);
      text("RIGHT = Pfeiltaste Rechts", 200, 270);
      text("    UP = Pfeiltaste Oben", 200, 290);
      text("DOWN = Pfeiltaste Unten", 200, 310);
    }
  }
}

// Tastatursteuerung
void keyPressed() {
  if (keyCode == LEFT) {
    pacman.moveLeft();
  }
  if (keyCode == RIGHT) {
    pacman.moveRight();
  }
  if (keyCode == UP) {
    pacman.moveUp();
  }
  if (keyCode == DOWN) {
    pacman.moveDown();
  }
}

void manageGeister() {

  // Alle 50 Zyklen die Geister bewegen
  boolean move = false;
  if (timer <= 0) {
    move = true;
    timer = frameRate;
  }
  timer--; 

  for (int i = 0; i < geister.length; i++) {
    if (move) {
      geister[i].move();
    }
    geister[i].draw();

    boolean eaten = geister[i].tryToEat(pacman);
    if (eaten) {
      leben--;

      // Pacman wieder oben links erscheinen lassen
      int x = cellSize/2;
      int y = cellSize/2;
      pacman.x = x;
      pacman.y = y;
    }
  }
}

