
void setup() {
  println(istPrim(7));
  println(istPrim(15));
  println(istPrim(97));
}

boolean istPrim(int a) {
  if (a == 2 || a == 3) {
    return true;
  } else if (a % 2 == 0 || a % 3 == 0) {
    return false;
  } else {
    return true;
  }
}

//https://linuxtut.com/de/043c3061ea7f72d76c2c/
