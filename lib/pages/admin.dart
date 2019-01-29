import 'package:flutter/material.dart';
import './posts.dart';
import 'postList.dart';
import 'createPost.dart';

class PostsAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Choose"),
            ),
            ListTile(
              title: Text("Insta-Photo"),
              onTap: () {
                 Navigator.pushReplacementNamed(
                context, 
                '/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Posts List'),
        bottom: TabBar(tabs: <Widget>[
                Tab(icon: Icon(Icons.create), text: 'Create Post'),
                Tab(icon: Icon(Icons.list), text: 'My Posts'),
              ]),
      ),
      body: TabBarView(
        children: <Widget>[
          CreatePostsPage(),
          PostListPage(),
        ],
        ),
      )
    );
  }
}