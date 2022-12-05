import 'package:blood_donor/screen/signin_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';


signOut(context) async {

  await FirebaseAuth.instance.signOut();

  final GoogleSignIn googleSignIn = GoogleSignIn();

  await googleSignIn.signOut();

  var firebaseUser = FirebaseAuth.instance.currentUser;
  if(firebaseUser != null){

  }
  else{

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SignInPage(),
        ));
  }
}

