import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Card(
              margin: ProjectMargins.pageCardMargin,
              child: const SizedBox(
                height: 100,
                width: 300,
                child: Center(child: Text('Enes')),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            Card(
              margin: ProjectMargins.pageCardMargin,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const SizedBox(
                height: 100,
                width: 300,
                child: Center(child: Text('Enes')),
              ),
            ),
            _CustomCard(
              child: const SizedBox(
                height: 100,
                width: 300,
                child: Center(child: Text('Enes')),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProjectMargins {
  static const pageCardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  _CustomCard({super.key, required this.child});
  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Card(
      margin: ProjectMargins.pageCardMargin,
      shape: roundedRectangleBorder,
      child: child,
    );
  }
}
