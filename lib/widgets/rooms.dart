import 'package:facebook/models/models.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  const Rooms({Key? key, required this.onlineUsers}) : super(key: key);

  final List<User> onlineUsers;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.orange,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4),
        scrollDirection: Axis.horizontal,
        itemCount: onlineUsers.length + 1,
        itemBuilder: (_, index) {
          if (index == 0) {
            return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: _CreateRoomButton());
          }
          return CircleAvatar();
        },
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(shadowColor: Colors.white),
      child: Row(
        children: [Icon(Icons.video_call), Text("Create Room")],
      ),
    );
  }
}
