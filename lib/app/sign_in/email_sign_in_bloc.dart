import 'dart:async';

import 'package:time_tracker_flutter_course/app/sign_in/email_sign_in_model.dart';

class EmailSignInBloc {
  //Create stream controller to control the stream
  final StreamController<EmailSignInModel> _modelController =
      StreamController<EmailSignInModel>();

  // Output of the controller
  Stream<EmailSignInModel> get modelStream => _modelController.stream;

//Close the stream
  void dispose() {
    _modelController.close();
  }
}
