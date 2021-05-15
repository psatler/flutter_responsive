import 'package:flutter/material.dart';
import 'package:udemy_clone/breakpoints.dart';

class AdvantagesSection extends StatelessWidget {
  Widget buildHorizontalAdvantage(
      {required String title, required String subTitle}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(width: 8),
        Flexible(
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildVerticalAdvantage(
      {required String title, required String subTitle}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= mobileBreakpoint) {
          return Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              spacing: 8,
              runSpacing: 16,
              children: [
                buildHorizontalAdvantage(
                    title: "+30.000 students",
                    subTitle: "Great course with an excellent content"),
                buildHorizontalAdvantage(
                    title: "+30.000 students",
                    subTitle: "Great course with an excellent content"),
                buildHorizontalAdvantage(
                    title: "+30.000 students",
                    subTitle: "Great course with an excellent content"),
              ],
            ),
          );
        }

        // mobile option
        return Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: Row(
            children: [
              Expanded(
                child: buildVerticalAdvantage(
                    title: "+30.000 students",
                    subTitle: "Great course with an excellent content"),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: buildVerticalAdvantage(
                    title: "+30.000 students",
                    subTitle: "Great course with an excellent content"),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: buildVerticalAdvantage(
                    title: "+30.000 students",
                    subTitle: "Great course with an excellent content"),
              ),
            ],
          ),
        );
      },
    );
  }
}
