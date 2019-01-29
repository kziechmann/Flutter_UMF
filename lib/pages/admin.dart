import 'package:flutter/material.dart';
import 'postList.dart';
import 'createPost.dart';

class PostsAdminPage extends StatelessWidget {
  final Function addPost;
  final Function removePost;

  PostsAdminPage( this.addPost, this.removePost);

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
                '/posts');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Insta-photo', style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold, fontFamily: 'VeganStyle'),),
        bottom: TabBar(tabs: <Widget>[
                Tab(icon: Icon(Icons.create), text: 'Create Post'),
                Tab(icon: Icon(Icons.list), text: 'My Posts'),
              ]),
      ),
      body: TabBarView(
        children: <Widget>[
          CreatePostsPage( this.addPost),
          PostListPage(),
        ],
        ),
      )
    );
  }
}