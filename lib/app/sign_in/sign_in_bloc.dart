import 'dart:async';

class SignInBloc{
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
  void setIsLoading (bool isLoading) => _isLoadingController.add(isLoading);
}