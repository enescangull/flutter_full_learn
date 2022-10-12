import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [CenteredCircularProgress()],
      ),
      body: Column(
        children: [
          Center(child: LinearProgressIndicator()),
          SizedBox(
            height: 50,
          ),
          Center(
            child: CenteredCircularProgress(),
          ),
        ],
      ),
    );
  }
}

class CenteredCircularProgress extends StatelessWidget {
  const CenteredCircularProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
