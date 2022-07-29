import 'package:club_app/model/student.dart';

class studentDemodata {
  List<Student> demodata = [
    Student(
        id: '1',
        name: 'yeard',
        password: 'yeard',
        studentId: 1,
        userName: 'yeard'),
    Student(
        id: '12',
        name: 'yeard2',
        password: 'yeard2',
        studentId: 12,
        userName: 'yeard2'),
    Student(
        id: '13',
        name: 'yeard3',
        password: 'yeard3',
        studentId: 13,
        userName: 'yeard3'),
    Student(
        id: '14',
        name: 'yeard4',
        password: 'yeard4',
        studentId: 14,
        userName: 'yeard4'),
  ];

  List<Student> demodataSend() {
    return demodata;
  }
}
