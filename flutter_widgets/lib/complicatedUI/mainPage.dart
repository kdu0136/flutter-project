import 'package:flutter/material.dart';
import './homePage.dart';
import './servicePage.dart';
import './myPage.dart';

class ComplicatedUIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Practice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentPageIndex = 0;
  final _childrenPage = [
    HomePage(key: PageStorageKey('home')),
    ServicePage(key: PageStorageKey('service')),
    MyPage(key: PageStorageKey('myPage'))
  ];
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: PageStorage(
        child: _childrenPage[_currentPageIndex],
        bucket: bucket,
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  // app bar
  _appBar() => AppBar(
        title: Text(
          'complicated UI project',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      );

  // bottom navigation
  _bottomNavigationBar() => BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        currentIndex: _currentPageIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text('service'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('myPage'),
          ),
        ],
      );
}
