import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  static signIn(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      User user = userCredential.user;
      return user;
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  static signUp(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      User user = userCredential.user;
      return user;
    } catch (e) {
      print(e.toString());
    }
  }

  static signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
