import 'package:flutter/material.dart';

class AdminUserMainDrawer extends StatelessWidget {
  void logout(BuildContext ctx) {
    //  Navigator.of(ctx).pushNamed('/');
    Navigator.of(ctx).pushReplacementNamed('/');
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            curve: Curves.fastOutSlowIn,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 39, 140, 223),
            ),
            child: Text(
              'Admin Menu Bar',
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text(
              'LogOut',
            ),
            textColor: Theme.of(context).primaryColor,
            onTap: () {
              logout(context);
            },
          ),
        ],
      ),
    );
  }
}
