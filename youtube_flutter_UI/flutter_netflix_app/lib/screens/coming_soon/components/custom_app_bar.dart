import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        margin: const EdgeInsets.only(left: 7.0),
        child: Row(
          children: [
            Icon(Icons.notifications_outlined, color: Colors.white, size: 28),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "알림 설정",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios_outlined,
                color: Colors.white, size: 20),
          ],
        ),
      ),
    );
  }
}
