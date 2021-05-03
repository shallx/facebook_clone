import 'package:facebook/models/user_model.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey[200],
              ),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?'),
                ),
              )
            ],
          ),
          Divider(
            color: Colors.grey[200],
          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  icon: Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                  label: Text("Live"),
                ),
                VerticalDivider(
                  color: Colors.grey[200],
                ),
                TextButton.icon(
                  icon: Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                  onPressed: () {},
                  label: Text("Photo"),
                ),
                VerticalDivider(
                  color: Colors.grey[200],
                ),
                TextButton.icon(
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.purple,
                  ),
                  onPressed: () {},
                  label: Text("Room"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
