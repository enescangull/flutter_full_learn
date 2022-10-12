// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});

  @override
  Widget build(BuildContext context) {
    String data = 'Create your first note';
    String _buttonData = 'Create a note';
    String _importButtonData = 'Import notes';
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      backgroundColor: Colors.blueGrey[100],
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().booksImageWithoutPath),
            TitleWidget(data: data),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubtitleWidget(subTitle: 'Add a note'),
            ),
            Spacer(),
            _createButton(buttonData: _buttonData),
            _importButton(importButtonData: _importButtonData),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

class _importButton extends StatelessWidget {
  const _importButton({
    Key? key,
    required String importButtonData,
  })  : _importButtonData = importButtonData,
        super(key: key);

  final String _importButtonData;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: Text(_importButtonData));
  }
}

class _createButton extends StatelessWidget {
  const _createButton({
    Key? key,
    required String buttonData,
  })  : _buttonData = buttonData,
        super(key: key);

  final String _buttonData;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)))),
        onPressed: () {},
        child: SizedBox(
            height: LargeElevatedButton.buttonHeight,
            child: Center(
                child: Text(
              _buttonData,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.black),
            ))));
  }
}

class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget(
      {Key? key, required this.subTitle, this.textAlign = TextAlign.center})
      : super(key: key);
  final String subTitle;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      textAlign: textAlign,
      style:
          Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.black),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static final EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 50);
  static final EdgeInsets verticalPadding =
      const EdgeInsets.symmetric(vertical: 20);
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$name.png',
      fit: BoxFit.cover,
    );
  }
}

class LargeElevatedButton {
  static const double buttonHeight = 50;
}
