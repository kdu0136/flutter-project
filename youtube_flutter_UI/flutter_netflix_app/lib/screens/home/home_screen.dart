import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_netflix_app/cubits/cubits.dart';
import 'package:flutter_netflix_app/screens/home/components/components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.grey[850],
      //   child: const Icon(Icons.cast),
      //   onPressed: () => print("Cast"),
      // ),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: BlocBuilder<HomeAppBarCubit, double>(
          builder: (context, scrollOffset) {
            return CustomAppBar(scrollOffset: scrollOffset);
          },
        ),
      ),
      body: Body(),
    );
  }
}
