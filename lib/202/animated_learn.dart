import 'package:flutter/material.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: _DurationItems.durationLow);
  }

  bool _isVisible = false;
  bool _isOpacity = false;
  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  //Text('data', style: context.textTheme().headline1)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _animatedPlaceholderWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeVisible();
          controller.animateTo(_isVisible ? 1 : 0);
        },
      ),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
              opacity: _isOpacity ? 1 : 0,
              duration: _DurationItems.durationLow,
              child: const Text('data'),
            ),
            trailing: IconButton(
                onPressed: () {
                  _changeOpacity();
                },
                icon: const Icon(Icons.precision_manufacturing_rounded)),
          ),
          AnimatedDefaultTextStyle(
              style: (_isVisible
                      ? context.textTheme().headline1
                      : context.textTheme().subtitle1) ??
                  const TextStyle(),
              duration: _DurationItems.durationLow,
              child: const Text('data')),
          AnimatedIcon(icon: AnimatedIcons.view_list, progress: controller),
          AnimatedContainer(
            duration: _DurationItems.durationLow,
            height: _isVisible
                ? (MediaQuery.of(context).size.width) * 0.1
                : (MediaQuery.of(context).size.width) * 0.2,
            width: (MediaQuery.of(context).size.height) * 0.4,
            color: Colors.indigo,
            margin: const EdgeInsets.all(10),
          ),
          Expanded(
              child: Stack(
            children: const [
              AnimatedPositioned(
                  top: 30,
                  curve: Curves.elasticInOut,
                  duration: _DurationItems.durationLow,
                  child: Text('data'))
            ],
          ))
        ],
      ),
    );
  }

  AnimatedCrossFade _animatedPlaceholderWidget() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox.shrink(),
      duration: _DurationItems.durationLow,
      crossFadeState:
          _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const durationLow = Duration(seconds: 3);
}
