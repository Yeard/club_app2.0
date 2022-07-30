import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class postCard extends StatefulWidget {
  const postCard({Key? key}) : super(key: key);

  @override
  State<postCard> createState() => _postCardState();
}

class _postCardState extends State<postCard> {
  bool buttonIsClickedDown = false;
  bool buttonIsClickedUp = false;
  String heading = 'Programing';
  String bodyText =
      'GeeksforGeeks is a computer science portal for geeks at geeksforgeeks.org. It contains well written  hi hi hi hi ki k i ki ij  ujh uhu h hu It contains well written It contains well written .';
  Uri imgUral = Uri.parse(
      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg');

  @override
  Widget build(BuildContext context) {
    return Center(
      /** Card Widget **/
      child: Card(
        margin: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        elevation: 50,
        shadowColor: Colors.black,
        color: Color.fromARGB(255, 74, 170, 243),
        child: SizedBox(
          width: double.infinity,
          height: 350,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Color.fromARGB(255, 241, 239, 239),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //SizedBox
                Container(
                  height: 32,
                  width: double.infinity,
                  child: Text(
                    heading,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ), //Text
                const SizedBox(
                  height: 10,
                ), //SizedBox
                Container(
                  height: 55,
                  child: Text(
                    bodyText,
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ), //Textstyle
                  ),
                ), //Text
                const SizedBox(
                  height: 5,
                ), //SizedBox
                ButtonBar(
                  buttonPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_circle_up,
                        size: 35,
                      ),
                      color: buttonIsClickedUp == true
                          ? Color.fromARGB(255, 102, 232, 106)
                          : Colors.white,
                      onPressed: () {
                        buttonIsClickedUp = true;
                        buttonIsClickedDown = false;

                        setState(() {});
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_circle_down,
                        size: 35,
                      ),
                      color: buttonIsClickedDown == true
                          ? Color.fromARGB(255, 250, 10, 10)
                          : Color.fromARGB(255, 243, 243, 243),
                      onPressed: () {
                        buttonIsClickedDown = true;
                        buttonIsClickedUp = false;

                        setState(() {});
                      },
                    ),
                  ],
                )
              ],
            ), //Column
          ), //Padding
        ), //SizedBox
      ),
      //Card
    );
  }
}
