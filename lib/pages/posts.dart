import 'package:flutter/material.dart';
import '../posts.dart';

class PostsPage extends StatelessWidget {
  final List<Map<String, String>> posts;


  PostsPage(this.posts);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insta-photo', style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold, fontFamily: 'VeganStyle'),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_a_photo),
            tooltip: 'Take a Photo',
            onPressed: (){
              Navigator.pushReplacementNamed(
                context, 
                '/createPost');
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            tooltip: 'View Profile',
            onPressed: (){
              Navigator.pushReplacementNamed(
                context, 
                '/createPost');
            },
          ),
        ],
      ),
      body: Posts(posts),
    );
  }
}
