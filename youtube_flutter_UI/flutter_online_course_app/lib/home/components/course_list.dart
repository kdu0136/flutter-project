import 'package:flutter/material.dart';
import 'package:flutter_online_course_app/constants.dart';
import 'package:flutter_online_course_app/home/components/course_card.dart';
import 'package:flutter_online_course_app/model/category.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CourseList extends StatelessWidget {
  const CourseList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          buildListHeader(),
          SizedBox(height: 30),
          Expanded(
            child: StaggeredGridView.countBuilder(
              padding: EdgeInsets.all(0),
              crossAxisCount: 2,
              itemCount: categories.length,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              itemBuilder: (context, index) => CourseCard(index: index),
              staggeredTileBuilder: (index) => StaggeredTile.fit(1),
            ),
          ),
        ],
      ),
    );
  }

  Row buildListHeader() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Category",
              style: kTitleTextStyle,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "See All",
                style: kSubtitleTextSyule.copyWith(color: kBlueColor),
              ),
            ),
          ],
        );
  }
}
