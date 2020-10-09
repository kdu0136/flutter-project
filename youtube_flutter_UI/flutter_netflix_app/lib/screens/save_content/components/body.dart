import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenSize.width / 2,
                  height: screenSize.width / 2,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Icon(
                          Icons.arrow_downward_outlined,
                          color: Colors.black,
                          size: 150.0,
                        ),
                        Container(
                          width: 110.0,
                          height: 13.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  "저장하신 영화와 TV 프로그램이 여기에 표시됩니다.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: FlatButton.icon(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              onPressed: () => print("Play"),
              color: Colors.white,
              icon: const SizedBox.shrink(),
              label: const Text(
                "저장 가능한 콘텐츠 찾아보기",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
