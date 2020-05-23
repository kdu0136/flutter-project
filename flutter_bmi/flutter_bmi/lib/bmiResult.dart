import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final double height;
  final double weight;

  BmiResult({@required this.height, this.weight});

  @override
  Widget build(BuildContext context) {
    final bmi = weight / ((height / 100) * (height / 100));
    print(bmi);

    return Scaffold(
      appBar: AppBar(
        title: Text('Bmi Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _calcBmi(bmi: bmi),
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            _calcBmiIcon(bmi: bmi),
          ],
        ),
      ),
    );
  }

  String _calcBmi({@required double bmi}) {
    var result = '저체중';
    if (bmi >= 35) {
      result = '고도 비만';
    } else if (bmi >= 30) {
      result = '2단계 비만';
    } else if (bmi >= 25) {
      result = '1단계 비만';
    } else if (bmi >= 23) {
      result = '과체중';
    } else if (bmi >= 18.5) {
      result = '정상';
    }
    return result;
  }

  Widget _calcBmiIcon({@required double bmi}) {
    var iconData = Icons.sentiment_dissatisfied;
    var iconColor = Colors.orange;

    if (bmi >= 23) {
      iconData = Icons.sentiment_very_dissatisfied;
      iconColor = Colors.red;
    } else if (bmi >= 18.5) {
      iconData = Icons.sentiment_satisfied;
      iconColor = Colors.green;
    }

    return Icon(
      iconData,
      color: iconColor,
      size: 100,
    );
  }
}
