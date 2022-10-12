import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: RandomImage(),
                  onTap: () {},
                  subtitle: Align(
                      alignment: Alignment.center,
                      child: Text('How do you use your card?')),
                  leading: Icon(Icons.credit_card_rounded),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
