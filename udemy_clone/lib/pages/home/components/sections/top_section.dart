import 'package:flutter/material.dart';
import 'package:udemy_clone/breakpoints.dart';
import 'package:udemy_clone/pages/home/components/custom_search_field.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        print('topSection maxWidth: $maxWidth');

        // web
        if (maxWidth >= tabletBreakpoint) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: buildImage(),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: buildTopSectionCard(
                    width: 450,
                    headingFontSize: 40,
                    subHeadingFontSize: 18,
                  ),
                ),
              ],
            ),
          );
        }

        // tablets
        if (maxWidth >= mobileBreakpoint) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: buildImage(),
                ),
                Positioned(
                  left: 20,
                  top: 30,
                  child: buildTopSectionCard(
                    width: 350,
                    headingFontSize: 35,
                    subHeadingFontSize: 15,
                  ),
                ),
              ],
            ),
          );
        }

        // mobile
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: buildImage(),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  buildCardContent(
                    headingFontSize: 35,
                    subHeadingFontSize: 15,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Image buildImage() {
    return Image.network(
      'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      fit: BoxFit.cover,
    );
  }

  Column buildCardContent({
    required double headingFontSize,
    required double subHeadingFontSize,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          'Learn Flutter Learn Flutter',
          style: TextStyle(
              fontSize: headingFontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(
          'Come learn Flutter! Come learn Flutter! Come learn Flutter! Come learn Flutter!',
          style: TextStyle(
              fontSize: subHeadingFontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        const SizedBox(height: 16),
        CustomSearchField(),
      ],
    );
  }

  Card buildTopSectionCard({
    required double width,
    required double headingFontSize,
    required double subHeadingFontSize,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    return Card(
      color: Colors.black,
      elevation: 8,
      child: Container(
        padding: const EdgeInsets.all(22),
        width: width,
        child: buildCardContent(
          headingFontSize: headingFontSize,
          subHeadingFontSize: subHeadingFontSize,
          crossAxisAlignment: crossAxisAlignment,
        ),
      ),
    );
  }
}
