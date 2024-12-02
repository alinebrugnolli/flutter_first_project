import 'dart:developer';

import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBars'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text('User saved successfully'),
                    backgroundColor: Colors.amber,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text('Simple Snackbar')),
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text('User saved successfully'),
                    backgroundColor: Colors.amber,
                    action: SnackBarAction(
                        label: 'UNDO',
                        onPressed: () {
                          log('Clicked!!!!');
                        }),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  ScaffoldMessenger.of(context).removeCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text('Action Snackbar')),
          ],
        ),
      ),
    );
  }
}
