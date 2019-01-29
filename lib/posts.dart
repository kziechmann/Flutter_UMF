import 'package:flutter/material.dart';

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
          Text(
                posts[index]['title'],
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
          Image.asset(posts[index]['image']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  tooltip: 'Like this post',
                  onPressed: () => {},
                ),
                IconButton(
                  icon: Icon(Icons.add_comment),
                  tooltip: 'Comment on this',
                  onPressed: () => {},
                ),
                IconButton(
                  icon: Icon(Icons.share),
                  tooltip: 'Share this',
                  onPressed: () => {},
                ),
            ],
          ),
          Column(
            children: <Widget>[ 
              Text(
                posts[index]['description'],
              ),
            ],
          ),
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
