import 'package:club_app/model/post.dart';

class postDemoData {
  List<post> demoPostData = [
    post(
        id: "1",
        tittle: "Yeard the boss",
        description: "I love programing",
        interested: 100,
        imguri: Uri.parse(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')),
    post(
        id: "2",
        tittle: "Yeard the boss 2",
        interested: 40,
        description: "I love programing",
        imguri: Uri.parse('https://www.computerhope.com/jargon/j/jpg.png')),
    post(
        id: "3",
        tittle: "Yeard the boss 3",
        description: "I love programing",
        interested: 4,
        imguri: Uri.parse('https://fileinfo.com/img/ss/xl/jpg_44.png')),
    post(
        id: "4",
        tittle: "Yeard the boss 4",
        description: "I love programing",
        interested: 900,
        imguri: Uri.parse('https://www.computerhope.com/issues/ch001595.htm'))
  ];

  List<post> demodataSend() {
    return demoPostData;
  }
}
