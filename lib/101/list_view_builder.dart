import 'package:flutter/material.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({super.key});

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.white,
            thickness: 1,
          );
        },
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          print(index);
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(child: Image.network('https://picsum.photos/200/300')),
                Text((index + 1).toString()),
              ],
            ),
          );
        },
      ),
    );
  }
}
