import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _userNameValue = '';
  String _passwordValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Insta-photo',
          style: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'VeganStyle'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(.35), BlendMode.dstATop),
            fit: BoxFit.cover,
            image: AssetImage('assets/mountains.jpg'),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 75.0, horizontal: 25.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'E-mail', filled: true, fillColor: Colors.white70),
              keyboardType: TextInputType.emailAddress,
              onChanged: (String value) {
                setState(() {
                  _userNameValue = value;
                });
              },
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(labelText: 'Password', filled: true, fillColor: Colors.white70),
              obscureText: true,
              onChanged: (String value) {
                setState(() {
                  _passwordValue = value;
                });
              },
            ),
            Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Login'),
              onPressed: () {
                final Map<String, String> logInfo = {
                  'username': _userNameValue,
                  'password': _passwordValue,
                };
                // widget.loginUser(logInfo);
                Navigator.pushReplacementNamed(context, '/posts');
              },
            ),
            ),
          ],
        ),
        ),
        ),
      ),
    );
  }
}
