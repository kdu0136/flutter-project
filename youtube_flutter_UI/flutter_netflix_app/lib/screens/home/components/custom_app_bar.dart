import 'package:flutter/material.dart';
import 'package:flutter_netflix_app/assets.dart';
import 'package:flutter_netflix_app/screens/home/widgets/widgets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({
    Key key,
    this.scrollOffset = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 10.0,
      ),
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0),
            const SizedBox(width: 12.0),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppBarButton(
                    title: "TV 프로그램",
                    onTap: () => print("TV Shows"),
                  ),
                  AppBarButton(
                    title: "영화",
                    onTap: () => print("Movies"),
                  ),
                  AppBarButton(
                    title: "내가 찜한 콘텐츠",
                    onTap: () => print("My List"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
