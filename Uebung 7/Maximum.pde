void setup() {
  println(max2(4, 2));
  println(max3(4, 2, 2));
}

float max2(float a, float b) {
  if ( a > b) {
    return a;
  } else {
    return b;
  }
}

float max3(float a, float b, float c) {
  if (a > b && a > c) {
    return a;
  } else if (c > b && c > a) {
    return c;
  } else {
    return b;
  }
}
