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
                    const SizedBox(width: 4),
                    IconButton(
                        icon: Icon(Icons.search, color: Colors.grey[500]),
                        onPressed: () {}),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            isCollapsed: true,
                            border: InputBorder.none,
                            hintText: 'Pesquise alguma aqui!'),
                      ),
                    )
                  ],
                ),
              ),
            ),
            if (constraints.maxWidth >= 400) ...[
              const SizedBox(width: 16),
              TextButton(
                onPressed: () {},
                child: Text('Aprender'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
              ),
            ],
            if (constraints.maxWidth >= 500) ...[
              const SizedBox(width: 4),
              TextButton(
                onPressed: () {},
                child: Text('Flutter'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
              ),
            ],
          ],
        );
      },
    ));
  }
}
