import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  const ProfileAvatar({required this.imageUrl, this.isActive = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundImage: CachedNetworkImageProvider(imageUrl),
          backgroundColor: Colors.grey[200],
        ),
        isActive ? Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
              border: Border.all(width: 2, color: Colors.white),
            ),
          ),
        ) : SizedBox.shrink()
      ],
    );
  }
}
