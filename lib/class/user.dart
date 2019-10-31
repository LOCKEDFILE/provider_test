import 'package:flutter/material.dart';

class User {
  String name;
  int value;
  User({this.name, this.value});
}

class UserList with ChangeNotifier {
  List<User> user = [];
  UserList() {
    user.add(User(name: 'hi', value: 1));
  }

  void addUser(User friend) {
    user.add(friend);
    notifyListeners();
  }

  void removeUser(String name) {
    List<String> names = user.map((v) => v.name).toList();
    if (names.contains(name)) {
      int ind = names.indexOf(name);
      user.removeAt(ind);
      notifyListeners();
    }
  }
}
