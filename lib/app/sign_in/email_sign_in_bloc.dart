import 'dart:async';

import 'package:time_tracker_flutter_course/app/sign_in/email_sign_in_model.dart';

class EmailSignInBloc {
  //Create stream controller to control the stream
  final StreamController<EmailSignInModel> _modelController =
      StreamController<EmailSignInModel>();

  // Output of the controller
  Stream<EmailSignInModel> get modelStream => _modelController.stream;

  //This model will represent the last value that was added to the stream
  EmailSignInModel _model = EmailSignInModel();

//Close the stream
  void dispose() {
    _modelController.close();
  }

  void updateWith({
    String email,
    String password,
    EmailSignInFormType formType,
    bool isLoading,
    bool submitted,
  }){
  //  update model
    _model = _model.copyWith(
      email: email,
      password: password,
      formType: formType,
      isLoading: isLoading,
      submitted: submitted,
    );
  //  add updated model to _modelController
    _modelController.add(_model);
  }
}
