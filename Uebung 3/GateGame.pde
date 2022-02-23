int gateX = 90;
int gateX2 = 90;
int gateY = 0;
int gateY2 = 30;
int gate2X = 90;
int gate2X2 = 90;
int gate2Y = 70;
int gate2Y2 = 100;
int rectX = 0;
float rectY = random(0, 100);
int rectB = 5;
int rectH = 5;
boolean Start = false;
int points = 0;
int gateB = 1;
int gateH = 30;
int gate2B = 1;
int gate2H = 30;
int hit = 0;
int colorgate = 0;

void setup() {
  background(255);
}
void draw() {
  if (Start == true) {
    if (keyPressed) {
      if (key == ' ') {
        points = 0;
      }
    }


    background(255);
    strokeWeight(5);
    pushStyle();
    stroke(colorgate, 0, 0);
    line(gateX, gateY, gateX2, gateY2);
    line(gate2X, gate2Y, gate2X2, gate2Y2);
    popStyle();

    if (gateY2 == 0 || gate2Y == 100) {
      if (gateY2 == 0) {
        if (keyPressed) {
          if (keyCode == UP) {
          }
          if (keyCode == DOWN) {
            gate2Y += 2;
            gateY2 += 2;
            gateH += 2;
            gate2H -= 2;
          }
        }
      }
      if (gate2Y == 100) {
        if (keyPressed) {
          if (keyCode == UP) {
            gate2Y -= 2;
            gateY2 -= 2;
            gateH -= 2;
            gate2H += 2;
          }
          if (keyCode == DOWN) {
          }
        }
      }
    } else {
      if (keyPressed) {
        if (keyCode == UP) {
          gate2Y -= 2;
          gateY2 -= 2;
          gateH -= 2;
          gate2H += 2;
        }
        if (keyCode == DOWN) {
          gate2Y += 2;
          gateY2 += 2;
          gateH += 2;
          gate2H -= 2;
        }
      }
    }

    if (gateX <= rectX && rectX <= gateX + gateB &&
      gateY <= rectY && rectY <= gateY + gateH) {
      colorgate = 255;
      points -= 1;
      hit++;
      //colorgate = 0;
    } else if (gate2X <= rectX && rectX <= gate2X + gate2B &&
      gate2Y <= rectY && rectY <= gate2Y + gate2H) {
      colorgate = 255;
      points -= 1;
      hit++;
      //colorgate = 0;
    }

    if (rectX >= 100 && hit == 0) {
      rectY = int(random(0, 94));
      rectX = 0;
      points++;
      colorgate = 0;
    } else if (rectX >= 100 && hit == 1) {
      rectY = int(random(0, 94));
      rectX = 0;
      hit--;
      colorgate = 0;
    }

    fill(0);
    textSize(12);
    textAlign(LEFT);
    text(points, 10, 15);


    rect(rectX, rectY, rectB, rectH);
    rectX += 2;
  } else {
    if (keyPressed) {  //Schau ob eine Taste gedrückt wird.
      if (keyCode == SHIFT) { //Wenn diese true ist, wird Start auf true gesetzt und das Programm startet.
        Start = true;
      }
    } else {
      background(0);
      textAlign(CENTER);
      textSize(20);
      text("Press SHIFT", 50, 50);
    }
  }
}
