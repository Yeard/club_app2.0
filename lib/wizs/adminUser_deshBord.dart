import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class AdminUserDeshBord extends StatefulWidget {
  @override
  State<AdminUserDeshBord> createState() => _AdminUserDeshBordState();
}

class _AdminUserDeshBordState extends State<AdminUserDeshBord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin Dash Bord')),
      drawer: AdminUserDeshBord(),
      body: Text("hello admin"),
    );
  }
}
