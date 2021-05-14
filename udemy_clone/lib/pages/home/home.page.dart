import 'package:flutter/material.dart';
import 'package:udemy_clone/breakpoints.dart';

import 'components/app_bar/web_app_bar.dart';
import 'components/app_bar/mobile_app_bar.dart';
import 'components/sections/advantages_section.dart';
import 'components/sections/top_section.dart';
import 'components/sections/courses.section.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(
            "biggest: ${constraints.biggest}  --- smallest: ${constraints.smallest}");
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constraints.maxWidth < mobileBreakpoint
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(
                    double.infinity,
                    56,
                  ),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(
                    double.infinity,
                    72,
                  ),
                ),
          drawer: constraints.maxWidth < mobileBreakpoint ? Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 1400,
              ),
              child: ListView(
                children: [
                  TopSection(),
                  AdvantagesSection(),
                  CoursesSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
