import 'dart:developer';

import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {    

    log('Largura ${MediaQuery.sizeOf(context).width}');
    log('Altura ${MediaQuery.sizeOf(context).height}');
    log('Orientação ${MediaQuery.maybeOrientationOf(context)}');
    log('Padding TOP ${ MediaQuery.paddingOf(context).top}');
    log('Tamanho AppBarDefault $kToolbarHeight');

    var appBar = AppBar(
      title: const Text('MediaQuery'),
    );

    final statusBar =  MediaQuery.paddingOf(context).top;
    final heightBody = MediaQuery.sizeOf(context).height - statusBar - kToolbarHeight;
    
    log('Tamanho AppBar ${appBar.preferredSize.height}');

    return Scaffold(
      appBar: appBar,
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.red,
            width: MediaQuery.sizeOf(context).width * .50,
            height: heightBody * .5,
          ),
          Container(
            color: Colors.blue,
            width: MediaQuery.sizeOf(context).width,
            height: heightBody * .5,
          ),
        ],
      )),
    );
  }
}
