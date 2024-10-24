// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'first_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 30)),
            GestureDetector(
              onTap: FirstPage.userTapped,
              child: Container(
                padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  //curve corners
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView(
                  children: [
                    Center(
                      child: Text(
                        "Home Page",
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
    );
  }
}
