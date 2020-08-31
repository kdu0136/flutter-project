import 'package:flutter/material.dart';
import 'package:flutter_online_course_app/constants.dart';

class Header extends StatelessWidget {
  final String name;

  const Header({
    Key key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hey $name,",
          style: kHeadingextStyle,
        ),
        Text(
          "Find a course you want to learn",
          style: kSubheadingextStyle,
        ),
      ],
    );
  }
}
