import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50),
          ),
          Container(
            constraints: const BoxConstraints(
                maxWidth: 150, maxHeight: 100, minWidth: 50),
            child: Text('a' * 8),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
      boxShadow: [
        BoxShadow(
          color: Colors.green,
          offset: Offset(0.1, 1),
          blurRadius: 12,
        )
      ],
      borderRadius: BorderRadius.circular(10),
      color: Colors.red,
      border: Border.all(width: 5, color: Colors.white12));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
            boxShadow: [
              BoxShadow(
                color: Colors.green,
                offset: Offset(0.1, 1),
                blurRadius: 12,
              )
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
            border: Border.all(width: 5, color: Colors.white12));
}
