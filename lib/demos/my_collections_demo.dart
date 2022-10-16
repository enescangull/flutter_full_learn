import 'package:flutter/material.dart';

class MyCollectionsDemo extends StatefulWidget {
  const MyCollectionsDemo({super.key});

  @override
  State<MyCollectionsDemo> createState() => _MyCollectionsDemoState();
}

class _MyCollectionsDemoState extends State<MyCollectionsDemo> {
  late List<collectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = collectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: PaddingUtility().paddingHorizontal,
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          return _CategoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required collectionModel model,
  })  : _model = model,
        super(key: key);

  final collectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().margin,
      child: Padding(
        padding: PaddingUtility().paddingAll,
        child: Column(
          children: [
            Image.asset(
              _model.imagePath,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: PaddingUtility().paddingTop,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_model.title),
                  Text('${_model.price}ETH'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class collectionModel {
  final String imagePath;
  final String title;
  final double price;

  collectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingAll = const EdgeInsets.all(20);
  final margin = EdgeInsets.only(bottom: 40);
  final paddingHorizontal = EdgeInsets.symmetric(horizontal: 20);
}

class collectionItems {
  late List<collectionModel> items;

  collectionItems() {
    items = [
      collectionModel(
          imagePath: 'assets/images/collection_image.jpg',
          title: 'Image Title1',
          price: 0.63),
      collectionModel(
          imagePath: 'assets/images/collection_image.jpg',
          title: 'Image Title2',
          price: 0.63),
      collectionModel(
          imagePath: 'assets/images/collection_image.jpg',
          title: 'Image Title3',
          price: 0.63),
    ];
  }
}
