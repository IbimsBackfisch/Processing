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

int allefrauen = 0;
for (int i = 0; i < alter.length; i++) {

  if (weiblich[i]) {
    allefrauen++;
  }
}


int unter40 = 0;
for (int i = 0; i < alter.length; i++) {

  if (alter[i] < 40) {
    unter40++;
  }
}

int maenner30 = 0;
for (int i = 0; i < alter.length; i++) {
  if (!weiblich[i]) {
    if (alter[i] > 30) {
      maenner30++;
    }
  }
}

println("Es gibt insgesamt " + allefrauen + " Frauen");
println("Es gibt insgesamt " + unter40 + " Personen unter 40 Jahren.");
println("Es gibt insgesamt " + maenner30 + " Männer über 30 Jahren.");
