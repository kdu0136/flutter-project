import 'package:flutter/material.dart';
import 'package:flutter_clock_dark_light_app/models/my_theme_provider.dart';
import 'package:flutter_clock_dark_light_app/screen/home_screen.dart';
import 'package:flutter_clock_dark_light_app/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyThemeModel(),
      child: Consumer<MyThemeModel> (
        builder: (context, theme, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Clock Demo',
          theme: themeData(context),
          darkTheme: darkThemeData(context),
          themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
          home: HomeScreen(),
        ),
      ),
    );
  }
}
