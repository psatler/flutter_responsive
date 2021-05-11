import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(
      builder: (context, constraints) {
        print(
            "WebAppBarResponsiveContent: biggest: ${constraints.biggest}  --- smallest: ${constraints.smallest}");

        return Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.search, color: Colors.black),
                        onPressed: () {}),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Pesquise alguma aqui!'),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      },
    ));
  }
}
