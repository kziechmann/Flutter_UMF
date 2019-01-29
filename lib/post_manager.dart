import 'package:flutter/material.dart';
import './posts.dart';

class PostManager extends StatelessWidget {
  final List<Map<String, String>> posts;

  PostManager(this.posts); 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Expanded(child: Posts(posts))
      ],
    );
  }
}
