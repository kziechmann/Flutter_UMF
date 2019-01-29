import 'package:flutter/material.dart';

class PostListPage extends StatelessWidget {
  final List<Map<String, String>> posts;

  PostListPage(this.posts);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          leading: Image.asset(posts[index]['image']),
          title: Text(posts[index]['title'])
        );
      },);
  }
}