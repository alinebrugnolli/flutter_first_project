import 'dart:developer';

import 'package:flutter/material.dart';

class ButtonsRotationTextPage extends StatelessWidget {
  const ButtonsRotationTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Rotation Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.red,
                    child: Text('Aline Fernanda'),
                  ),
                ),
                Icon(Icons.ac_unit),
              ],
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                padding: EdgeInsets.all(10),
                minimumSize: Size(50, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              child: Text('Save'),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.exit_to_app),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shadowColor: Colors.blue,
                minimumSize: Size(120, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              child: Text('Save'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.airplanemode_active),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shadowColor: Colors.blue,
                minimumSize: Size(120, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              label: Text('Airplane Mode'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shadowColor: WidgetStatePropertyAll(Colors.blue),
                minimumSize: WidgetStateProperty.resolveWith(
                  (states) {
                    if (states.contains(WidgetState.pressed)) {
                      return Size(150, 150);
                    } else if (states.contains(WidgetState.hovered)) {
                      return Size(180, 180);
                    }
                    return Size(120, 50);
                  },
                ),
                backgroundColor: WidgetStateProperty.resolveWith(
                  (states) {
                    if (states.contains(WidgetState.pressed)) {
                      return Colors.black;
                    } else if (states.contains(WidgetState.hovered)) {
                      return Colors.amber;
                    }
                    return Colors.red;
                  },
                ),
              ),
              child: Text('Save'),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Text('InkWell'),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: Text('Gesture Detector'),
              onTap: () => log('Gesture Clicked'),
              onVerticalDragStart: (_) => log('Start $_'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.green,
                  ],
                ),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    color: Colors.red,
                  ),
                ],
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: Center(
                  child: Text('Save Button', style: TextStyle(color: Colors.white),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
