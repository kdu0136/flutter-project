import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_course_app/constants.dart';
import 'package:flutter_online_course_app/details/details_screen.dart';
import 'package:flutter_online_course_app/model/category.dart';

class CourseCard extends StatelessWidget {
  final int index;

  const CourseCard({
    Key key, this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedElevation: 0,
      openElevation: 0,
      closedBuilder: (context, action) => buildCourseCard(),
      openBuilder: (context, action) => DetailsScreen(category: categories[index]),
    );
    return buildCourseCard();
  }

  Container buildCourseCard() {
    return Container(
      padding: EdgeInsets.all(20),
      height: index%3 != 0 ? 200 : 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kBlueColor,
        image: DecorationImage(
          image: AssetImage(categories[index].image),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            categories[index].name,
            style: kTitleTextStyle,
          ),
          Text(
            "${categories[index].numOfCourses} Courses",
            style: TextStyle(
              color: kTextColor.withOpacity(.5),
            ),
          ),
        ],
      ),
    );
  }
}
