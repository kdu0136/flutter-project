import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_netflix_app/cubits/app_bar/search_app_bar_cubit.dart';

class CustomAppBar extends StatefulWidget {
  final String searchText;

  const CustomAppBar({
    Key key,
    this.searchText = "",
  }) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = new TextEditingController(text: widget.searchText);
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        margin: const EdgeInsets.symmetric(horizontal: 7.0),
        color: Colors.grey[800],
        child: Row(
          children: [
            Icon(Icons.search, color: Colors.grey[400], size: 28),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: TextField(
                  controller: _textController,
                  onChanged: (text) =>
                      context.bloc<SearchAppBarCubit>().setText(text),
                  cursorColor: Colors.white,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: "프로그램,영화,장르 등을 검색",
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Icon(Icons.mic, color: Colors.grey[400], size: 28),
          ],
        ),
      ),
    );
  }
}
