void main() {
  // Student s1 = new Student(1, "Sok", 78.6);
  // print(s1.name);

  final Student s2 = Student(id: 1, name: "Dara", score: 100);
  print(s2.isPassed());
}

class Student {
  late int id;
  late String name;
  late double score;

  // create consturctor

  // Student(int id, String name, double score) {
  //   this.id = id;
  //   this.name = name;
  //   this.score = score;
  // }

  // short consturctor form
  //Student(this.id, this.name, this.score);

  // Student(this.id) == error

  // use optional {}
  Student({this.id = 0, this.name = "sok", this.score = 40});

  Student.formMap(Map map) {
    this.id = map['id'];
    this.name = map['name'];
    this.score = map['score'];
  }

  bool isPassed() {
    if (score >= 50) return true;
    return false;
  }
}
