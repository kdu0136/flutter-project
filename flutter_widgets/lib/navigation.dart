import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('first page build');
    return Scaffold(
      appBar: AppBar(
        title: Text('first page'),
      ),
      body: RaisedButton(
        child: Text('next page'),
        onPressed: () async {
//          final person = Person('person name', 30);
//          final result = await Navigator.push(
//              context,
//              MaterialPageRoute(builder: (context) => SecondPage(person: person,)),
//          );
          // routes 에 의한 화면 이동
          final result = await Navigator.pushNamed(
            context,
            '/second',
            arguments: Person('person name', 30),
          );
          print(result);
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final Person person;

  SecondPage({@required this.person});

  @override
  Widget build(BuildContext context) {
    print('second page build - person: ${person.name}');
    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
      ),
      body: RaisedButton(
        child: Text('before page'),
        onPressed: () {
          Navigator.pop(context, 'ok');
        },
      ),
    );
  }
}

class FirstStfPage extends StatefulWidget {
  @override
  _FirstStfPageState createState() {
    print('${this.runtimeType} createState');
    return _FirstStfPageState();
  }
}

class _FirstStfPageState extends State<FirstStfPage> {
  /// initState
  /// 위젯이 생성될 때 호출
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) => {
      print('${this.runtimeType} addPostFrameCallback')
    });
    print('${this.runtimeType} initState');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('${this.runtimeType} didChangeDependencies');
  }

  @override
  void didUpdateWidget(FirstStfPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('${this.runtimeType} didUpdateWidget');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('${this.runtimeType} deactivate');
  }

  /// initState
  /// 위젯이 완전히 종료될 때 호출
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('${this.runtimeType} dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('${this.runtimeType} build');
    return Scaffold(
      appBar: AppBar(
        title: Text('first stf page'),
      ),
      body: RaisedButton(
        child: Text('next page'),
        onPressed: () async {
          final person = Person('person name', 30);
          final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondStfPage(person: person,)),
          );
          // routes 에 의한 화면 이동
//          final result = await Navigator.pushNamed(context, '/secondStf');
          print(result);
        },
      ),
    );
  }
}

class SecondStfPage extends StatefulWidget {
  final Person person;

  SecondStfPage({Key key, @required this.person}): super(key: key);

  @override
  _SecondStfPageState createState() {
    print('${this.runtimeType} createState');
    return _SecondStfPageState();
  }
}

class _SecondStfPageState extends State<SecondStfPage> {
  /// initState
  /// 위젯이 생성될 때 호출
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('${this.runtimeType} initState');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('${this.runtimeType} didChangeDependencies');
  }

  @override
  void didUpdateWidget(SecondStfPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('${this.runtimeType} didUpdateWidget');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('${this.runtimeType} deactivate');
  }

  /// initState
  /// 위젯이 완전히 종료될 때 호출
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('${this.runtimeType} dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('${this.runtimeType} build');
    return Scaffold(
      appBar: AppBar(
        title: Text('second stf page'),
      ),
      body: RaisedButton(
        child: Text('next page'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ThirdStfPage()),
          );
        },
      ),
    );
  }
}

class ThirdStfPage extends StatefulWidget {
  @override
  _ThirdStfPageState createState() {
    print('${this.runtimeType} createState');
    return _ThirdStfPageState();
  }
}

class _ThirdStfPageState extends State<ThirdStfPage> {
  /// initState
  /// 위젯이 생성될 때 호출
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('${this.runtimeType} initState');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('${this.runtimeType} didChangeDependencies');
  }

  @override
  void didUpdateWidget(ThirdStfPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('${this.runtimeType} didUpdateWidget');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('${this.runtimeType} deactivate');
  }

  /// initState
  /// 위젯이 완전히 종료될 때 호출
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('${this.runtimeType} dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('${this.runtimeType} build');
    return Scaffold(
      appBar: AppBar(
        title: Text('second stf page'),
      ),
      body: RaisedButton(
        child: Text('before page'),
        onPressed: () {
          Navigator.pop(context, 'ok');
        },
      ),
    );
  }
}



