import 'package:club_app/model/user.dart';
import 'package:club_app/subwizs/post.dart';
import 'package:club_app/wizs/user_main_drawer.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class UserDashBord extends StatefulWidget {
  const UserDashBord({Key? key}) : super(key: key);

  @override
  State<UserDashBord> createState() => _UserDashBordState();
}

class _UserDashBordState extends State<UserDashBord> {
//

//

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)?.settings.arguments as User;

    return Scaffold(
        appBar: AppBar(title: Text('User Dash Bord')),
        drawer: UserMainDrawer(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              postCard(),
              postCard(),
              postCard(),
              postCard(),
              Text(user.id),
              Text(user.userName),
              Text(user.password),
              Text(user.userName),
              Text(user.studentId.toString()),
              Text(user.name,
                  style: DefaultTextStyle.of(context)
                      .style
                      .apply(fontSizeFactor: 2.0)),
            ],
          ),
        ));
  }
}
