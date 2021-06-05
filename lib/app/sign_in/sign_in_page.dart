import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/common_widgets/custom_raised_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        centerTitle: true,
        elevation: 2.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[900],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Sign in',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
              color: Colors.orangeAccent[200],
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: 8.0),
          CustomRaisedButton(
            child: Text(
              'Sign in with Google',
              style: TextStyle(
                // color: Colors.black87,
                fontSize: 15.0,
              ),
            ),
            borderRadius: 20.0,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
