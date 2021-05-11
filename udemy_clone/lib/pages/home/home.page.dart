import 'package:flutter/material.dart';
import 'package:udemy_clone/pages/home/components/app_bar/mobile_app_bar.dart';
import 'package:udemy_clone/pages/home/components/app_bar/web_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(
            "biggest: ${constraints.biggest}  --- smallest: ${constraints.smallest}");
        return Scaffold(
          appBar: constraints.maxWidth < 800
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
          drawer: constraints.maxWidth < 800 ? Drawer() : null,
        );
      },
    );
  }
}
