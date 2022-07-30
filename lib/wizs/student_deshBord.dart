import 'package:club_app/model/student.dart';
import 'package:club_app/subwizs/post.dart';
import 'package:club_app/wizs/main_drawer.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class StudentDashBord extends StatefulWidget {
  const StudentDashBord({Key? key}) : super(key: key);

  @override
  State<StudentDashBord> createState() => _StudentDashBordState();
}

class _StudentDashBordState extends State<StudentDashBord> {
//

//

  @override
  Widget build(BuildContext context) {
    final student = ModalRoute.of(context)?.settings.arguments as Student;

    return Scaffold(
        appBar: AppBar(title: Text('Student Dash Bord')),
        drawer: MainDrawer(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              postCard(),
              postCard(),
              Text(student.id),
              Text(student.userName),
              Text(student.password),
              Text(student.userName),
              Text(student.studentId.toString()),
              Text(student.name,
                  style: DefaultTextStyle.of(context)
                      .style
                      .apply(fontSizeFactor: 2.0)),
            ],
          ),
        ));
  }
}
