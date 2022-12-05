import 'package:blood_donor/firebase_classes/check_user_state.dart';
import 'package:blood_donor/screen/signin_page.dart';
import 'package:blood_donor/screen/widget/custom_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../dimension/dimension.dart';
import '../firebase_classes/authentication.dart';
import '../utls/const.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future addUser() async {
    CollectionReference _userInfo =
        await FirebaseFirestore.instance.collection("register");

    _userInfo.add(({
      "name": nameController.text,
      "email": emailController.text,
    }));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black));
    // print(MediaQuery.of(context).size.height);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: kMainColor,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(logo),
                  height: s10 * 9.3,
                ),
                SizedBox(height: s10),
                Text(
                  'রক্তিম',
                  // .toUpperCase(),
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: s10 * 50,
                color: Colors.white,
              )),
          Positioned(
            left: 0,
            right: 0,
            top: s10 * 14.9,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: s25),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: s20),
                height: s10 * 36.5,
                // width: screenWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: s5,
                          blurStyle: BlurStyle.outer,
                          offset: Offset(s5, s5)),
                      // BoxShadow(color: Colors.white, offset: Offset(s5, 0)),
                      BoxShadow(color: Colors.white, offset: Offset(s5, 0)),
                    ]),
                // width: double,i,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: s10 * 4.2),
                      child: Center(
                          child: Text(
                        'Sign Up'.toUpperCase(),
                        style: GoogleFonts.roboto(fontSize: s20),
                      )),
                    ),
                    SizedBox(height: s20),
                    Text(
                      'Full Name',
                      style: GoogleFonts.roboto(fontSize: s16),
                    ),
                    SizedBox(
                      height: s10 * 4,
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                            hintText: 'Enter your full name',
                            hintStyle: TextStyle(fontSize: s12)),
                      ),
                    ),
                    SizedBox(height: s20),
                    Text(
                      'Email',
                      style: GoogleFonts.roboto(fontSize: s16),
                    ),
                    SizedBox(
                      height: s10 * 4,
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            hintText: 'Enter your email',
                            hintStyle: TextStyle(fontSize: s12)),
                      ),
                    ),
                    SizedBox(height: s20),
                    Text(
                      'Password',
                      style: GoogleFonts.roboto(fontSize: s16),
                    ),
                    SizedBox(
                      height: s10 * 4,
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(fontSize: s12)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              top: s10 * 49.5,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: s10 * 8),
                  child: SizedBox(
                    height: s10 * 4.8,
                    child: CustomButton(
                      color: kMainColor,
                      tclr: Colors.white,
                      text: 'Sign Up',
                      onTap: () {
                        //adding data from signup textFormField to firestoreDatabase
                        addUser();
                        //checking if user is logged in or logged out
                        checkUserState(context);
                        print("signup button clicked");
                        var snackBar = SnackBar(
                            content: Text(
                                'Registered with ${emailController.text}'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);

                        MyAuthentication fAuth = MyAuthentication();
                        var userEmail = emailController.text;
                        var userPassword = passwordController.text;
                        fAuth.signup(userEmail, userPassword);
                      },
                    ),
                  ))),
          Positioned(
              bottom: s100 + 80,
              left: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "OR,",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          Positioned(
            bottom: s100 + 20,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SignInButton(
                  Buttons.GoogleDark,
                  text: "Sign Up with Google",
                  elevation: 15,
                  onPressed: () {
                    MyAuthentication myGoogleAuthentication =
                        MyAuthentication();
                    myGoogleAuthentication.signInWithGoogle(context);
                  },
                )
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: s100 - 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Registerd?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => SignInPage()),
                        (Route<dynamic> route) => false);
                  },
                  child: Text(
                    " Login",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: kMainColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
