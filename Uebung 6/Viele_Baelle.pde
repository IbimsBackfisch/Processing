int x = 100;
int y = 100;


int[] xy = new int[21];
int[] speed = new int[21];
boolean[] hit = new boolean[11];

int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom
int xdirection2 = 1;  // Left or Right
int ydirection2 = 1;  // Top to Bottom
int xdirection3 = 1;  // Left or Right
int ydirection3 = 1;  // Top to Bottom
int xdirection4 = 1;  // Left or Right
int ydirection4 = 1;  // Top to Bottom
int xdirection5 = 1;  // Left or Right
int ydirection5 = 1;  // Top to Bottom
int xdirection6 = 1;  // Left or Right
int ydirection6 = 1;  // Top to Bottom
int xdirection7 = 1;  // Left or Right
int ydirection7 = 1;  // Top to Bottom
int xdirection8 = 1;  // Left or Right
int ydirection8 = 1;  // Top to Bottom
int xdirection9 = 1;  // Left or Right
int ydirection9 = 1;  // Top to Bottom
int xdirection10 = 1;  // Left or Right
int ydirection10 = 1;  // Top to Bottom

int rad = 6;        // Width of the shape
color farbe1 = color(random(256), random(256), random(256));
color farbe2 = color(random(256), random(256), random(256));
color farbe3 = color(random(256), random(256), random(256));
color farbe4 = color(random(256), random(256), random(256));
color farbe5 = color(random(256), random(256), random(256));
color farbe6 = color(random(256), random(256), random(256));
color farbe7 = color(random(256), random(256), random(256));
color farbe8 = color(random(256), random(256), random(256));
color farbe9 = color(random(256), random(256), random(256));
color farbe10 = color(random(256), random(256), random(256));

void setup() {
  size(200, 200);
  background(0);
  xy[1] = int(random(0, 199));
  xy[2] = int(random(0, 199));
  xy[3] = int(random(0, 199));
  xy[4] = int(random(0, 199));
  xy[5] = int(random(0, 199));
  xy[6] = int(random(0, 199));
  xy[7] = int(random(0, 199));
  xy[8] = int(random(0, 199));
  xy[9] = int(random(0, 199));
  xy[10] = int(random(0, 199));
  xy[11] = int(random(0, 199));
  xy[12] = int(random(0, 199));
  xy[13] = int(random(0, 199));
  xy[14] = int(random(0, 199));
  xy[15] = int(random(0, 199));
  xy[16] = int(random(0, 199));
  xy[17] = int(random(0, 199));
  xy[18] = int(random(0, 199));
  xy[19] = int(random(0, 199));
  xy[20] = int(random(0, 199));

  speed[1] = int(random(1, 3));
  speed[2] = int(random(1, 3));
  speed[3] = int(random(1, 3));
  speed[4] = int(random(1, 3));
  speed[5] = int(random(1, 3));
  speed[6] = int(random(1, 3));
  speed[7] = int(random(1, 3));
  speed[8] = int(random(1, 3));
  speed[9] = int(random(1, 3));
  speed[10] = int(random(1, 3));
  speed[11] = int(random(1, 3));
  speed[12] = int(random(1, 3));
  speed[13] = int(random(1, 3));
  speed[14] = int(random(1, 3));
  speed[15] = int(random(1, 3));
  speed[16] = int(random(1, 3));
  speed[17] = int(random(1, 3));
  speed[18] = int(random(1, 3));
  speed[19] = int(random(1, 3));
  speed[20] = int(random(1, 3));
  ellipseMode(RADIUS);
}

