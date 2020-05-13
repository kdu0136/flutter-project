import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var _currentIndex = 0;
  final _children = [Home(), Person(), Notification()];
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets Practice'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  /// BottomNavigationBar
  /// 하단에 2~5개 탭 메뉴를 구성하는 위젯
  _bottomNavigationBar() => BottomNavigationBar(
    currentIndex: _currentIndex,
    onTap: _onTap,
    selectedItemColor: Colors.black,
    items: [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          size: 30,
          color: Colors.grey,),
        activeIcon: Icon(
          Icons.home,
          size: 30,
          color: Colors.black,),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person,
          size: 30,
          color: Colors.grey,),
        activeIcon: Icon(
          Icons.person,
          size: 30,
          color: Colors.black,),
        title: Text('Person'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.notifications,
          size: 30,
          color: Colors.grey,),
        activeIcon: Icon(
          Icons.notifications,
          size: 30,
          color: Colors.black,),
        title: Text('Notification'),
      ),
    ],
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.yellow,);
  }
}

class Person extends StatefulWidget {
  @override
  _PersonState createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red);
  }
}

class Notification extends StatefulWidget {
  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue);
  }
}


