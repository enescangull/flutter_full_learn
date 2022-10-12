import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key, this.username});
  final String name = 'veli';

  final String? username;
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ('Welcome $name ${name.length}'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              ('Hello $name ${name.length}'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.yellow),
            ),
            Text(
              ('Hello $name ${name.length}'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: ProjectColors.welcomeColor),
            ),
            Text(keys.merhaba)
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      color: Colors.lime,
      wordSpacing: 2,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.bold);
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String merhaba = 'Merhaba';
}
