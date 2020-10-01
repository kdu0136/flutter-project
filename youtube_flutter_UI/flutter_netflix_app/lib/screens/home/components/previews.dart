import 'package:flutter/material.dart';
import 'package:flutter_netflix_app/models/models.dart';
import 'package:flutter_netflix_app/screens/home/widgets/preview_card.dart';

class Previews extends StatelessWidget {
  final List<Content> contentList;

  const Previews({
    Key key,
    @required this.contentList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "Previews",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 165.0,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 8.0,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: contentList.length,
            itemBuilder: (BuildContext context, int index) =>
                PreviewCard(content: contentList[index]),
          ),
        ),
      ],
    );
  }
}
