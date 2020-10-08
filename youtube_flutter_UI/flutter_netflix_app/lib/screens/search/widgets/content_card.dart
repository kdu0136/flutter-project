import 'package:flutter/material.dart';
import 'package:flutter_netflix_app/models/models.dart';

class ContentCard extends StatelessWidget {
  final Content content;

  const ContentCard({
    Key key,
    @required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print(content.name),
      child: Container(
        width: double.infinity,
        height: 80,
        color: Colors.grey[850],
        child: Row(
          children: [
            // image
            Container(
              width: 135,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(content.imageUrl),
                    fit: BoxFit.fitWidth,
                  )),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  content.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              child: Icon(
                Icons.play_arrow,
                size: 35,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
