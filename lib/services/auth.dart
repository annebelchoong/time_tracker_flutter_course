import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase{
  User get currentUser;
  Future<User> signInAnonymously();
  Future<void> signOut();
}

class Auth implements AuthBase{
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  //current user
  User get currentUser => _firebaseAuth.currentUser;

  @override
  //sign in anonymously
  Future<User> signInAnonymously() async{
    final userCredential = await _firebaseAuth.signInAnonymously();
    return userCredential.user;
  }

  @override
  //sign out
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}