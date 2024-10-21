import 'dart:convert';

void main() {
  // Map map1 = Map();
  // map1["id"] = 1;
  // map1["name"] = "Sok";

  // print(map1);

  // Map map = {1: "Hello", true: 5.5, "hi": 10};
  // print(map);

  Map<String, dynamic> jsonData = {
    "id": 1,
    "name": "Sok",
    "score": 75.6,
    "tel": ["012 333 4444", "093 4343"]
  };

  jsonData.addAll({"passed": true});

  jsonData["id"] = 2;
  print(jsonData);
  // jsonData.remove("name");
  // jsonData.clear();

  // print(jsonData.keys);
  // print(jsonData.values);
}
