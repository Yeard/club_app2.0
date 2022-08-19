import 'package:club_app/model/post.dart';

class postDemoData {
  List<post> demoPostData = [
    post(
        id: "1",
        tittle: "Yeard the boss",
        description: "I love programing",
        interested: 100,
        imguri: Uri.parse(
            'https://previews.123rf.com/images/ket4up/ket4up1602/ket4up160200038/51635711-best-choice-vector-banner-red-curved-paper-banner-isolated-on-white-background-ribbon.jpg')),
    post(
        id: "2",
        tittle: "Yeard the boss 2",
        interested: 40,
        description: "I love programing",
        imguri: Uri.parse(
            'https://previews.123rf.com/images/maxborovkov/maxborovkov1809/maxborovkov180900067/110330061-autumn-welcome-sign-with-colorful-maple-leaves-vector-background-.jpg')),
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
        imguri: Uri.parse(
            'https://previews.123rf.com/images/hamzaali01/hamzaali011705/hamzaali01170500656/78587988-thank-you-letters-vector-word-banner-sign.jpg'))
  ];

  List<post> demodataSend() {
    return demoPostData;
  }
}
