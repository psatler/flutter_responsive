import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  Widget buildAdvantage({required String title, required String subTitle}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(width: 8),
        Column(
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
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        spacing: 8,
        runSpacing: 16,
        children: [
          buildAdvantage(
              title: "+30.000 students",
              subTitle: "Great course with an excellent content"),
          buildAdvantage(
              title: "+30.000 students",
              subTitle: "Great course with an excellent content"),
          buildAdvantage(
              title: "+30.000 students",
              subTitle: "Great course with an excellent content"),
        ],
      ),
    );
  }
}
