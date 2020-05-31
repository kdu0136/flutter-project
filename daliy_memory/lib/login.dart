import 'package:daliymemory/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  _googleLogin() {
    _runRegisterPage(context, 'google email');
  }

  _facebookLogin() {
    _runRegisterPage(context, 'facebook email');
  }

  _kakaoLogin() {
    _runRegisterPage(context, 'kakao email');
  }

  _runRegisterPage(BuildContext context, email) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RegisterPage(email)),
      );

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
                    onPressed: _googleLogin,
                  ),
                  RaisedButton(
                    child: Text('페이스북 로그인'),
                    onPressed: _facebookLogin,
                  ),
                  RaisedButton(
                    child: Text('카카오 로그인'),
                    onPressed: _kakaoLogin,
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
