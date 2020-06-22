import 'package:daliymemory/enum.dart';
import 'package:daliymemory/register.dart';
import 'package:flutter/cupertino.dart';
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

  /// create social login button widget
  Widget socialLoginBtn({@required Social social, GestureTapCallback onPress}) {
    var btnColor = social.getSymbolColor();
    return ClipOval(
      child: Material(
        color: btnColor[0],
        child: InkWell(
          splashColor: btnColor.length > 1 ? btnColor[1] : btnColor[0],
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2.0,
                  color: Colors.black,
                )),
            child: Center(
              child: Text(
                social.getSymbolChar(),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          onTap: onPress,
        ),
      ),
    );
  }

  _runRegisterPage(BuildContext context, email) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RegisterPage(email)),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Text(
              '1234',
              style: TextStyle(
                fontSize: 45.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 150.0, left: 20, right: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'connect your account with',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  SizedBox(height: 30),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      socialLoginBtn(
                          social: Social.GOOGLE, onPress: _googleLogin),
                      socialLoginBtn(
                          social: Social.FACEBOOK, onPress: _facebookLogin),
                      socialLoginBtn(
                          social: Social.KAKAO, onPress: _kakaoLogin),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
