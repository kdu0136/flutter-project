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
                width: 3.0,
                color: Colors.black,
              )
            ),
            child: Center(
              child: Text(
                social.getSymbolChar(),
                style: TextStyle(
                  fontSize: 30,
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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                '1234',
                style: TextStyle(
                  fontSize: 45.0,
//                  fontFamily: 'Hanna',
//                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  socialLoginBtn(social: Social.GOOGLE, onPress: _googleLogin),
                  socialLoginBtn(social: Social.FACEBOOK, onPress: _facebookLogin),
                  socialLoginBtn(social: Social.KAKAO, onPress: _kakaoLogin),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
