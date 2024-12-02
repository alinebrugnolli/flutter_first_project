import 'package:flutter/material.dart';
import 'package:flutter_first_project/page/bottom_navigator_bar/page1.dart';
import 'package:flutter_first_project/page/bottom_navigator_bar/page2.dart';

class BottomNavigatorBarPage extends StatefulWidget {
  const BottomNavigatorBarPage({super.key});

  @override
  State<BottomNavigatorBarPage> createState() => _BottomNavigatorBarPageState();
}

class _BottomNavigatorBarPageState extends State<BottomNavigatorBarPage> {
  
  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigator Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        backgroundColor: Theme.of(context).primaryColor,
        currentIndex: indice,
        onTap: (index) {
          setState(() {
            indice = index;
          });
          print(index);
        },
        items: [
          BottomNavigationBarItem(
            label: 'Page 1',
            icon: Icon(Icons.ads_click),
          ),
          BottomNavigationBarItem(
            label: 'Page 2',
            icon: Icon(Icons.ads_click),
          ),
        ],
      ),
      body: IndexedStack(
        index: indice,
        children: [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}
