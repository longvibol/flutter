void main() {
  // display1(title: "Khmer News", body: "First News");
  // String? title;
  // title = "Hello World";

  // if (title != null) {
  //   print(title);
  // } else {
  //   print("No Informaton!");
  // }

  late String email;
  String? pass;
  email = "admin";

  // print(email);
  // print(pass ?? "123");

  bool isActive = true;
  // print(isActive ? "Ture" : "False");

  Scaffold(
    appBar: AppBar(),
  );

  var result = findMax(a: 20, b: 10);
  print(result);
}

// Decare function with parameter : in flutte it use like this
void display({String? title, String? body}) {
  print(title);
  print(body);
}

// Decare function with parameter with required
void display1({required String title, required String body}) {
  print(title);
  print(body);
}

class Scaffold {
  final AppBar? appBar;
  Scaffold({this.appBar});
}

class AppBar {}

double findMax({required double a, required double b}) {
  if (a > b) return a;
  return b;
}
