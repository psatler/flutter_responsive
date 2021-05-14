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

        if (maxWidth >= 1200) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network(
                    'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: BuildTopSectionCardWidget(
                    width: 450,
                    headingFontSize: 40,
                    subHeadingFontSize: 18,
                  ),
                ),
              ],
            ),
          );
        }

        if (maxWidth >= mobileBreakpoint) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.network(
                    'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 30,
                  child: BuildTopSectionCardWidget(
                    width: 350,
                    headingFontSize: 35,
                    subHeadingFontSize: 15,
                  ),
                ),
              ],
            ),
          );
        }

        return Container();
      },
    );
  }
}

class BuildTopSectionCardWidget extends StatelessWidget {
  final double width;
  final double headingFontSize;
  final double subHeadingFontSize;

  const BuildTopSectionCardWidget({
    Key? key,
    required this.width,
    required this.headingFontSize,
    required this.subHeadingFontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 8,
      child: Container(
        padding: const EdgeInsets.all(22),
        width: width,
        child: Column(
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
        ),
      ),
    );
  }
}