void draw() {
  background(0);

  // Update the position of the shape
  xy[1] = xy[1] + ( speed[1] * xdirection );
  xy[2] = xy[2] + ( speed[2] * ydirection );
  xy[3] = xy[3] + ( speed[3] * xdirection2 );
  xy[4] = xy[4] + ( speed[4] * ydirection2);
  xy[5] = xy[5] + ( speed[5] * xdirection3 );
  xy[6] = xy[6] + ( speed[6] * ydirection3 );
  xy[7] = xy[7] + ( speed[7] * xdirection4 );
  xy[8] = xy[8] + ( speed[8] * ydirection4 );
  xy[9] = xy[9] + ( speed[9] * xdirection5 );
  xy[10] = xy[10] + ( speed[10] * ydirection5 );
  xy[11] = xy[11] + ( speed[11] * xdirection6 );
  xy[12] = xy[12] + ( speed[12] * ydirection6 );
  xy[13] = xy[13] + ( speed[13] * xdirection7 );
  xy[14] = xy[14] + ( speed[14] * ydirection7);
  xy[15] = xy[15] + ( speed[15] * xdirection8 );
  xy[16] = xy[16] + ( speed[16] * ydirection8 );
  xy[17] = xy[17] + ( speed[17] * xdirection9 );
  xy[18] = xy[18] + ( speed[18] * ydirection9 );
  xy[19] = xy[19] + ( speed[19] * xdirection10 );
  xy[20] = xy[20] + ( speed[20] * ydirection10 );


  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  if (xy[1] > width-rad || xy[1] < rad) {
    xdirection *= -1;
  }
  if (xy[2] > height-rad || xy[2] < rad) {
    ydirection *= -1;
  }
  if (xy[3] > width-rad || xy[3] < rad) {
    xdirection2 *= -1;
  }
  if (xy[4] > height-rad || xy[4] < rad) {
    ydirection2 *= -1;
  }
  if (xy[5] > width-rad || xy[5] < rad) {
    xdirection3 *= -1;
  }
  if (xy[6] > height-rad || xy[6] < rad) {
    ydirection3 *= -1;
  }
  if (xy[7] > width-rad || xy[7] < rad) {
    xdirection4 *= -1;
  }
  if (xy[8] > height-rad || xy[8] < rad) {
    ydirection4 *= -1;
  }
  if (xy[9] > width-rad || xy[9] < rad) {
    xdirection5 *= -1;
  }
  if (xy[10] > height-rad || xy[10] < rad) {
    ydirection5 *= -1;
  }
  if (xy[11] > width-rad || xy[11] < rad) {
    xdirection6 *= -1;
  }
  if (xy[12] > height-rad || xy[12] < rad) {
    ydirection6 *= -1;
  }
  if (xy[13] > width-rad || xy[13] < rad) {
    xdirection7 *= -1;
  }
  if (xy[14] > height-rad || xy[14] < rad) {
    ydirection7 *= -1;
  }
  if (xy[15] > width-rad || xy[15] < rad) {
    xdirection8 *= -1;
  }
  if (xy[16] > height-rad || xy[16] < rad) {
    ydirection8 *= -1;
  }
  if (xy[17] > width-rad || xy[17] < rad) {
    xdirection9 *= -1;
  }
  if (xy[18] > height-rad || xy[18] < rad) {
    ydirection9 *= -1;
  }
  if (xy[19] > width-rad || xy[19] < rad) {
    xdirection10 *= -1;
  }
  if (xy[20] > height-rad || xy[20] < rad) {
    ydirection10 *= -1;
  }

  if (dist(x, y, xy[1], xy[2]) < rad) {
    // ... wenn Mauszeiger im Rechteck => rot
    hit[1] = true;
  }
  if (dist(x, y, xy[3], xy[4]) < rad) {
    // ... wenn Mauszeiger im Rechteck => rot
    hit[2] = true;
  }
  if (dist(x, y, xy[5], xy[6]) < rad) {
    // ... wenn Mauszeiger im Rechteck => rot
    hit[3] = true;
  }
  if (dist(x, y, xy[7], xy[8]) < rad) {
    // ... wenn Mauszeiger im Rechteck => rot
    hit[4] = true;
  }
  if (dist(x, y, xy[9], xy[10]) < rad) {
    // ... wenn Mauszeiger im Rechteck => rot
    hit[5] = true;
  }
  if (dist(x, y, xy[11], xy[12]) < rad) {
    // ... wenn Mauszeiger im Rechteck => rot
    hit[6] = true;
  }
  if (dist(x, y, xy[13], xy[14]) < rad) {
    // ... wenn Mauszeiger im Rechteck => rot
    hit[7] = true;
  }
  if (dist(x, y, xy[15], xy[16]) < rad) {
    // ... wenn Mauszeiger im Rechteck => rot
    hit[8] = true;
  }
  if (dist(x, y, xy[17], xy[18]) < rad) {
    // ... wenn Mauszeiger im Rechteck => rot
    hit[9] = true;
  }
  if (dist(x, y, xy[19], xy[20]) < rad) {
    // ... wenn Mauszeiger im Rechteck => rot
    hit[10] = true;
  }

  // Draw the shape
  if (hit[1] == false) {
    fill(farbe1);
    ellipse(xy[1], xy[2], rad, rad);
  }
  if (hit[2] == false) {
    fill(farbe2);
    ellipse(xy[3], xy[4], rad, rad);
  }
  if (hit[3] == false) {
    fill(farbe3);
    ellipse(xy[5], xy[6], rad, rad);
  }
  if (hit[4] == false) {
    fill(farbe4);
    ellipse(xy[7], xy[8], rad, rad);
  }
  if (hit[5] == false) {
    fill(farbe5);
    ellipse(xy[9], xy[10], rad, rad);
  }
  if (hit[6] == false) {
    fill(farbe6);
    ellipse(xy[11], xy[12], rad, rad);
  }
  if (hit[7] == false) {
    fill(farbe7);
    ellipse(xy[13], xy[14], rad, rad);
  }
  if (hit[8] == false) {
    fill(farbe8);
    ellipse(xy[15], xy[16], rad, rad);
  }
  if (hit[9] == false) {
    fill(farbe9);
    ellipse(xy[17], xy[18], rad, rad);
  }
  if (hit[10] == false) {
    fill(farbe10);
    ellipse(xy[19], xy[20], rad, rad);
  }




  fill(255, 0, 0);
  ellipse(x, y, rad, rad);
  if (x == 200 || x == 0) {
    if (x == 200) {
      if (keyPressed) {
        if (keyCode == LEFT) {
          x -= 2;
        }
        if (keyCode == RIGHT) {
          //x += 2;
        }
      }
    }
    if (x == 0) {
      if (keyPressed) {
        if (keyCode == LEFT) {
          //x -= 2;
        }
        if (keyCode == RIGHT) {
          x += 2;
        }
      }
    }
  } else {
    if (keyPressed) {
      if (keyCode == LEFT) {
        x -= 2;
      }
      if (keyCode == RIGHT) {
        x += 2;
      }
    }
  }

  if (y == 200 || y == 0) {
    if (y == 200) {
      if (keyPressed) {
        if (keyCode == UP) {
          y -= 2;
        }
        if (keyCode == DOWN) {
          //x += 2;
        }
      }
    }
    if (y == 0) {
      if (keyPressed) {
        if (keyCode == UP) {
          //x -= 2;
        }
        if (keyCode == DOWN) {
          y += 2;
        }
      }
    }
  } else {
    if (keyPressed) {
      if (keyCode == UP) {
        y -= 2;
      }
      if (keyCode == DOWN) {
        y += 2;
      }
    }
  }
}
