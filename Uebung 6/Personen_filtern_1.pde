
String[] namen = {
  "Max Schmidt", "Lisa Marx", "Robin Meier",
  "Lara Huber", "Anna Groß", "Heribert Lehmann",
  "Harry Potter", "Obi-wan Kenobi", "Julia Kron"
};
int[] alter = {
  33, 28, 12,
  22, 23, 64,
  16, 102, 18
};
boolean[] weiblich = {
  false, true, false,
  true, true, false,
  false, false, true
};

for (int i = 0; i < namen.length; i++) {
  if (weiblich[i]) {
    print("Frau ");
  } else {
  }
  if (weiblich[i]) {
    println(namen[i]);
  }
}
