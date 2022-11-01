import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/animated_learn.dart';
import 'package:flutter_full_learn/202/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: LightTheme().theme,
      // ThemeData.dark().copyWith(
      //     textTheme: TextTheme(
      //         subtitle1:
      //             TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
      //     tabBarTheme: TabBarTheme(
      //       labelColor: Colors.white,
      //       unselectedLabelColor: Colors.blue[300],
      //     ),
      //     floatingActionButtonTheme: FloatingActionButtonThemeData(
      //       backgroundColor: Colors.blue[300],
      //       splashColor: Colors.white,
      //     ),
      //     bottomAppBarTheme:
      //         BottomAppBarTheme(shape: CircularNotchedRectangle()),
      //     progressIndicatorTheme:
      //         ProgressIndicatorThemeData(color: Colors.white70),
      //     listTileTheme: ListTileThemeData(
      //       contentPadding: EdgeInsets.zero,
      //     ),
      //     cardTheme: CardTheme(
      //       elevation: 5,
      //     ),
      //     inputDecorationTheme: InputDecorationTheme(
      //         filled: true,
      //         iconColor: Colors.red,
      //         fillColor: Colors.white,
      //         border: OutlineInputBorder(),
      //         labelStyle: TextStyle(
      //             color: Colors.red,
      //             fontSize: 24,
      //             fontWeight: FontWeight.w600)),
      //     appBarTheme: AppBarTheme(
      //       centerTitle: true,
      //       systemOverlayStyle: SystemUiOverlayStyle.light,
      //       backgroundColor: Colors.transparent,
      //       elevation: 0,
      //     )),

      home: const AnimatedLearnView(),

      debugShowCheckedModeBanner: false,
    );
  }
}
