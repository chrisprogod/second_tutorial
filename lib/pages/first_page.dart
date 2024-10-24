// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:second_tutorial/pages/home_page.dart';
import 'package:second_tutorial/pages/profile_page.dart';
import 'package:second_tutorial/pages/setting_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  static void userTapped() {
    print("User Tapped");
  }

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
//this method updates selected index
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  int selectedIndex = 0;

  final List page = [
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
      body: page[selectedIndex], //shows a page at the index of selectedIndex
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
                "Home",
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
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_sharp,
              ),
              title: Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profilepage');
              },
              trailing: Icon(Icons.favorite),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        backgroundColor: Colors.deepPurple[200],
        currentIndex:
            selectedIndex, //Highlights icon at currentindex of the Items list
        onTap: navigateBottomBar,
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
            ),
            label: 'Home',
          ),
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
