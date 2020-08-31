import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F7),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset("assets/icons/search.svg"),
          SizedBox(width: 16),
          buildSearchText("Search for anything"),
        ],
      ),
    );
  }

  Expanded buildSearchText(String hint) {
    return Expanded(
      child: TextField(
        style: TextStyle(
          fontSize: 16,
        ),
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontSize: 16,
            color: Color(0xFFA0A5BD),
          ),
          hintText: hint,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(40),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    );
  }
}
