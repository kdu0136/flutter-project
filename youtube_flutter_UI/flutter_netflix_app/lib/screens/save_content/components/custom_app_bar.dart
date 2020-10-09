import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SafeArea(
        child: Center(
          child: Row(
            children: [
              Icon(
                Icons.info_outline_rounded,
                color: Colors.white,
              ),
              const SizedBox(width: 5.0),
              Text(
                "스마트 저장",
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.grey[100],
                ),
              ),
              const SizedBox(width: 5.0),
              Text(
                "켬",
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
