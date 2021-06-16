import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:time_tracker_flutter_course/services/auth.dart';

class SignInBloc{
  SignInBloc({@required this.auth});
  final AuthBase auth;
  //Add the 3 different sign in method (I only have 2 for now)

  //Added a  new stream controller to manage the loading state and to access the stream
  final StreamController<bool> _isLoadingController = StreamController<bool>();
  //input stream for the stream builder
  //_isLoadingController is a private class which means the isLoadingStream can only access the stream but not the controller
  Stream<bool> get isLoadingStream =>_isLoadingController.stream;

  //close controller when the sign in page is moved from the widget tree
  void dispose(){
    _isLoadingController.close();
  }
  //Add values to the stream
  void _setIsLoading (bool isLoading) => _isLoadingController.add(isLoading);

  // Passing Function() with the type Function<User> as an argument to signInMethod
  Future<User> _signIn(Future<User> Function() signInMethod) async {
    try {
      _setIsLoading(true);
      return await signInMethod();
    } catch (e) {
      //will only setIsLoading to false when sign in fails
      _setIsLoading(false);
      rethrow;
    }
  }
  Future<User> signInAnonymously() async => await _signIn(auth.signInAnonymously);
  Future<User> signInWithGoogle() async => await _signIn(auth.signInWithGoogle);
}