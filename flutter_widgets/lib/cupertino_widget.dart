import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPage extends StatefulWidget {
  @override
  _CupertinoPageState createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoPage> {
  var _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cupertinoNavigationBarWidget,
      body: Column(
        children: <Widget>[
          cupertinoSwitchWidget(),
          cupertinoButtonWidget1(),
          cupertinoButtonWidget2(),
        ],
      ),
    );
  }

  /// CupertinoNavigationBar
  /// AppBar 에 대응하는 쿠퍼티노 위젯
  var cupertinoNavigationBarWidget = CupertinoNavigationBar(
    middle: Text('Cupertino Design'),
  );

  /// CupertinoSwitch
  /// Switch 에 대응하는 쿠퍼티노 위젯
  cupertinoSwitchWidget() =>
      CupertinoSwitch(
        value: _isOn,
        onChanged: (bool value) {
          setState(() {
            _isOn = value;
          });
        },
      );

  /// CupertinoButton
  /// RaisedButton 에 대응하는 쿠퍼티노 위젯
  cupertinoButtonWidget1() =>
      CupertinoButton(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.orange,
        child: Text('Cupertino AlertDialog'),
        onPressed: () {
          _showCupertinoDialog();
        },
      );

  cupertinoButtonWidget2() =>
      CupertinoButton(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.orange,
        child: Text('Cupertino Picker'),
        onPressed: () {
          _showCupertinoPicker();
        },
      );

  _showCupertinoDialog() =>
      showDialog(
        context: context,
        builder: (context) =>
            CupertinoAlertDialog(
              title: Text('Cupertino Alert Dialog Title'),
              content: Text('Cupertino Alert Dialog Content'),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: Text('Cancel'),
                ),
                CupertinoDialogAction(
                    child: Text('Ok'),
                    onPressed: () {
                      Navigator.of(context).pop(); // close dialog,
                    }
                ),
              ],
            ),
      );

  final _items = List.generate(10, (index) => index);
  var index = 0;
  _showCupertinoPicker() async {
    await showCupertinoModalPopup(
      context: context,
      builder: (context) =>
          Container(
            height: 300.0,
            child: CupertinoPicker(
              children: _items.map((e) => Center(child: Text('No. $e'))).toList(),
              itemExtent: 50.0, // 항목 1개의 높이
              onSelectedItemChanged: (int value) {
                index = value;
              },
              scrollController: FixedExtentScrollController(initialItem: index),
            ),
          ),
    );
    print(_items[index]);
  }
}
