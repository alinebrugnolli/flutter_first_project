import 'package:flutter/material.dart';

class SinglechildscrollviewPage extends StatelessWidget {
  const SinglechildscrollviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 200,
              color: Colors.blue,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 200,
              color: Colors.amber,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 200,
              color: Colors.purple,
            ),        
          ],
        ),
      ),
    );
  }
}
