int[] foo = { 22, -10, 8, 10};

for (int i = 1; i < foo.length; i++) {
  foo[i] = foo[i] + foo[i-1];
}
println(foo[foo.length - 1]);
