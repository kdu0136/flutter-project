import 'package:flutter/material.dart';
import 'package:flutter_netflix_app/models/models.dart';
import 'package:flutter_netflix_app/screens/home/widgets/content_card.dart';

class Contents extends StatelessWidget {
  final String title;
  final List<Content> contentList;
  final bool isBigImage;

  const Contents({
    Key key,
    @required this.title,
    @required this.contentList,
    this.isBigImage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: isBigImage ? 500.0 : 220.0,
            margin: const EdgeInsets.only(top: 6.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: contentList.length,
              itemBuilder: (BuildContext context, int index) => ContentCard(
                content: contentList[index],
                isBigImage: isBigImage,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
