import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Builder'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constrains) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.red,
                  width: constrains.maxWidth * .90,
                  height: constrains.maxHeight * .5,
                ),
                Container(
                  color: Colors.blue,
                  width: constrains.maxWidth,
                  height: constrains.maxHeight * .5,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
