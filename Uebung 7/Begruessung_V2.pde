void setup() {
  greet("Huber", false);
}

void greet(String name, boolean weiblich) {
  if (weiblich) {
    println("Hallo Frau " + name);
  } else {
    print("Hallo Herr " + name);
  }
}
