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

  Widget _buildSelectGender() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Text(
            'Gender',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        Row(
          children: <Widget>[
            genderSelectRadioWidget(Gender.MAN),
            genderSelectRadioWidget(Gender.WOMAN)
          ],
        )
      ],
    );
  }

  Widget _buildSelectBirth() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Text(
            'Birth Year',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: InkWell(
            onTap: () {
              print('hello');
            },
            child: Text(
              '123456',
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }

  DateTime _selectedDate = DateTime.now();

  Future<DateTime> selectedDate() => showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2030),
        builder: (BuildContext context, Widget child) => Theme(
          data: ThemeData.dark(),
          child: child,
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
                  _buildSelectGender(),
                  _buildSelectBirth(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
