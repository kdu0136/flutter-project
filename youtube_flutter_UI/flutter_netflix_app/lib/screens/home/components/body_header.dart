import 'package:flutter/material.dart';
import 'package:flutter_netflix_app/models/models.dart';
import 'package:flutter_netflix_app/screens/home/widgets/widgets.dart';

class BodyHeader extends StatelessWidget {
  final Content featuredContent;

  const BodyHeader({
    Key key,
    @required this.featuredContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // header background image
        Container(
          height: 500.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(featuredContent.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // header background image overlay
        Container(
          height: 500.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        // header title text
        Positioned(
          bottom: 100.0,
          child: SizedBox(
            width: 250.0,
            child: Image.asset(featuredContent.titleImageUrl),
          ),
        ),
        // header buttons
        Positioned(
          left: 0,
          right: 0,
          bottom: 30.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: VerticalIconButton(
                  icon: Icons.add,
                  title: "내가 찜한 콘텐츠",
                  onTap: () => print("My List"),
                ),
              ),
              Expanded(child: PlayButton()),
              Expanded(
                child: VerticalIconButton(
                  icon: Icons.info_outline,
                  title: "정보",
                  onTap: () => print("Info"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
