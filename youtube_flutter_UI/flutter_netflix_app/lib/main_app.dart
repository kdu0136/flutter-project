import 'package:flutter/material.dart';
import 'package:flutter_netflix_app/screens/nav_screen.dart';

import 'screens/home_screen.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Netflix UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: NavScreen(),
    );
  }
}