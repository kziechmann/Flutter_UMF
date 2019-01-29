import 'package:flutter/material.dart';
import 'post_control.dart';
import './posts.dart';

class PostManager extends StatelessWidget {
  final List<Map<String, String>> posts;
  final Function addPost;
  final Function removePost;

  PostManager(this.posts, this.addPost, this.removePost); 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: PostControl(addPost)
        ),
        Expanded(child: Posts(posts, removePost: removePost))
      ],
    );
  }
}
