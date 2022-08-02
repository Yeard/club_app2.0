import 'package:flutter/material.dart';
import './demo_data_student.dart';

class User {
  final String id;
  final String name;
  final int studentId;
  final String userName;
  final String password;
  final String position;

  User(
      {required this.id,
      required this.name,
      required this.password,
      required this.studentId,
      required this.userName,
      required this.position});

  static loginCheck(String userName, String password) {
    List<User> demodata = studentDemodata().demodataSend();

    int found = 0;

    for (int n = 0; n < demodata.length; n++) {
      if (demodata[n].userName == userName &&
          demodata[n].password == password) {
        found = 1;

        return demodata[n];
      }
    }

    if (found != 1) {
      return 'no';
    }
  }
}
