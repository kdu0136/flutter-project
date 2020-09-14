import 'package:flutter/material.dart';
import 'package:flutter_facebook_app/config/palette.dart';
import 'package:flutter_facebook_app/data/data.dart';
import 'package:flutter_facebook_app/models/models.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'components.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        _buildAppBar(),
        // create post
        SliverToBoxAdapter(
          child: CreatePostContainer(currentUser: currentUser),
        ),
        // create room
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
          sliver: SliverToBoxAdapter(
            child: Rooms(onlineUsers: onlineUsers),
          ),
        ),
        // story
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          sliver: SliverToBoxAdapter(
            child: Stories(
              currentUser: currentUser,
              stories: stories,
            ),
          ),
        ),
        // posts
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final Post post = posts[index];
              return PostCard(post: post);
            },
            childCount: posts.length,
          ),
        ),
      ],
    );
  }

  SliverAppBar _buildAppBar() {
    final iconSize = 30.0;
    return SliverAppBar(
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      title: Text(
        "facebook",
        style: const TextStyle(
          color: Palette.facebookBlue,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          letterSpacing: -1.2,
        ),
      ),
      centerTitle: false,
      floating: true,
      actions: [
        CircleButton(
          icon: Icons.search,
          iconSize: iconSize,
          onPressed: () => print("search"),
        ),
        CircleButton(
          icon: MdiIcons.facebookMessenger,
          iconSize: iconSize,
          onPressed: () => print("messenger"),
        ),
      ],
    );
  }
}
