import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                '하루 한장',
                style: TextStyle(
                  fontSize: 45.0,
//                  fontWeight: FontWeight.bold,
                  fontFamily: 'NotoSans',
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RaisedButton(
                    child: Text('구글 로그인'),
                    onPressed: () => print('구글 로그인 버튼'),
                  ),
                  RaisedButton(
                    child: Text('페이스북 로그인'),
                    onPressed: () => print('페이스북 로그인 버튼'),
                  ),
                  RaisedButton(
                    child: Text('카카오 로그인'),
                    onPressed: () => print('카카오 로그인 버튼'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
