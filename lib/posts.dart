import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final List<String> posts;

  

  Posts(this.posts){

  }

  Widget _buildPost(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/mountains.jpg'),
          Text(posts[index])
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildPost,
      itemCount: posts.length,
    );
  }
}
