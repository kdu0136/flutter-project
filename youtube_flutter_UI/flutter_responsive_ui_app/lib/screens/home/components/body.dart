import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui_app/components/title_text.dart';
import 'package:flutter_responsive_ui_app/models/Product.dart';
import 'package:flutter_responsive_ui_app/screens/home/components/categories.dart';
import 'package:flutter_responsive_ui_app/screens/home/components/product_card.dart';
import 'package:flutter_responsive_ui_app/services/fetchCategories.dart';
import 'package:flutter_responsive_ui_app/services/fetchProducts.dart';
import 'package:flutter_responsive_ui_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    // It enables scrolling
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: TitleText(title: "Browse by Categories"),
            ),
            FutureBuilder(
              future: fetchCategories(),
              builder: (context, snapshot) => snapshot.hasData
                  ? Categories(categories: snapshot.data)
                  : Center(child: Image.asset("assets/ripple.gif")),
            ),
            Divider(height: 5),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: TitleText(title: "Recommends For You"),
            ),
            FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) => snapshot.hasData
                  ? RecommendProducts(products: snapshot.data)
                  : Center(child: Image.asset("assets/ripple.gif")),
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendProducts extends StatelessWidget {
  final List<Product> products;

  const RecommendProducts({
    Key key, this.products,
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
          crossAxisCount: SizeConfig.orientation == Orientation.portrait ? 2 : 4,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.693,
        ),
        itemBuilder: (context, index) =>
            ProductCard(product: products[index], press: () {}),
      ),
    );
  }
}
