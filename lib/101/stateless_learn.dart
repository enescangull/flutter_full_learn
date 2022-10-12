import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final String text2 = 'enes1';
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(text: text2),
          TitleTextWidget(text: 'enes2'),
          TitleTextWidget(text: 'enes3'),
          TitleTextWidget(text: 'enes4'),
          _CustomContainer(),
          _emptyBox()
        ],
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(
        height: 10,
      );
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(text, style: Theme.of(context).textTheme.headline3);
  }
}
