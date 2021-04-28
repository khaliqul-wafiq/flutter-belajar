import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login / Firebase"),
        backgroundColor: Colors.blueGrey[300],
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Center(
          child: new RaisedButton(
            onPressed: () {},
            color: Colors.blueGrey[300],
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(Icons.developer_board),
                new Text(
                  "Google login",
                  style: new TextStyle(fontSize: 20.0, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
