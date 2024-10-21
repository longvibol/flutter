// ignore_for_file: unused_local_variable

void main() {
  final a = 10;
  const b = 20;

  // print("final = $a");
  // print("const = $b");

  Student s1 = Student(); // s1 is the var
  Student s2 = Student();
  s2 = Student(id: 1, name: "Sok");

  // const s = Student();
  //const Student s3 = Student();

  // var s1 = Student(id: 1, name: "Sok");
  // print(s1);
}

class Student {
  int id = 0;
  String name = "no name";
  Student({this.id = 0, this.name = "no Name"});
}
