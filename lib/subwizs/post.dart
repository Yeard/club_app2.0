import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class postCard extends StatelessWidget {
  const postCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      /** Card Widget **/
      child: Card(
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
                Text(
                  'Programing',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ), //Textstyle
                ), //Text
                const SizedBox(
                  height: 10,
                ), //SizedBox
                const Text(
                  'GeeksforGeeks is a computer science portal for geeks at geeksforgeeks.org. It contains well written,',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ), //Textstyle
                ), //Text
                const SizedBox(
                  height: 10,
                ), //SizedBox
                SizedBox(
                  width: 100,

                  child: ElevatedButton(
                    onPressed: () => 'Null',
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 82, 68, 231))),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Row(
                        children: const [Icon(Icons.touch_app), Text('Visit')],
                      ),
                    ),
                  ),
                  // RaisedButton is deprecated and should not be used
                  // Use ElevatedButton instead

                  // child: RaisedButton(
                  //   onPressed: () => null,
                  //   color: Colors.green,
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(4.0),
                  //     child: Row(
                  //       children: const [
                  //         Icon(Icons.touch_app),
                  //         Text('Visit'),
                  //       ],
                  //     ), //Row
                  //   ), //Padding
                  // ), //RaisedButton
                ) //SizedBox
              ],
            ), //Column
          ), //Padding
        ), //SizedBox
      ),
      //Card
    ); //Ce
  }
}
