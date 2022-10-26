import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 10;
  Color? indicatorColor = TabBarColors()._indicatorColor;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _tabController.animateTo(_MyTabViews.home.index);
            },
            child: Icon(
              Icons.navigation_outlined,
              color: Colors.black,
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: _notchedValue,
            child: _myTabViews(),
          ),
          appBar: AppBar(
            title: Text('TAB LEARN'),
          ),
          body: _tabBarView(),
        ));
  }

  TabBar _myTabViews() {
    return TabBar(
      onTap: (int index) {},
      indicatorColor: indicatorColor,
      controller: _tabController,
      tabs: _MyTabViews.values
          .map((e) => Tab(
                text: '${e.name}',
              ))
          .toList(),
    );
  }

  TabBarView _tabBarView() {
    return TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          Container(
            color: Colors.blue[300],
          ),
          Container(
            color: Colors.white,
          )
        ]);
  }
}

class TabBarColors {
  Color? _indicatorColor = Colors.blue[200];
}

enum _MyTabViews { home, settings, profile, stared }

extension _MyTabViewExtension on _MyTabViews {}
