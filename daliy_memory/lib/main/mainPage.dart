import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentPageIndex = 0;
  final _childPage = [Home(), Profile(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: PageStorage(
        child: _childPage[_currentPageIndex],
      ),
      bottomNavigationBar: _bottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _floatingActionBottom(),
    );
  }

  _appBar() => AppBar(
        title: Text('Main Page'),
      );

  _bottomNavigationBar() => BottomNavigationBar(
        onTap: (int index) => setState(() => _currentPageIndex = index),
        currentIndex: _currentPageIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text('profile'),
          )
        ],
      );

  _floatingActionBottom() => FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
  );
}
