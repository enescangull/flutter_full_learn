import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertrical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                color: Colors.white,
                height: 100,
                width: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(
                padding: EdgeInsets.zero,
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50) +
                  ProjectPadding.pagePaddingVertrical,
              child: const Text('Enes'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertrical = const EdgeInsets.symmetric(vertical: 10);
}
