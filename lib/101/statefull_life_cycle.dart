import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});
  final String message;
  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.message.length.isOdd
            ? Text('Kelime tek')
            : Text('Kelime cift'),
      ),
      body: widget.message.length.isOdd
          ? TextButton(onPressed: () {}, child: Text(widget.message))
          : ElevatedButton(onPressed: () {}, child: Text(widget.message)),
    );
  }
}
