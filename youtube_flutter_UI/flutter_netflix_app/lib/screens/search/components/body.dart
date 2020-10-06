import 'package:flutter/material.dart';
import 'package:flutter_netflix_app/data/data.dart';
import 'package:flutter_netflix_app/models/models.dart';
import 'package:flutter_netflix_app/screens/search/widgets/widgets.dart';

class Body extends StatelessWidget {
  final String title;
  final List<Content> contentList;

  const Body({
    Key key,
    @required this.title,
    @required this.contentList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 1.0),
        scrollDirection: Axis.vertical,
        itemCount: largestKeyword.length + 1,
        itemBuilder: (BuildContext context, int index) {
          return index == 0
              ? _buildHeader()
              : _buildContent(contentList[index - 1]);
        },
      ),
    );
  }

  Padding _buildHeader() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 19.0, horizontal: 10.0),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      );

  Padding _buildContent(Content content) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 1.0),
        child: ContentCard(content: content),
      );
}
