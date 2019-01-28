import 'package:flutter/material.dart';
import './pages/post.dart';

class Posts extends StatelessWidget {
  final List<Map<String, String>> posts;

  Posts(this.posts) {}

  Widget _buildPost(
    BuildContext context,
    int index,
  ) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(posts[index]['image']),
          Text(posts[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => PostPage(
                            posts[index]['title'], posts[index]['image']),
                      ),
                    ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildPostList() {
    Widget postCard;
    if (posts.length > 0) {
      postCard = ListView.builder(
        itemBuilder: _buildPost,
        itemCount: posts.length,
      );
    } else {
      postCard = Center(
        child: Text('No posts found!'),
      );
    }
    return postCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildPostList();
  }
}
