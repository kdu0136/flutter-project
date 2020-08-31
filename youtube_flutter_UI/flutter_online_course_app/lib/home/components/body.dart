import 'package:flutter/material.dart';
import 'package:flutter_online_course_app/home/components/course_list.dart';
import 'package:flutter_online_course_app/home/components/header.dart';
import 'package:flutter_online_course_app/home/components/searchBox.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: <Widget>[
          Header(name: "Alex"),
          SearchBox(),
          CourseList(),
        ],
      ),
    );
  }
}
