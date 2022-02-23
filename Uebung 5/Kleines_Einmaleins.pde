
for (int z = 0; z < 11; z++) {
  println("Die " + z + "er-Reihe:");

  for (int s = 0; s < 11; s++) {
    int e = z*s;
    println(z + " x " + s, "ist " + e);
  }
}
