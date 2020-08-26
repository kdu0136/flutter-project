import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/constansts.dart';
import 'package:flutter_movie_info_app/screens/home/components/categories.dart';
import 'package:flutter_movie_info_app/screens/home/components/genres.dart';
import 'package:flutter_movie_info_app/screens/home/components/movie_carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // it enable scroll on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CategoryList(),
          Genres(),
          SizedBox(height: kDefaultPadding),
          MovieCarousel(),
        ],
      ),
    );
  }
}
