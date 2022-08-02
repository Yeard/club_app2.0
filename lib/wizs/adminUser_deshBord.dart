import 'package:club_app/wizs/adminUser_main_drawer.dart';
import 'package:club_app/wizs/user_main_drawer.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../model/user.dart';
import '../subwizs/adminPost.dart';
import '../subwizs/userPost.dart';

class AdminUserDeshBord extends StatefulWidget {
  const AdminUserDeshBord({Key? key}) : super(key: key);

  @override
  State<AdminUserDeshBord> createState() => _AdminUserDeshBordState();
}

class _AdminUserDeshBordState extends State<AdminUserDeshBord> {
  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)?.settings.arguments as User;
    return Scaffold(
        appBar: AppBar(title: Text('Admin Dash Bord')),
        drawer: AdminUserMainDrawer(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AdminPostCard(),
              AdminPostCard(),
              AdminPostCard(),
              AdminPostCard(),
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
