import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rowsColumns,
  mediaQuery,
  layoutBuilder,
  buttonsRotationText,
  scrollsSingleChild,
  listView,
  dialogs,
  snackbars,
  forms,
  cities,
  stack,
  stack2,
  bottomNavigatorBar,
  circleAvatar,
  colors,
  materialBanner
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SingleChildScrollView(
          child: const Text('Home Page'),
        ),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            // icon: const Icon(Icons.more_vert),
            tooltip: 'Show Menu Container',
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
                case PopupMenuPages.rowsColumns:
                  Navigator.of(context).pushNamed('/rows_columns');
                  break;
                case PopupMenuPages.mediaQuery:
                  Navigator.of(context).pushNamed('/media_query');
                  break;
                case PopupMenuPages.layoutBuilder:
                  Navigator.of(context).pushNamed('/layout_builder');
                  break;
                case PopupMenuPages.buttonsRotationText:
                  Navigator.of(context).pushNamed('/buttons_rotation_text');
                  break;
                case PopupMenuPages.scrollsSingleChild:
                  Navigator.of(context).pushNamed('/scrolls/singlechild');
                  break;
                case PopupMenuPages.listView:
                  Navigator.of(context).pushNamed('/scrolls/listview');
                  break;
                case PopupMenuPages.dialogs:
                  Navigator.of(context).pushNamed('/dialogs');
                  break;
                case PopupMenuPages.snackbars:
                  Navigator.of(context).pushNamed('/snackbars');
                  break;
                case PopupMenuPages.forms:
                  Navigator.of(context).pushNamed('/forms');
                  break;
                case PopupMenuPages.cities:
                  Navigator.of(context).pushNamed('/cities');
                  break;
                case PopupMenuPages.stack:
                  Navigator.of(context).pushNamed('/stack');
                  break;
                case PopupMenuPages.stack2:
                  Navigator.of(context).pushNamed('/stack/page2');
                  break;
                case PopupMenuPages.bottomNavigatorBar:
                  Navigator.of(context).pushNamed('/bottom_navigator_bar');
                  break;
                case PopupMenuPages.circleAvatar:
                  Navigator.of(context).pushNamed('/circle_avatar');
                  break;
                case PopupMenuPages.colors:
                  Navigator.of(context).pushNamed('/colors');
                  break;
                case PopupMenuPages.materialBanner:
                  Navigator.of(context).pushNamed('/material_banner');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rowsColumns,
                  child: Text('Rows & Columns'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.mediaQuery,
                  child: Text('MediaQuery'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.layoutBuilder,
                  child: Text('Layout Builder'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.buttonsRotationText,
                  child: Text('Text Rotation Buttons'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrollsSingleChild,
                  child: Text('Scroll SingleChild'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.listView,
                  child: Text('Scroll ListView'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialogs,
                  child: Text('Dialogs'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.snackbars,
                  child: Text('SnackBars'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.forms,
                  child: Text('Forms'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.cities,
                  child: Text('Cities'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack,
                  child: Text('Stack'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack2,
                  child: Text('Stack 2'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.bottomNavigatorBar,
                  child: Text('Bottom Navigator Bar'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.circleAvatar,
                  child: Text('Circle Avatar'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.colors,
                  child: Text('Colors'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.materialBanner,
                  child: Text('Material Banner'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.blueGrey,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black12,
              foregroundColor: Colors.white,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Button X'),
              ),
              ContainerX(),
              Container(
                height: 100,
                width: 100,
                color: Theme.of(context).primaryColor,
              ),
              Builder(
                builder: (contextInterno) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: Theme.of(contextInterno).primaryColor,
                  );
                },
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  textStyle: TextStyle(fontSize: 20),
                ),
                child: Text('TEST'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerX extends StatelessWidget {
  const ContainerX({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Theme.of(context).primaryColor,
    );
  }
}
