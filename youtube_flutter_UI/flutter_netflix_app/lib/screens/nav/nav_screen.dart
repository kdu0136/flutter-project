import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_netflix_app/cubits/app_bar/home_app_bar_cubit.dart';
import 'package:flutter_netflix_app/cubits/app_bar/search_app_bar_cubit.dart';
import 'package:flutter_netflix_app/screens/screens.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(key: PageStorageKey("homeScreen")),
    SearchScreen(key: PageStorageKey("searchScreen")),
    ComingSoonScreen(key: PageStorageKey("comingSoonScreen")),
    SaveContentScreen(key: PageStorageKey("saveContentScreen")),
    Scaffold(),
  ];

  final Map<String, IconData> _icons = const {
    "홈": Icons.home,
    "검색": Icons.search,
    "공개 예정": Icons.queue_play_next,
    "저장한 콘텐츠 목록": Icons.file_download,
    "더 보기": Icons.menu,
  };

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<HomeAppBarCubit>(
            create: (context) => HomeAppBarCubit(),
          ),
          BlocProvider<SearchAppBarCubit>(
            create: (context) => SearchAppBarCubit(),
          ),
        ],
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: _icons
            .map((title, icon) => MapEntry(
                title,
                BottomNavigationBarItem(
                  icon: Icon(icon, size: 30.0),
                  title: Text(title),
                )))
            .values
            .toList(),
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        selectedFontSize: 11.0,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 11.0,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
