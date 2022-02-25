void setup() {
  println(bereich(10, 0, 100));
  println(bereich(-10, 0, 100));
}

boolean bereich(float a, float b, float c) {
  if (a > b && a < c) {
    return true;
  } else {
    return false;
  }
}
