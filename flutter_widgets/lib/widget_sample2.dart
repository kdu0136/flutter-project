import 'dart:math';

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
            gestureDetectorWidget,
            SizedBox(
              height: 50.0,
            ),
            inkWellWidget,
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
        items: _dropDownValueList
            .map((v) => DropdownMenuItem(
                  value: v,
                  child: Text(v),
                ))
            .toList(),
        onChanged: (value) {
          setState(() {
            _dropDownSelectedValue = value;
          });
        },
      );

  /// AlertDialog - dialog 는 context 때문에 신경 써서 불러야함
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

  _showDialog() => showDialog(
      context: context,
      barrierDismissible: false, // 사용자가 다이얼로그 바깥 터치하면 닫히지 않음
      builder: (BuildContext context) => alertDialogWidget(context));

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

/// GestureDetector & InkWell
/// 글자나 그림같이 이벤트 프로퍼티가 없는 위젯에 이벤트를 적용해주는 위젯

/// GestureDetector - 클릭하면 터치 효과 x
var gestureDetectorWidget = GestureDetector(
  onTap: () {
    print('getsture detect event');
  },
  child: Text('Gesture Detector'),
);

/// InkWell - 클릭하면 물결 효과
var inkWellWidget = InkWell(
  onTap: () {
    print('ink well event');
  },
  child: Text('Ink Well Detector'),
);

/// Hero
/// 화면 전환시 자연스럽게 연결되는 애니메이션
/// 애니메이션 효과의 대상이 되는 양쪽 화면의 위젯을 Hero 위젯으로 감싸고
/// tag 프로퍼티를 반드시 동일하게 지정해야 함
class HeroPage extends StatefulWidget {
  @override
  _HeroPageState createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Page'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HeroDetailPage()),
            );
          },
          child: Hero(
            tag: 'image', // 여기서 작성한 태그와 두번째 페이지의 태그가 동일해야 함
            child: Image.asset(
              'assets/test4.jpg',
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}

class HeroDetailPage extends StatefulWidget {
  @override
  _HeroDetailPageState createState() => _HeroDetailPageState();
}

class _HeroDetailPageState extends State<HeroDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Page'),
      ),
      body: Hero(
        tag: 'image',
        child: Image.asset('assets/test4.jpg'),
      ),
    );
  }
}


class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  var _size = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            final random = Random();
            setState(() {
              _size = random.nextInt(400).toDouble() + 100;
            });
          },
          child: _animatedContainerWidget(),
        ),
      ),
    );
  }

  /// AnimatedContainer
  /// 한 화면 내에서 setSate() 함수를 호출하여 화면을 새로 그릴 때 변경된 프로퍼티에 의해 에니베이션이 되도록 하는 위젯
  _animatedContainerWidget() => AnimatedContainer(
    duration: Duration(milliseconds: 300),
    width: _size,
    height: _size,
    child: Image.asset('assets/test4.jpg'),
    curve: Curves.fastOutSlowIn,
  );
}

/// SilverAppBar & SilverFillRemaining & SilverList
/// 화면 헤더를 동적으로 표현하는 위젯
/// 헤더를 위로 스크롤 하면 헤더 부분이 작아지면서 헤더 하단에 있던 정적인 내용만 보이는 AppBar 형태로 애니메이션
class SliverPage extends StatefulWidget {
  @override
  _SliverPageState createState() => _SliverPageState();
}

class _SliverPageState extends State<SliverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          silverAppBarWidget,
          silverListWidget(),
        ],
      ),
    );
  }

  var silverAppBarWidget = SliverAppBar( // 해더 영영
    pinned: true, // 축소시 상단에 AppBar 가 고정되는지 설정
    expandedHeight: 180.0, // 헤더의 최대 높이
    flexibleSpace: FlexibleSpaceBar( // 늘어나는 영역의 UI 정의
      title: Text('Sliver'),
      background: Image.asset(
        'assets/test4.jpg',
        fit: BoxFit.cover,
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.home),
        onPressed: () {
          print('press sliver action icon');
        },
      ),
    ],
  );

  var silverFillRemainingWidget = SliverFillRemaining( // 내용 영역
    child: Center(
      child: Text('Center'),
    ),
  );

  final _items = List.generate(50, (index) => ListTile(title: Text('No. ${index+1}')));
  silverListWidget() => SliverList(
    delegate: SliverChildListDelegate(_items),
  );
}

