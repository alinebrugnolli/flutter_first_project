import 'dart:developer';

import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.separated(
        itemCount: 100,
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.black,                      
          );
        },
        itemBuilder: (context, index) {
          log('Load the index $index');
          return ListTile(
            title: Text('Indice $index'),
            subtitle: Text('Flutter is TOP'),
            leading: CircleAvatar(
              maxRadius: 25,
              backgroundImage: NetworkImage('https://technobrains.io/wp-content/uploads/2021/07/img4.jpg'),
            ),
            trailing: CircleAvatar(),
          );
        },
      ),
    );
  }
}
