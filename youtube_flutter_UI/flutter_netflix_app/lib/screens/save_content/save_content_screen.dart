import 'package:flutter/material.dart';
import 'package:flutter_netflix_app/screens/save_content/components/components.dart';

class SaveContentScreen extends StatefulWidget {
  const SaveContentScreen({Key key}) : super(key: key);

  @override
  _SaveContentScreenState createState() => _SaveContentScreenState();
}

class _SaveContentScreenState extends State<SaveContentScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: CustomAppBar(),
      ),
      body: Body(),
    );
  }
}
