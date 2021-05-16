import 'package:flutter/material.dart';
import 'package:instagram_clone/constants.dart';

class StoryCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.green,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black87,
            ),
            child: CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(avatarImage),
            ),
          ),
        ),
        Text(
          'John Doe',
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
