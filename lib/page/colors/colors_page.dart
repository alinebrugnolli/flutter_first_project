import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {

  const ColorsPage({ super.key });

   @override
   Widget build(BuildContext context) {

    // final color = Colors.red;
    // final color = Colors.red.withOpacity(0.5);
    // final color = Color.fromRGBO(0, 0, 255, 1);
    final color = Color(0XFF5FC9F8);    

       return Scaffold(
           appBar: AppBar(title: const Text('Colors'),),
           body: Center(
             child: Container(
              width: 400,
              height: 400,
              color: color,
             ),
           ),
       );
  }
}
