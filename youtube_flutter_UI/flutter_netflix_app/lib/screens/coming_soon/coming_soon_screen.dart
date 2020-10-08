import 'package:flutter/material.dart';
import 'package:flutter_netflix_app/data/data.dart';
import 'package:flutter_netflix_app/screens/coming_soon/components/components.dart';

class ComingSoonScreen extends StatefulWidget {
  const ComingSoonScreen({Key key}) : super(key: key);

  @override
  _ComingSoonScreenState createState() => _ComingSoonScreenState();
}

class _ComingSoonScreenState extends State<ComingSoonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(comingSoonList: comingSoonList),
    );
  }
}
