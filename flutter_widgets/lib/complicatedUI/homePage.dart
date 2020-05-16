import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _contentTop(),
        _contentMiddle(),
        _contentBottom(),
      ],
    );
  }

  _contentTop() => Padding(
    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
    child: Column(
          children: <Widget>[
            _topRowContents(
              contents: <Widget>[
                _topContents(icon: Icons.local_taxi, text: 'taxi1'),
                _topContents(icon: Icons.local_taxi, text: 'taxi2'),
                _topContents(icon: Icons.local_taxi, text: 'taxi3'),
                _topContents(icon: Icons.local_taxi, text: 'taxi4'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            _topRowContents(
              contents: <Widget>[
                _topContents(icon: Icons.local_taxi, text: 'taxi5'),
                _topContents(icon: Icons.local_taxi, text: 'taxi6'),
                _topContents(icon: Icons.local_taxi, text: 'taxi7'),
                _topContents(icon: Icons.local_taxi, text: 'taxi8', opacity: 0),
              ],
            ),
          ],
        ),
  );

  _topRowContents({@required List<Widget> contents}) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: contents,
      );

  // create top contents method
  _topContents(
      {@required IconData icon,
      double iconSize = 40,
      String text,
      double opacity = 1}) {
    var content = Column(
      children: <Widget>[
        Icon(icon, size: iconSize),
        Text(text),
      ],
    );
    Widget child;
    if (opacity ==0) {
      child = content;
    } else {
      child = InkWell(
        onTap: () {
          print(text);
        },
        child: content,
      );
    }
    return Opacity(
      opacity: opacity,
      child: child,
    );
  }

  _contentMiddle() => Text('Middle');

  _contentBottom() => Text('Bottom');
}
