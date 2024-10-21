void main() {
  int a = 1;
  int b = 10;
  int total = a + b;
  // print("total = $total");

  int? x; //x is nullable
  int? y; //y is nullable

  // x ?? 0 == if ( x == null) x = 0;

  // int sum = (x ?? 1) + (y ?? 3);
  // print("sum = $sum");

  // String? text;
  // int? len1 = text?.length;
  // int len2 = text!.length;
  // print(len1);
  // print(len2);

  num? n;
  n ?? 1; // if (n == null) then n = 0; write in statment
  num m = n! + 10;
  print(m);
}
