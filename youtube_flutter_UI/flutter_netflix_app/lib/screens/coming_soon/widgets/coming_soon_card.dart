import 'package:flutter/material.dart';
import 'package:flutter_netflix_app/models/models.dart';
import 'package:flutter_netflix_app/screens/coming_soon/widgets/widgets.dart';

class ComingSoonCard extends StatelessWidget {
  const ComingSoonCard({
    Key key,
    @required this.comingSoon,
    @required this.screenSize,
  }) : super(key: key);

  final ComingSoon comingSoon;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Image.asset(
              comingSoon.imageUrl,
              width: screenSize.width,
              height: screenSize.width * 9 / 16,
              fit: BoxFit.cover,
            ),
          ),
          _buildTitlePart(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Text(
              comingSoon.comingSoonDate,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Text(
              comingSoon.name,
              style: TextStyle(
                color: Colors.grey[100],
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              comingSoon.description,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildTitlePart() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Row(
        children: [
          Image.asset(
            comingSoon.titleImageUrl,
            height: 80,
            width: screenSize.width / 2,
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: VerticalIconButton(
              icon: Icons.notifications,
              title: "알림 받기",
              onTap: () => print("알림 받기"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: VerticalIconButton(
              icon: Icons.share,
              title: "공유",
              onTap: () => print("공유"),
            ),
          ),
        ],
      ),
    );
  }
}
