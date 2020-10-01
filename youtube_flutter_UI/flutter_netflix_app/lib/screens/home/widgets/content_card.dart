import 'package:flutter/material.dart';
import 'package:flutter_netflix_app/models/models.dart';

class ContentCard extends StatelessWidget {
  final Content content;
  final bool isBigImage;

  const ContentCard({
    Key key,
    @required this.content,
    @required this.isBigImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print(content.name),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        height: isBigImage ? 400.0 : 200.0,
        width: isBigImage ? 200.0 : 130.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(content.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
