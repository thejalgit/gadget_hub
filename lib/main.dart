

import 'package:flutter/material.dart';

import 'package:untitled3/homescreen.dart';
import 'package:untitled3/Homeappbar.dart';
import 'package:untitled3/itemappbar.dart';
import 'package:untitled3/signup_page.dart';

import 'package:untitled3/splash_screen.dart';

import 'BottomNavigationbar.dart';
import 'cartpage.dart';



void main()async {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: signup(),

    );

  }
}

