import 'package:flutter/material.dart';

class PostListPage extends StatelessWidget {
  final List<Map<String, String>> posts;
  final Function removePost;

  PostListPage(this.posts, this.removePost);

   _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure?'),
            content: Text('This action cannot be undone!'),
            actions: <Widget>[
              FlatButton(
                child: Text('DISCARD'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text('CONTINUE'),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.home),
            tooltip: 'Take a Photo',
            onPressed: (){
              Navigator.pushReplacementNamed(
                context, 
                '/posts');
            },
          ),
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
                '/postList');
            },
          ),
        ],
      ),
      body: ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
            leading: Image.asset(posts[index]['image']),
            title: Text(posts[index]['title']));
      },
    ),
    );
  }
}
