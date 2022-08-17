import 'package:club_app/model/post.dart';
import 'package:club_app/wizs/adminUser_main_drawer.dart';

import 'package:flutter/material.dart';

import '../model/demo_data_for_post.dart';
import '../model/user.dart';
import '../subwizs/adminPost.dart';

class AdminUserDeshBord extends StatefulWidget {
  const AdminUserDeshBord({Key? key}) : super(key: key);

  @override
  State<AdminUserDeshBord> createState() => _AdminUserDeshBordState();
}

class _AdminUserDeshBordState extends State<AdminUserDeshBord> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  //List<post> postt = postDemoData().demodataSend();

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)?.settings.arguments as User;
    List<post> postt = postDemoData().demodataSend();

    return Scaffold(
      appBar: AppBar(title: Text('Admin Dash Bord')),
      drawer: AdminUserMainDrawer(),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return AdminPostCard(
              tittle: postt[index].tittle,
              description: postt[index].description,
              id: postt[index].id,
              imguri: postt[index].imguri,
              interested: postt[index].interested,
            );
          }),
    );
  }
}


//  AdminPostCard(),
              // Text(user.id),
              //Text(user.userName),
              //Text(user.password),
              //Text(user.userName),
              //Text(user.studentId.toString()),
              //Text(user.name,
              //    style: DefaultTextStyle.of(context)
              //      .style
              //     .apply(fontSizeFactor: 2.0)),
