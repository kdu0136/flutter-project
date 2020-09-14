import 'package:flutter/material.dart';
import 'package:flutter_facebook_app/models/models.dart';
import 'components.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key key,
    @required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      color: Colors.white,
      child: Column(
        children: [
          _buildProfileComment(),
          const Divider(height: 10, thickness: 0.5),
          _buildButtons(),
        ],
      ),
    );
  }

  Container _buildButtons() {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlatButton.icon(
            onPressed: () => print("Live"),
            icon: const Icon(
              Icons.videocam,
              color: Colors.red,
            ),
            label: Text("Live"),
          ),
          VerticalDivider(width: 8),
          FlatButton.icon(
            onPressed: () => print("Photo"),
            icon: const Icon(
              Icons.photo_library,
              color: Colors.green,
            ),
            label: Text("Photo"),
          ),
          VerticalDivider(width: 8),
          FlatButton.icon(
            onPressed: () => print("Room"),
            icon: const Icon(
              Icons.video_call,
              color: Colors.purpleAccent,
            ),
            label: Text("Room"),
          ),
        ],
      ),
    );
  }

  Row _buildProfileComment() {
    return Row(
      children: [
        ProfileAvatar(imageUrl: currentUser.imageUrl),
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
            // collapsed remove under line
            decoration: InputDecoration.collapsed(
              hintText: "What\'s on your mind?",
            ),
          ),
        )
      ],
    );
  }
}
