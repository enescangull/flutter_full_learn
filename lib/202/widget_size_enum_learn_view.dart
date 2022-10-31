import 'package:flutter/material.dart';

class WidgetSizeEnumLearnView extends StatefulWidget {
  const WidgetSizeEnumLearnView({super.key});

  @override
  State<WidgetSizeEnumLearnView> createState() =>
      _WidgetSizeEnumLearnViewState();
}

class _WidgetSizeEnumLearnViewState extends State<WidgetSizeEnumLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Card(
              child: Container(
                height: WidgetSizes.normalCardHeight.value(),
                color: Colors.green,
                width: WidgetSizes.circleProfileWidth.value(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum WidgetSizes { normalCardHeight, circleProfileWidth }

extension WidgetSizeExtension on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardHeight:
        // TODO: Handle this case.
        return 300;
      case WidgetSizes.circleProfileWidth:
        // TODO: Handle this case.
        return 150;
    }
  }
}
