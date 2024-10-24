// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  void userTapped() => print("User Tapped");

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
                Navigator.pushNamed(context, '/settingspage');
              },
              trailing: Icon(Icons.favorite),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 30)),
            GestureDetector(
              onTap: userTapped,
              child: Container(
                padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  //curve corners
                  borderRadius: BorderRadius.circular(20),
                ),
                // ignore: sort_child_properties_last
                child: ListView(
                  children: [
                    Center(
                      child: Text(
                        "Tap me!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Icon(
                        Icons.account_balance_rounded,
                        size: 100,
                        color: Colors.white,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(20)),
                    Icon(
                      Icons.access_alarms_rounded,
                      color: Colors.white,
                      size: 100,
                    ),
                    Padding(padding: EdgeInsets.all(20)),
                    Icon(
                      Icons.book_rounded,
                      color: Colors.white,
                      size: 100,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
