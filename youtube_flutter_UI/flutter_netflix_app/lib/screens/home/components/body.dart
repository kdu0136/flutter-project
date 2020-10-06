import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_netflix_app/cubits/cubits.dart';
import 'package:flutter_netflix_app/data/data.dart';
import 'package:flutter_netflix_app/screens/home/components/components.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        context.bloc<HomeAppBarCubit>().setOffset(_scrollController.offset);
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverToBoxAdapter(
          child: BodyHeader(featuredContent: sintelContent),
        ),
        SliverToBoxAdapter(
          child: Previews(
            key: PageStorageKey("previews"),
            contentList: previews,
          ),
        ),
        SliverToBoxAdapter(
          child: Contents(
            key: PageStorageKey("myList"),
            title: "내가 찜한 콘텐츠",
            contentList: myList,
          ),
        ),
        SliverToBoxAdapter(
          child: Contents(
            key: PageStorageKey("originals"),
            title: "NetFlix 오리지널",
            contentList: originals,
            isBigImage: true,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(bottom: 20.0),
          sliver: SliverToBoxAdapter(
            child: Contents(
              key: PageStorageKey("trending"),
              title: "지금 뜨는 콘텐츠",
              contentList: trending,
            ),
          ),
        ),
      ],
    );
  }
}
