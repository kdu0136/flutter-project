import 'package:flutter/material.dart';
import 'package:flutter_netflix_app/models/models.dart';
import 'package:flutter_netflix_app/screens/coming_soon/components/components.dart';
import 'package:flutter_netflix_app/screens/coming_soon/widgets/widgets.dart';

class Body extends StatelessWidget {
  final List<ComingSoon> comingSoonList;

  const Body({
    Key key,
    @required this.comingSoonList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: BodyHeader(),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: ComingSoonCard(
                  comingSoon: comingSoonList[index],
                  screenSize: screenSize,
                ),
              ),
              childCount: comingSoonList.length,
            ),
          ),
        )
      ],
    );
  }
}
