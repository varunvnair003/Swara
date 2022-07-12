import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SwaraFirebaseUser {
  SwaraFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

SwaraFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SwaraFirebaseUser> swaraFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<SwaraFirebaseUser>((user) => currentUser = SwaraFirebaseUser(user));
