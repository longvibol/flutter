void main() {
  User user = User();

  user.login();
}

class User {
  late String username;
  late String password;

  void login() {
    print("user Login");
  }

  void logout() {
    print("user out");
  }
}
