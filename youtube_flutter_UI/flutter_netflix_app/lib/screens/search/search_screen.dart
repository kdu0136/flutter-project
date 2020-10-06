import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_netflix_app/cubits/cubits.dart';
import 'package:flutter_netflix_app/data/data.dart';
import 'package:flutter_netflix_app/screens/search/components/components.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    print('rebuild');
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: BlocBuilder<SearchAppBarCubit, String>(builder: (context, text) {
          return CustomAppBar(searchText: text);
        }),
      ),
      body: Body(
        title: "최다 검색어",
        contentList: largestKeyword,
      ),
    );
  }
}
