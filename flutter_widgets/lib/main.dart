import 'package:flutter/material.dart';
import 'bottomNaviWidgets.dart';
import 'cupertino_widget.dart';
import 'widget_sample2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Practice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CupertinoPage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets Practice'),
      ),
      body: Center(
        child: textFieldWidget,
      ),
    );
  }
}
