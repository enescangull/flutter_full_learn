import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSize iconSize = IconSize();
  final IconColor iconColors = IconColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: Theme.of(context).backgroundColor,
                size: IconSize.iconSmall2x,
              )),
          const SizedBox(
            height: 50,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: iconColors.froly,
                size: IconSize().iconSmall,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: iconColors.froly,
                size: iconSize.iconSmall,
              )),
        ],
      ),
    );
  }
}

class IconSize {
  final double iconSmall = 48;
  static const double iconSmall2x = 96;
}

class IconColor {
  final Color froly = const Color(0xffEd617A);
}
