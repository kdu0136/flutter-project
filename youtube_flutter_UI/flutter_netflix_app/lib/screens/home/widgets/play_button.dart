import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      padding: const EdgeInsets.fromLTRB(15.0, 5.0, 20.0, 5.0),
      onPressed: () => print("Play"),
      color: Colors.white,
      icon: const Icon(Icons.play_arrow, size: 30.0),
      label: const Text(
        "Play",
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
