import 'package:flutter/material.dart';

class UserPostCard extends StatefulWidget {
  final String id;
  final Uri imguri;
  final String tittle;
  final String description;
  final int interested;

  const UserPostCard(
      {required this.id,
      required this.tittle,
      required this.description,
      required this.imguri,
      required this.interested});

  @override
  State<UserPostCard> createState() => _UserPostCardState();
}

class _UserPostCardState extends State<UserPostCard> {
  bool buttonIsClickedDown = false;
  bool buttonIsClickedUp = false;

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
                    image: DecorationImage(
                      image: NetworkImage(widget.imguri.toString()),
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
                    widget.tittle,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.amber,
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
                    widget.tittle,
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
