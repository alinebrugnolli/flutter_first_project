import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_project/page/bottom_navigator_bar/bottom_navigator_bar_page.dart';
import 'package:flutter_first_project/page/buttons_rotation_text/buttons_rotation_text_page.dart';
import 'package:flutter_first_project/page/circle_avatar/circle_avatar_page.dart';
import 'package:flutter_first_project/page/cities/cities_page.dart';
import 'package:flutter_first_project/page/colors/colors_page.dart';
import 'package:flutter_first_project/page/container/container_page.dart';
import 'package:flutter_first_project/page/dialogs/dialogs_page.dart';
import 'package:flutter_first_project/page/forms/forms_page.dart';
import 'package:flutter_first_project/page/home/home_page.dart';
import 'package:flutter_first_project/page/layout_builder/layout_builder_page.dart';
import 'package:flutter_first_project/page/material_banner/material_banner_page.dart';
import 'package:flutter_first_project/page/media_query/media_query_page.dart';
import 'package:flutter_first_project/page/rows_columns/rows_column_page.dart';
import 'package:flutter_first_project/page/scrolls/listview_page.dart';
import 'package:flutter_first_project/page/scrolls/singlechildscrollview_page.dart';
import 'package:flutter_first_project/page/snackbar/snackbar_page.dart';
import 'package:flutter_first_project/page/stack/stack_page.dart';
import 'package:flutter_first_project/page/stack/stack_page2.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false, //!kReleaseMode
      builder: (_) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter First Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        // colorScheme: ColorScheme.fromSeed(
        //   seedColor: Colors.blueAccent,
        // ).copyWith(
        //   primary: Colors.amber,
        // ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
        ),
        primaryColor: Colors.blue,
        primaryColorLight: Colors.cyan,
        primaryColorDark: Colors.blueAccent,
        primarySwatch: Colors.purple,
        fontFamily: 'Roboto',
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(            
            foregroundColor: Colors.deepOrange,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/rows_columns': (_) => const RowsColumnPage(),
        '/media_query': (_) => const MediaQueryPage(),
        '/layout_builder': (_) => const LayoutBuilderPage(),
        '/buttons_rotation_text': (_) => const ButtonsRotationTextPage(),
        '/scrolls/singlechild': (_) => const SinglechildscrollviewPage(),
        '/scrolls/listview': (_) => const ListviewPage(),
        '/dialogs': (_) => const DialogsPage(),
        '/snackbars': (_) => const SnackbarPage(),
        '/forms': (_) => const FormsPage(),
        '/cities': (_) => const CitiesPage(),
        '/stack': (_) => const StackPage(),
        '/stack/page2': (_) => const StackPage2(),
        '/bottom_navigator_bar': (_) => const BottomNavigatorBarPage(),
        '/circle_avatar': (_) => const CircleAvatarPage(),
        '/colors': (_) => const ColorsPage(),
        '/material_banner': (_) => const MaterialBannerPage(),
      },
    );
  }
}
