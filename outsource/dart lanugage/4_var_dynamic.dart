void main() {
  var a = 10;
  //a = 20.5; // it think we want to convert from int to double can not do it

  dynamic b = 50;
  b = "hello";
  b = 20;

  for (var i = 0; i < 4; i++) {
    // print("var declear = $i");
  }

  for (dynamic j = 0; j < 5; j++) {
    // print("dynamic = $j");
  }

  int x = sum(10, 20);

  //dynamic
  var y = add(10, 20);
  dynamic y1 = add(10.5, 20.5);
  var y2 = add("a = ", 5.toString());
  print(x);
  print(y2);
}

int sum(int a, int b) {
  return a + b;
}

add(a, b) {
  return a + b;
}
