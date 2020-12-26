import 'package:flutter/material.dart';
import 'package:web_project/LandingPage/LandingPage.dart';
import 'package:web_project/LandingPage/LandingPageNew.dart';
import 'package:web_project/Navbar/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Harmonia Sans"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFF314755), Color.fromRGBO(36, 11, 54, 1.0)]),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Navbar(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  child: NewLandingPage(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
