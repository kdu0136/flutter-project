import 'package:flutter/material.dart';
import './bmiResult.dart';

class BmiMain extends StatefulWidget {
  @override
  _BmiMainState createState() => _BmiMainState();
}

class _BmiMainState extends State<BmiMain> {
  final _formKey = GlobalKey<FormState>(); // 폼의 상태를 얻기 위한 키]
  final _heightTextController = TextEditingController();
  final _weightTextController = TextEditingController();

  @override
  void dispose() {
    _heightTextController.dispose();
    _weightTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bmi Input'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  // 외곽선 있고 힌트로 '키' 표시
                  border: OutlineInputBorder(),
                  hintText: '키 (m)',
                ),
                controller: _heightTextController,
                keyboardType: TextInputType.number, // 숫자만 입력 가능
                validator: (value) {
                  try {
                    final height = value.trim();
                    if (height.isEmpty) {
                      return '키를 입력하세요';
                    }
                    double.parse(height);
                  } catch (e) {
                    if (e is FormatException) {
                      return '정확한 키를 입력하세요';
                    }
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  // 외곽선 있고 힌트로 '몸무게' 표시
                  border: OutlineInputBorder(),
                  hintText: '몸무게 (kg)',
                ),
                controller: _weightTextController,
                keyboardType: TextInputType.number, // 숫자만 입력 가능
                validator: (value) {
                  try {
                    final height = value.trim();
                    if (height.isEmpty) {
                      return '몸무게를 입력하세요';
                    }
                    double.parse(height);
                  } catch (e) {
                    if (e is FormatException) {
                      return '정확한 몸무게를 입력하세요';
                    }
                  }
                  return null;
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                alignment: Alignment.centerRight,
                child: RaisedButton(
                  onPressed: () {
                    // 폼에 입력된 값 검증
                    if (_formKey.currentState.validate()) {
                      // 검증시 처리
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BmiResult(
                            height: double.parse(_heightTextController.text.trim()),
                            weight: double.parse(_weightTextController.text.trim()),
                          )
                        ),
                      );
                    }
                  },
                  child: Text('결과'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
