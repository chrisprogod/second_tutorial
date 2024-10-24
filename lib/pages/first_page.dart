// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:second_tutorial/pages/home_page.dart';
import 'package:second_tutorial/pages/profile_page.dart';
import 'package:second_tutorial/pages/setting_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  static void userTapped() {
    print("User Tapped");
  }

  final List _page = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: Text(
          "First Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.logout,
            ),
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.auto_graph,
                size: 50,
                color: Colors.deepPurple[400],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home_filled,
              ),
              title: Text(
                "H O M E",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
              trailing: Icon(Icons.favorite),
              // trailing: Icon(Icons.favorite),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
              ),
              title: Text(
                "Settings",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingspage');
              },
              trailing: Icon(Icons.favorite),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple[200],
        items: [
          //home
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'Home'),
          //profile
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Me'),
          //settings
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ],
      ),
    );
  }
}
