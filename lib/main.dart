import 'package:club_app/wizs/login.dart';
import 'package:club_app/wizs/student_deshBord.dart';
import 'package:flutter/material.dart';
import './wizs/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login_page(),
      routes: {
        '/StudentDashBord': (context) => StudentDashBord(),
      },
    );
  }
}
