void main() {
  List<Map> listUsers = [
    {'id': 1, "username": "mario", "password": "123"},
    {'id': 2, "username": "mario", "password": "123"},
    {'id': 3, "username": "mario", "password": "123"},
    {'id': 4, "username": "mario", "password": "123"},
  ];

  // for (int i = 0; i < listUsers.length; i++) {
  //   print(listUsers[i]);
  // }

  // listUsers.forEach((user) => print(user));

  for (var user in listUsers) {
    print(user);
  }
}
