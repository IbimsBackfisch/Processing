
int eimerX = 80;
int eimerY = 180;
int eimerB = 40;
int eimerH = 15;
float diameter = 25;
float y = random(0, 200);
float y2 = random(0, 200);
float y3 = random(0, 200);
float x = random(26, 176);
float x2 = random(26, 176);
float x3 = random(26, 176);
color eimer = color(255);
color ball1 = color(random(256));
color ball2 = color(random(256));
color ball3 = color(random(256));
int points = 0;
int leben = 3;

void setup() {
  background(#50DB7A);
  size(200, 200);
}

void draw () {
  background(#50DB7A);
  noStroke();
  fill(eimer);
  //rectMode(CENTER);
  rect(eimerX, eimerY, eimerB, eimerH);
  stroke(0);

  if (eimerX == 20 || eimerX == 179) {
    if (eimerX == 20) {
      if (keyPressed) {
        if (keyCode == LEFT) {
          //eimerX--;
        }
        if (keyCode == RIGHT) {
          eimerX++;
        }
      }
    }
    if (eimerX == 179) {
      if (keyPressed) {
        if (keyCode == LEFT) {
          eimerX--;
        }
        if (keyCode == RIGHT) {
          //eimerX++;
        }
      }
    }
  } else {
    if (keyPressed) {
      if (keyCode == LEFT) {
        eimerX--;
      }
      if (keyCode == RIGHT) {
        eimerX++;
      }
    }
  }
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

  textSize(16);
  textAlign(LEFT);
  text("Punkte: " + points, 10, 20);

  textSize(16);
  textAlign(RIGHT);
  text("Leben: " + leben, 190, 20);

  fill(ball1);
  ellipse(x, y, diameter, diameter);
  y++;
  fill(ball2);
  ellipse(x2, y2, diameter, diameter);
  y2++;
  fill(ball3);
  ellipse(x3, y3, diameter, diameter);
  y3++;
}
