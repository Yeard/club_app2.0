import 'package:club_app/model/user.dart';

class studentDemodata {
  List<User> demodata = [
    User(
        id: '1',
        name: 'yeard',
        password: 'yeard',
        studentId: 1,
        userName: 'yeard',
        position: 'admin'),
    User(
        id: '12',
        name: 'yeard2',
        password: 'yeard2',
        studentId: 12,
        userName: 'yeard2',
        position: 'user'),
    User(
        id: '13',
        name: 'yeard3',
        password: 'yeard3',
        studentId: 13,
        userName: 'yeard3',
        position: 'user'),
    User(
        id: '14',
        name: 'yeard4',
        password: 'yeard4',
        studentId: 14,
        userName: 'yeard4',
        position: 'user'),
  ];

  List<User> demodataSend() {
    return demodata;
  }
}
