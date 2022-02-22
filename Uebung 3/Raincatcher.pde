//Variablen für den Eimer

int eimerX = 80;
int eimerY = 180;
int eimerB = 40;
int eimerH = 15;

//Variablen für den Kreis (Durchmesser und X, Y)

float diameter = 25;
float y = random(0, 200); //Zufallszahl für den Start
float y2 = random(0, 200);
float y3 = random(0, 200);
float x = random(26, 176); //Zufallszahl, damit der Ball nicht abgeschnitten wird am Rand des Bildes.
float x2 = random(26, 176);
float x3 = random(26, 176);

//Farben für den Eimer und den Regen

color eimer = color(255);
color ball1 = color(random(256)); //Legt Zufallsfarbe für den Anfang fest.
color ball2 = color(random(256));
color ball3 = color(random(256));

int points = 0; //Variable für die Punkte
int leben = 3; //Variable für die Leben
boolean Start = false; //Solange dies false ist, steht auf dem Display : Press SHIFT

void setup() {
  size(200, 200);
}

void draw () {
  //Schaut ob Start true ist und wenn ja, startet das Programm.
  if (Start == true) {
    background(#50DB7A); //Hintergrund für die Animationen
    noStroke();
    fill(eimer);
    //rectMode(CENTER);
    rect(eimerX, eimerY, eimerB, eimerH); //Eimer
    stroke(0);

    //Bewegung und Steuerung des Eimers

    if (eimerX == 0 || eimerX == 160) {
      if (eimerX == 0) {
        if (keyPressed) {
          if (keyCode == LEFT) {
            //eimerX--; //Verhindert fahren nach Links, wenn der Eimer am linken Rand ist.
          }
          if (keyCode == RIGHT) {
            eimerX += 2;
          }
        }
      }
      if (eimerX == 160) {
        if (keyPressed) {
          if (keyCode == LEFT) {
            eimerX -= 2;
          }
          if (keyCode == RIGHT) {
            //eimerX++; //Verhindert fahren nach Rechts, wenn der Eimer am rechten Rand ist.
          }
        }
      }
    } else {
      if (keyPressed) {
        if (keyCode == LEFT) {
          eimerX -= 2;
        }
        if (keyCode == RIGHT) {
          eimerX += 2;
        }
      }
    }

    //Steuerung der Bälle (Farbe, zufällige X-Koordinate und Abzug von Leben)

    if (y >= 199 || y2 >= 199 || y3 >= 199) {
      if (y >= 199) {
        ball1 = int(random(256));
        y = 0;
        x = random(26, 176);
        leben--;
      } else if (y2 >= 199) {
        ball2 = int(random(256));
        y2 = 0;
        x2 = random(26, 176);
        leben--;
      } else if (y3 >= 199) {
        ball3 = int(random(256));
        y3 = 0;
        x3 = random(26, 176);
        leben--;
      }
    }

    //Testet, ob der Regen den Eimer trifft und macht das Gleiche, wie im oberen Teil.

    if (eimerX <= x && x <= eimerX + eimerB &&
      (eimerY - 10) <= y && y <= (eimerY - 10) + eimerH) {

      ball1 = int(random(256));
      y = 0;
      x = random(26, 176);
      points++;
    } else if (eimerX <= x2 && x2 <= eimerX + eimerB &&
      (eimerY - 10) <= y2 && y2 <= (eimerY - 10) + eimerH) {

      ball2 = int(random(256));
      y2 = 0;
      x2 = random(26, 176);
      points++;
    } else if (eimerX <= x3 && x3 <= eimerX + eimerB &&
      (eimerY - 10) <= y3 && y3 <= (eimerY - 10) + eimerH) {

      ball3 = int(random(256));
      y3 = 0;
      x3 = random(26, 176);
      points++;
    }

    //Text für die Punkteanzeige

    textSize(16);
    textAlign(LEFT);
    text("Punkte: " + points, 10, 20);

    //Text für die Lebensanzeige

    textSize(16);
    textAlign(RIGHT);
    text("Leben: " + leben, 190, 20);

    //Legt die Farbe für den Regen fest und dient zur Animation.

    fill(ball1);
    ellipse(x, y, diameter, diameter);
    y++;
    fill(ball2);
    ellipse(x2, y2, diameter, diameter);
    y2++;
    fill(ball3);
    ellipse(x3, y3, diameter, diameter);
    y3++;
  } else {
    if (keyPressed) {  //Schau ob eine Taste gedrückt wird.
      if (keyCode == SHIFT) { //Wenn diese true ist, wird Start auf true gesetzt und das Programm startet.
        Start = true;
      }
    } else {
      background(0);
      textAlign(CENTER);
      textSize(36);
      text("Press SHIFT", 100, 100);
    }
  }
}
