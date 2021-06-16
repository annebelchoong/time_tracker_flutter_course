import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:time_tracker_flutter_course/app/sign_in/email_sign_in_model.dart';
import 'package:time_tracker_flutter_course/services/auth.dart';

class EmailSignInBloc {
  // Inject the authbase to the bloc to use
  EmailSignInBloc({@required this.auth});
  final AuthBase auth;
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

  Future<void> submit() async {
    updateWith(
      submitted: true,
      isLoading: true,
    );
    try {
      if (_model.formType == EmailSignInFormType.signIn) {
        await auth.signInWithEmailAndPassword(_model.email, _model.password);
      } else {
        await auth.createUserWithEmailAndPassword(
            _model.email, _model.password);
      }
    } catch (e) {
      // will update the model when fail
      updateWith(isLoading: false);
      // rethrow any error that we catch
      rethrow;
    }
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
