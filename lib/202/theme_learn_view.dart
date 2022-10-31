import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/password_text_field_learn_view.dart';

class ThemeLearnView extends StatefulWidget {
  const ThemeLearnView({super.key});

  @override
  State<ThemeLearnView> createState() => _ThemeLearnViewState();
}

class _ThemeLearnViewState extends State<ThemeLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onSecondary,
        onPressed: () {},
      ),
      body: Column(
        children: [
          PasswordTextField(),
          CheckboxListTile(
            value: true,
            onChanged: (val) {},
            title: const Text('Select'),
          )
        ],
      ),
    );
  }
}
