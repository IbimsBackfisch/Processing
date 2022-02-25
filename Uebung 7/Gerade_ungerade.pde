void setup() {
  println(istGerade(4));
}

boolean istGerade(int a) {
  a = a % 2;
  if (a == 0) {
    return true;
  } else {
    return false;
  }
}
