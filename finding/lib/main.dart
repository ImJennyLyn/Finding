// import 'package:finding/startedpage.dart';
import 'package:finding/SHOPS/businessForm.dart';
import 'package:finding/SHOPS/shops_Home.dart';
import 'package:finding/startedpage.dart';
import 'package:flutter/material.dart';
import 'package:finding/navBar.dart';
import 'ACCOUNT PAGE/accountScreen.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  NavigationBarPage(),
    );
  }
}
