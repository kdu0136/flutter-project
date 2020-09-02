import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui_app/models/Categories.dart';
import 'package:flutter_responsive_ui_app/screens/home/components/category_card.dart';

class Categories extends StatelessWidget {
  final List<Category> categories;

  const Categories({
    Key key,
    this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            category: categories[index],
          ),
        ),
      ),
    );
  }
}
