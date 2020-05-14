import 'package:flutter/material.dart';

/// TextField
/// 텍스트 입력 위젯
/// InputDecoration 클래스와 함께 사용하면 힌트 메시지나 외각선 꾸밈 등 효과 추가 가능
var textFieldWidget = TextField(
  decoration: InputDecoration(
    labelText: 'input hint', // hint
    border: OutlineInputBorder(),
  ),
);

class WidgetSample2 extends StatefulWidget {
  @override
  _WidgetSample2State createState() => _WidgetSample2State();
}

class _WidgetSample2State extends State<WidgetSample2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets Practice'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Time Picker'),
              color: Colors.red,
              onPressed: () {
                // 여기서 사용자가 날짜를 선택할 때까지 코드가 블록
                selectedTime().then((value) {
                  setState(() {
                    _selectedTime = value;
                  });
                });
              },
            ),
            Text('$_selectedTime'),
          ],
        ),
      ),
    );
  }

  var _isChecked = true;
  /// Checkbox
  checkboxWidget() => Checkbox(
    value: _isChecked,
    onChanged: (value) {
      setState(() {
        _isChecked = value;
      });
    },
  );

  /// Switch
  switchWidget() => Switch(
    value: _isChecked,
    onChanged: (value) {
      setState(() {
        _isChecked = value;
      });
    },
  );

  var _gender = Gender.MAN;
  /// Radio
  /// ListTile - radio 점만 터치 가능
  listTileWidget1() => ListTile(
    title: Text('Man'),
    leading: Radio(
      value: Gender.MAN,
      groupValue: _gender,
      onChanged: (value) {
        setState(() {
          _gender = value;
        });
      },
    ),
  );
  listTileWidget2() => ListTile(
    title: Text('Woman'),
    leading: Radio(
      value: Gender.WOMAN,
      groupValue: _gender,
      onChanged: (value) {
        setState(() {
          _gender = value;
        });
      },
    ),
  );

  /// RadioListTile - 가로 전체 터치 가능
  radioListTileWidget1() => RadioListTile(
    title: Text('Man'),
    value: Gender.MAN,
    groupValue: _gender,
    onChanged: (value) {
      setState(() {
        _gender = value;
      });
    },
  );
  radioListTileWidget2() => RadioListTile(
    title: Text('Woman'),
    value: Gender.WOMAN,
    groupValue: _gender,
    onChanged: (value) {
      setState(() {
        _gender = value;
      });
    },
  );

  static final _dropDownValueList = ['first', 'second', 'third'];
  var _dropDownSelectedValue = _dropDownValueList[0];
  /// DropDownButton
  dropDownButtonWidget() => DropdownButton(
    value: _dropDownSelectedValue,
    items: _dropDownValueList.map((v) => DropdownMenuItem(
      value: v,
      child: Text(v),
    )).toList(),
    onChanged: (value) {
      setState(() {
        _dropDownSelectedValue = value;
      });
    },
  );

  /// AlertDialog
  alertDialogWidget(BuildContext context) => AlertDialog(
    title: Text('title'),
    content: SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          Text('alert dialog'),
          Text('click \'OK\' to close'),
        ],
      ),
    ),
    actions: <Widget>[
      FlatButton(
        child: Text('OK'),
        onPressed: () {
          Navigator.of(context).pop(); // close dialog
        },
      ),
      FlatButton(
        child: Text('Cancel'),
        onPressed: () {
          Navigator.of(context).pop(); // close dialog
        },
      )
    ],
  );

  showAlertDialog() => showDialog(
    context: context,
    barrierDismissible: false, // 사용자가 다이얼로그 바깥 터치하면 닫히지 않음
    builder: (BuildContext context) => alertDialogWidget(context)
  );

  DateTime _selectedDate;
  /// DatePicker
  /// Future 타입은 then() 메서드를 사용해 결과를 받는 함수 작성 가능
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

  TimeOfDay _selectedTime;
  /// TimePicker
  Future<TimeOfDay> selectedTime() => showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
    builder: (BuildContext context, Widget child) => Theme(
      data: ThemeData.dark(),
      child: child,
    ),
  );
}
enum Gender { MAN, WOMAN }

