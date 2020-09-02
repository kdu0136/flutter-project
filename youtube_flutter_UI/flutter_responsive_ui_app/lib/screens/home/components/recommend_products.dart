import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui_app/models/Product.dart';
import 'package:flutter_responsive_ui_app/screens/detail/detail_screen.dart';
import 'package:flutter_responsive_ui_app/screens/home/components/product_card.dart';
import 'package:flutter_responsive_ui_app/size_config.dart';

class RecommendProducts extends StatelessWidget {
  final List<Product> products;

  const RecommendProducts({
    Key key,
    this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: GridView.builder(
        // We just turn off grid view scrolling
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              SizeConfig.orientation == Orientation.portrait ? 2 : 4,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.693,
        ),
        itemBuilder: (context, index) => ProductCard(
            product: products[index],
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    product: products[index],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
