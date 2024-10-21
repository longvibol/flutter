void main() {
//   int a1 = sum(10, 20);
//   print(a1);

//   int a2 = sub(10, 20);
//   print(a2);

//   int c1 = calculate(100, 200, sum);
//   print(c1);

//   int c2 = calculate(100, 200, (x, y) => x * y);
//   print(c2);

//   int c3 = calculate(100, 200, (x, y, z) => x * y * z);
//   print(c3);

//   String grade = getGrade(80.5, 90.5, 56);
//   print(grade);

  double total = 0;
  double avg = 0;

  String result = getAllGrade(80.5, 90.5, 56, getTotal: (_total) {
    total = _total;
  }, getAverage: (_avg) {
    avg = _avg;
  });

  print("total = $total , average = $avg, result = $result");
}

String getAllGrade(double eng, double com, double khmer,
    {required void Function(double) getTotal,
    required void Function(double) getAverage}) {
  double total = eng + com + khmer;
  double avg = total / 3;
  getTotal(total);
  getAverage(avg);
  if (avg >= 50) {
    return "Pass";
  } else {
    return "Failed";
  }
}

String getGrade(double eng, double com, double khmer) {
  double total = eng + com + khmer;
  double avg = total / 3;
  if (avg >= 50) {
    return "Pass";
  } else {
    return "Failed";
  }
}

int sum(int a, int b) => a + b;
int sub(int a, int b) => a - b;

int calculate(int a, int b, Function(int a, int b) fun) {
  return fun(a, b);
}
