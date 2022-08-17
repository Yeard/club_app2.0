import 'package:club_app/model/user.dart';
import 'package:club_app/subwizs/userPost.dart';
import 'package:club_app/wizs/user_main_drawer.dart';
import 'package:flutter/material.dart';

import '../model/demo_data_for_post.dart';
import '../model/post.dart';

class UserDashBord extends StatefulWidget {
  const UserDashBord({Key? key}) : super(key: key);

  @override
  State<UserDashBord> createState() => _UserDashBordState();
}

class _UserDashBordState extends State<UserDashBord> {
//
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
//

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)?.settings.arguments as User;
    List<post> postt = postDemoData().demodataSend();

    return Scaffold(
        appBar: AppBar(title: Text('User Dash Bord')),
        drawer: UserMainDrawer(),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return UserPostCard(
                tittle: postt[index].tittle,
                description: postt[index].description,
                id: postt[index].id,
                imguri: postt[index].imguri,
                interested: postt[index].interested,
              );
            }));
  }
}
