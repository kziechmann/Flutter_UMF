import 'package:flutter/material.dart';

class CreatePostsPage extends StatefulWidget {
  final Function addProduct;

  CreatePostsPage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _CreatePostsPageState();
  }
}

class _CreatePostsPageState extends State<CreatePostsPage> {
  String titleValue = '';
  String descriptionValue = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Post Title'),
            onChanged: (String value) {
              setState(() {
                titleValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Caption'),
            maxLines: 5,
            onChanged: (String value) {
              setState(() {
                descriptionValue = value;
              });
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            color: Theme.of(context).accentColor,
            child: Text('Post Image'),
            onPressed: () {
              final Map<String, String> post = {
                'title': titleValue,
                'description': descriptionValue,
                'image': 'assets/mountains.jpg'
              };
              widget.addProduct(post);
              Navigator.pushReplacementNamed(context, '/posts');
            },
          )
        ],
      ),
    );
  }
}
