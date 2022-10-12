import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/container_sized_box_learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Scaffold Samples',
        ),
      ),
      body: const Text('Merhaba'),
      backgroundColor: Colors.white70,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        // decoration: ProjectContainerDecoration(),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'a'),
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'b')
          ],
        ),
      ),
    );
  }
}
