import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});
  final String _imagePath =
      'https://ouch-cdn2.icons8.com/cLxGvlTb-EUw-FbItFMa7ZVNwUqDjdGx-KLMDgERt8M/rs:fit:512:384/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMjk3/LzUzYmExMjI3LTFm/MWUtNDk5MS1hODY1/LTU1MWQ5MGRiY2Y3/ZS5wbmc.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
                height: 256,
                width: 256,
                child: PngImage(name: ImageItems().booksImageWithoutPath)),
            Image.network(
              _imagePath,
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.abc_outlined),
            )
          ],
        ),
      ),
    );
  }
}

class ImageItems {
  final String booksImage = "assets/images/back_to_school-512.png";
  final String booksImageWithoutPath = "back_to_school-512";
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
