import 'package:flutter/material.dart';
import './pages/post.dart';
import './pages/posts.dart';
import './pages/admin.dart';
import './pages/auth.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp>{
  final List<Map<String,String>> _posts = [];

   void _addPost(Map<String, String> post) {
    setState(() {
      _posts.add(post);
    });
  }

   void _removePost(int index) {
    setState(() {
      _posts.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
        accentColor: Colors.orange,
        
      ),
      routes: {
        '/': (BuildContext context) => AuthPage(),
        '/posts': (BuildContext context) => PostsPage(_posts),
        '/admin': (BuildContext context) => PostsAdminPage(_addPost, _removePost),
      },
      onGenerateRoute: (RouteSettings settings){
        final List<String> pathElements = settings.name.split('/');
        print(pathElements);
        if (pathElements[0] != ''){
          return null;
        }

         if (pathElements[1] == 'post') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute(
                        builder: (BuildContext context) => PostPage(
                            _posts[index]['title'], _posts[index]['description'], _posts[index]['image']),
                      );
      
        }       
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                PostsPage(_posts));
      },
    );
  }
}