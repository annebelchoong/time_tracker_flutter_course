import 'package:flutter/material.dart';

import 'email_sign_in_form_stateful.dart';

class EmailSignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        centerTitle: true,
        elevation: 2.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: EmailSignInForm(),
          ),
        ),
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}
