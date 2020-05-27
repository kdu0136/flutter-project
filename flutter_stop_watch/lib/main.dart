import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(StopWatchApp());
}

class StopWatchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stop Watch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StopWatchPage(),
    );
  }
}

class StopWatchPage extends StatefulWidget {
  @override
  _StopWatchPageState createState() => _StopWatchPageState();
}

class _StopWatchPageState extends State<StopWatchPage> {
  Timer _timer; // 타이머

  var _time = 0; // 1 = 0.01 초
  var _isRunning = false; // 현재 타이머 상태

  List<String> _lapTimes = []; // 랩타임에 표시할 리스트

  Widget _buildBody() {
    var second = _time ~/ 100;
    var milliSecond = '${_time % 100}'.padLeft(2, '0');
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  // 시간을 표시하는 영역
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      // 초
                      '$second',
                      style: TextStyle(fontSize: 50.0),
                    ),
                    Text(
                      // 밀리초
                      '$milliSecond',
                      style: TextStyle(fontSize: 20.0),
                    )
                  ],
                ),
                Container(
                  // 랩타임
                  width: 100,
                  height: 200,
                  child: ListView(
                    children: _lapTimes.map((time) => Text(time)).toList(),
                  ),
                )
              ],
            ),
            Positioned(
              // 왼쪽 아래 초기화 버튼
              left: 10,
              bottom: 10,
              child: FloatingActionButton(
                backgroundColor: Colors.deepOrange,
                onPressed: _resetTimer,
                child: Icon(Icons.rotate_left),
              ),
            ),
            Positioned(
              // 오른쪽 아래 랩타임 버튼
              right: 10,
              bottom: 10,
              child: RaisedButton(
                onPressed: () => setState(() {
                  _recordLapTime('$second.$milliSecond');
                }),
                child: Text(
                  '랩타임',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _clickButton() {
    _isRunning = !_isRunning;
    if (_isRunning) {
      _startTimer();
    } else {
      _stopTimer();
    }
  }

  _startTimer() {
    _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      setState(() {
        _time++;
      });
    });
  }

  _stopTimer() {
    _timer?.cancel();
  }

  _resetTimer() {
    setState(() {
      _isRunning = false;
      _timer?.cancel();
      _lapTimes.clear();
      _time = 0;
    });
  }

  _recordLapTime(String time) {
    _lapTimes.insert(0, '${_lapTimes.length + 1}등 $time');
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stop Watch'),
        ),
        body: _buildBody(),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 50.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
            _clickButton();
          }),
          child: _isRunning ? Icon(Icons.pause) : Icon(Icons.play_arrow),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }
}
