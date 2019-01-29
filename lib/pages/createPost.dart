import 'package:flutter/material.dart';

class CreatePostsPage extends StatefulWidget {
  final Function addPost;

  CreatePostsPage(this.addPost);

  @override
  State<StatefulWidget> createState() {
    return _CreatePostsPageState();
  }
}

class _CreatePostsPageState extends State<CreatePostsPage> {
  final Map<String, dynamic> _formData = {
    'title': null,
    'description': null,
    'image': 'assets/mountains.jpg'
  };
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    widget.addPost(_formData);
    Navigator.pushReplacementNamed(context, '/posts');
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child:Container(
      margin: EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child:ListView(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Post Title'),
            validator: (String value) {
              if (value.isEmpty || value.length < 5) {
                return 'Title is required and should be 5+ characters long.';
              }
            },
            onSaved: (String value) {
                _formData['title'] = value;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Caption'),
            maxLines: 5,
            onSaved: (String value) {
                _formData['description'] = value;
            },
            validator: (String value) {
              if (value.isEmpty || value.length < 10) {
                return 'Description is required and should be 10+ characters long.';
              }
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            color: Theme.of(context).accentColor,
            child: Text('Post Image'),
            onPressed: _submitForm,
          )
        ],
      ),
      ),
      ),
    );
  }
}
