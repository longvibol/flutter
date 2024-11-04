void main() {
  Employee emp = Employee();
  emp.register(id: 1, fullName: "Vibol", gender: "Male", phone: 8888);

  User user = User();

  user.registerUser(
      id: emp.id,
      fullName: emp.fullName,
      gender: emp.gender,
      phone: emp.phone,
      userName: "vibol",
      passWord: "123");

  print(user.passWord);
}

class Employee {
  late double id;
  late String fullName;
  late String gender;
  late double phone;

  void register(
      {required double id,
      required String fullName,
      required String gender,
      required double phone}) {
    this.id = id;
    this.fullName = fullName;
    this.gender = gender;
    this.phone = phone;
  }
}

class User extends Employee {
  late String userName;
  late String passWord;

  void registerUser(
      {required double id,
      required String fullName,
      required String gender,
      required double phone,
      required String userName,
      required String passWord}) {
    this.userName = userName;
    this.passWord = passWord;
  }
}
