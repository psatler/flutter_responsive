import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'story_circle.dart';

class StoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWrapper.of(context).isMobile;

    return Container(
      height: 110,
      margin: EdgeInsets.symmetric(vertical: isMobile ? 15 : 35),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 16,
        itemBuilder: (context, index) {
          return StoryCircle();
        },
      ),
    );
  }
}
