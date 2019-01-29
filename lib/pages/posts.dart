import 'package:flutter/material.dart';
import '../post_manager.dart';

class PostsPage extends StatelessWidget {
  final List<Map<String, String>> posts;


  PostsPage(this.posts);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('Choose'),
          ),
          ListTile(title: Text('Manage Posts'), onTap: () {
            Navigator.pushReplacementNamed(
                context, 
                '/admin');
          }),
        ]),
      ),
      appBar: AppBar(
        title: Text('Insta-photo', style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold, fontFamily: 'VeganStyle'),),
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
      body: PostManager(posts),
    );
  }
}
