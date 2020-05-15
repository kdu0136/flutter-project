import 'package:flutter/material.dart';

import 'navigation.dart';
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
      home: FirstStfPage(),
//      routes: {
//        '/first': (context) => FirstPage(),
////        '/second': (context) => SecondPage(),
//        '/firstStf': (context) => FirstStfPage(),
//        '/secondStf': (context) => SecondStfPage(),
//      },
//      onGenerateRoute: (settings) {
//        final person = settings.arguments;
//
//        return MaterialPageRoute(builder: (context) {
//          var builderPage;
//          if (settings.name == '/second') {
//            builderPage = SecondPage(
//              person: person,
//            );
//          } else {
//            builderPage = FirstPage();
//          }
//          return builderPage;
//        });
//      },
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
