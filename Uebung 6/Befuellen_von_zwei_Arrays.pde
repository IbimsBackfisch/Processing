int[] foo = new int[10];
int[] boo = new int[10];

for (int i = 0; i < foo.length; i++) {
  foo[i] = i;
  boo[i] = i -10;
}
println(foo);
println(boo);
