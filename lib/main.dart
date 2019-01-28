import 'package:flutter/material.dart';

import './post_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
        accentColor: Colors.orange,
        
      ),
      home: Scaffold(
        appBar: AppBar(
        leading :IconButton(
            icon: Icon(Icons.child_care),
          ),
        title: Text('Insta-photo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_a_photo),
            tooltip: 'Take a Photo',
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            tooltip: 'View Profile',
          ),
        ],
      ),
        body: PostManager(),
      ),
    );
  }
}