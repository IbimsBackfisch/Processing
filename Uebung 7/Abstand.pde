void setup() {
  println(difference(5.5, 10.5));
  println(difference(1.5, 0));
}

float difference(float a, float b) {
  if (a > b) {
    a = a-b;
    return a;
  } else {
    b = b - a;
    return b;
  }
}
