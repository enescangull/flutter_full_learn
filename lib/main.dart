import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/app_bar_learn.dart';
import 'package:flutter_full_learn/101/button_learn.dart';
import 'package:flutter_full_learn/101/card_learn.dart';
import 'package:flutter_full_learn/101/column_row.dart';
import 'package:flutter_full_learn/101/container_sized_box_learn.dart';
import 'package:flutter_full_learn/101/custom_widget_learn.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/indicator_learn.dart';
import 'package:flutter_full_learn/101/list_tile_learn.dart';
import 'package:flutter_full_learn/101/list_view_builder.dart';
import 'package:flutter_full_learn/101/list_view_learn.dart';
import 'package:flutter_full_learn/101/navigation_learn.dart';
import 'package:flutter_full_learn/101/padding_learn.dart';
import 'package:flutter_full_learn/101/page_view_learn.dart';
import 'package:flutter_full_learn/101/scaffold_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';
import 'package:flutter_full_learn/101/statefull_learn.dart';
import 'package:flutter_full_learn/101/statefull_life_cycle.dart';
import 'package:flutter_full_learn/101/stateless_learn.dart';
import 'package:flutter_full_learn/101/text_field_learn.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';
import 'package:flutter_full_learn/202/service/comment_model_learn_view.dart';
import 'package:flutter_full_learn/202/password_text_field_learn_view.dart';
import 'package:flutter_full_learn/202/service/service_learn_view.dart';
import 'package:flutter_full_learn/202/service/service_post_learn_view.dart';
import 'package:flutter_full_learn/202/tab_learn.dart';
import 'package:flutter_full_learn/202/theme/light_theme.dart';
import 'package:flutter_full_learn/202/theme_learn_view.dart';
import 'package:flutter_full_learn/202/widget_size_enum_learn_view.dart';
import 'package:flutter_full_learn/demos/color_demos_view.dart';
import 'package:flutter_full_learn/demos/color_life_cycle_view.dart';
import 'package:flutter_full_learn/demos/my_collections_demo.dart';
import 'package:flutter_full_learn/demos/note_demos_view.dart';
import 'package:flutter_full_learn/demos/stack_demo_view.dart';

import '202/model_learn_view.dart';

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
      home: const ThemeLearnView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
