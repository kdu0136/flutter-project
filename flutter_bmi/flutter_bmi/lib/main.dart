import 'package:flutter/material.dart';

void main() {
  runApp(BMIApp());
}

class BMIApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BMI',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // TextField 의 현재값을 얻는데 필요
  final myController = TextEditingController();

  _printLatestValue() => print('second text field: ${myController.text}');

  @override
  void initState() {
    super.initState();

    // addListener 로 상태를 모니터링
    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // 위젯 트리에서 컨트롤러 해제
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Input Practice'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (text) {
                print('first text field: $text');
              },
            ),
            TextField(
              controller: myController,
            )
          ],
        ),
      ),
    );
  }
}
