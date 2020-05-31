import 'package:flutter/material.dart';

import 'enum.dart';

class RegisterPage extends StatefulWidget {
  String _email;

  RegisterPage(this._email);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var _gender = Gender.MAN;

  genderSelectRadioWidget(Gender gender) => Expanded(
    child: RadioListTile(
      title: Text(gender.getValue()),
      value: gender,
      groupValue: _gender,
      onChanged: (value) {
        setState(() {
          _gender = value;
        });
      },
    ),
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
                widget._email,
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
                  Row(
//                    mainAxisSize: MainAxisSize.max,
//                    mainAxisAlignment: MainAxisAlignment.spaceAround,
//                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      genderSelectRadioWidget(Gender.MAN),
                      genderSelectRadioWidget(Gender.WOMAN),
                    ],
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
