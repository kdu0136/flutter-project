import 'package:flutter/material.dart';

import 'todoMain.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoMain(),
    );
  }
}
