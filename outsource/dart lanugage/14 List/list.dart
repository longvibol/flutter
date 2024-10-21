void main() {
  List list1 = List.empty();
  List list2 = [1, 5.6, true, "Hello", 10];

  //list2.forEach((element) => print(element));
  // print("List $list2");

  // for (var e in list2) {
  //   if (e is String) {
  //     print(e);
  //   }
  // }

  List<String> fruits = ["coconut", "orange", "apple", "pineapple"];

  List<String> newList = fruits.map((e) => " $e fruits ").toList();
  print(newList);

  // fruits.sort((a, b) => a.compareTo(b));
  // print(fruits);

  // fruits.sort((a, b) => b.compareTo(a));
  // print(fruits);

  // fruits.add("duran");
  // fruits[0] = ("Grab");
  // fruits[1] = "Grab-1";
  // fruits.insert(2, "Blue Berry");
  // print("Element: $fruits");
  // fruits.remove(fruits.last);
  // print("Remove Last element: $fruits");
  // fruits.remove(fruits.first);
  // print("Remove First element: $fruits");

  // List<String> found = fruits.where((element) => element == "coconut").toList();
  // print(found);

  // List<String> found1 =
  //     fruits.where((element) => element.startsWith("o")).toList();
  // print(found1);

  // List<String> found2 =
  //     fruits.where((element) => element.contains("apple")).toList();
  // print(found2);

  // List<String> found3 = fruits
  //     .where((element) => element.toLowerCase().contains("APPle".toLowerCase()))
  //     .toList();
  // print(found3);
}
