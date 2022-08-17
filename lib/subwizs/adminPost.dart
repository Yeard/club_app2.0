import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class AdminPostCard extends StatefulWidget {
  final String id;
  final Uri imguri;
  final String tittle;
  final String description;
  final int interested;

  const AdminPostCard(
      {required this.id,
      required this.tittle,
      required this.description,
      required this.imguri,
      required this.interested});

  @override
  State<AdminPostCard> createState() => _AdminPostCardState();
}

class _AdminPostCardState extends State<AdminPostCard> {
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
                    widget.description,
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ), //Textstyle
                  ),
                ), //Text
                const SizedBox(
                  height: 5,
                ),
                //SizedBox
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ButtonBar(
                    buttonPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            onSurface: Color.fromARGB(255, 53, 14, 11)),
                        onPressed: null,
                        child: Text('Edit'),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            onSurface: Color.fromARGB(255, 53, 14, 11)),
                        onPressed: null,
                        child: Text('Delet'),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'INT: ',
                          style: Theme.of(context).textTheme.bodyLarge,
                          children: <TextSpan>[
                            TextSpan(
                                text: widget.interested.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pinkAccent,
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
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
