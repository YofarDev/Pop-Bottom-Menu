import 'package:flutter/material.dart';
import 'package:pop_bottom_menu_example/PopBottomMenuExample.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pop Bottom Menu Example'),
        ),
        body: PopBottomMenuExample(),
      ),
    );
  }
}
