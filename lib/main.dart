import 'package:flutter/material.dart';

import './post_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ImagePost'),
        ),
        body: PostManager(),
      ),
    );
  }
}