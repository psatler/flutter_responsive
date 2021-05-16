import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class ResponsiveMenuAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: [
            Condition.smallerThan(name: TABLET),
          ],
          child: IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ),
        const SizedBox(width: 4),
        IconButton(icon: Icon(Icons.home), onPressed: () {}),
        const SizedBox(width: 4),
        IconButton(icon: Icon(Icons.send), onPressed: () {}),
        const SizedBox(width: 4),
        IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
        const SizedBox(width: 16),
        CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1605677677382-8baa24578e08?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80'),
        )
      ],
    );
  }
}
