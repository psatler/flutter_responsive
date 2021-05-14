import 'package:flutter/material.dart';
import 'package:udemy_clone/breakpoints.dart';

class CoursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16),
          physics:
              NeverScrollableScrollPhysics(), // the GridView is already inside a ListView, so we lock its Scroll behavior so that we can scroll the list view
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.red,
            );
          },
        );
      },
    );
  }
}
