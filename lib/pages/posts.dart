import 'package:flutter/material.dart';
import '../post_manager.dart';


class PostsPage extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
        leading :IconButton(
            icon: Icon(Icons.child_care),
          ),
        title: Text('Insta-photo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_a_photo),
            tooltip: 'Take a Photo',
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            tooltip: 'View Profile',
            onPressed: () => {},
          ),
        ],
      ),
        body: PostManager(),
      );
    }
}