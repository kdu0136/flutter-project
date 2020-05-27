import 'package:flutter/material.dart';
import './bmiMain.dart';

void main() {
  runApp(BmiApp());
}

class BmiApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BMI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BmiMain(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // TextField 의 현재값을 얻는데 필요
  final _myController = TextEditingController();

  // Form 위젯에 유니크한 키값을 부여하고 검증시 사용
  final _formKey = GlobalKey<FormState>();

  _printLatestValue() => print('second text field: ${_myController.text}');

  @override
  void initState() {
    super.initState();
    // addListener 로 상태를 모니터링
    _myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // 위젯 트리에서 컨트롤러 해제
    _myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Form 위젯에 _formKey 지정
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return '글자를 입력하세요';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {
                  // 폼을 검증하여 통과하면 true, 실패하면 false 리턴
                  if (_formKey.currentState.validate()) {
                    // 검증이 통과하면 스낵바 표시
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('검증완료'),
                    ));
                  }
                },
                child: Text('검증'),
              ),
            ),
          ],
        ),
      );
  }
}
