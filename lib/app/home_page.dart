import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: Text(
              'Logout',
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
