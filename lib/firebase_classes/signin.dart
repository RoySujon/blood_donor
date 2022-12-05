import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../screen/homepage.dart';
class FirebaseLogin{
  final FirebaseAuth auth = FirebaseAuth.instance;
  signInWithEmailAndPassword(email, password, context ) async {
    try {

      UserCredential credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
        email: email,
        password: password,);

      if (credential != null) {

        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
      }


    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');

        var snackBar = SnackBar(
            content: Text("email not registered."));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

      } else if (e.code == 'wrong-password') {
        print('wrong password provided for that user.');

        var snackBar = SnackBar(
            content: Text("Wrong password provided."));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }

  }

  Future<void> signup(BuildContext context) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);

      // Getting users credential
      UserCredential userResult = await auth.signInWithCredential(authCredential);
      User? user = userResult.user;

      if (userResult != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      } // if result not null we simply call the MaterialPageRoute,
      // for go to the HomePage screen
    }
  }

}


