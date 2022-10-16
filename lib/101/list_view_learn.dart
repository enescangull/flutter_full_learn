import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          FittedBox(
              child: Text(
            'Merhaba',
            style: Theme.of(context).textTheme.headline1,
            maxLines: 1,
          )),
          Container(color: Colors.red, height: 300),
          Divider(),
          SizedBox(
              height: 300,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 3),
                  children: [
                    _containerWithPadding(
                      color: Colors.green,
                    ),
                    _containerWithPadding(
                      color: Colors.blue,
                    ),
                    _containerWithPadding(
                      color: Colors.yellow,
                    ),
                  ])),
          IconButton(onPressed: () {}, icon: Icon(Icons.close))
        ],
      ),
    );
  }
}

class _containerWithPadding extends StatelessWidget {
  const _containerWithPadding({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Container(
        color: color,
        width: 150,
      ),
    );
  }
}
