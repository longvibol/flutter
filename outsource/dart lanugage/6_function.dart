void main() {
  // var a1 = sum(4, 5);
  // print("a1 = $a1");

  // display(2, 10.5, "hello");
  // displayOptional(a: 4);

  share(a: 10, b: 53);
}

// function with required
void share({required int a, required double b, String? c}) {
  double total = a + b;
  print("share a = $a , b = $b, c = $c, total = $total");
}

// optional parameter with null ? and assign default value
void view1({int? a, double? b, String? c}) {
  a ??= 0;
  b ??= 0;
  c ??= "no text";
  double total = a + b;

  print("a = $a , b = $b, c = $c, total = $total");
}

// optional parametertotal
void display([int a = 0, double b = 0, String c = "no text"]) {
  print("a = $a , b = $b, c = $c");
}

// optional parameter with null ?
void view({int? a, double? b, String? c}) {
  print("a = $a , b = $b, c = $c");
}

// optional parameter with{}
void displayOptional({int a = 0, double b = 0, String c = "no text"}) {
  print("a = $a , b = $b, c = $c");
}

//dynamic declaration easy to have bug
sum(a, b) => a + b;

// specifiec function

int add(int a, int b) {
  return a + b;
}
