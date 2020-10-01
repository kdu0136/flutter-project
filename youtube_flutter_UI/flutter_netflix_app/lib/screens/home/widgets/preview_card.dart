import 'package:flutter/material.dart';
import 'package:flutter_netflix_app/models/models.dart';

class PreviewCard extends StatelessWidget {
  final Content content;

  const PreviewCard({
    Key key,
    @required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print(content.name),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // preview image
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            height: 130.0,
            width: 130.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(content.imageUrl),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
              border: Border.all(color: content.color, width: 4.0),
            ),
          ),
          // preview image overlay
          Container(
            height: 130.0,
            width: 130.0,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.black87, Colors.black45, Colors.transparent],
                stops: [0, 0.25, 1],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              shape: BoxShape.circle,
              border: Border.all(color: content.color, width: 4.0),
            ),
          ),
          // preview title
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 60.0,
              child: Image.asset(content.titleImageUrl),
            ),
          ),
        ],
      ),
    );
  }
}
