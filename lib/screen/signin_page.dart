import 'package:blood_donor/dimension/dimension.dart';
import 'package:blood_donor/screen/homepage.dart';
import 'package:blood_donor/screen/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utls/const.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.white));
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
                HeadingText(
                  'Blood Donor'.toUpperCase(),
                  fs: s10 * 2.3,
                  clr: Colors.white,
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
                        'Login'.toUpperCase(),
                        style: GoogleFonts.roboto(fontSize: s20),
                      )),
                    ),
                    SizedBox(height: s50),
                    Text(
                      'Phone',
                      style: GoogleFonts.roboto(fontSize: s16),
                    ),
                    SizedBox(
                      height: s10 * 4,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'TYPE YOUR PASSWORD',
                            hintStyle: TextStyle(fontSize: s12)),
                      ),
                    ),
                    SizedBox(height: s20),
                    Text(
                      'Name',
                      style: GoogleFonts.roboto(fontSize: s16),
                    ),
                    SizedBox(
                      height: s10 * 4,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'TYPE YOUR PASSWORD',
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
                      text: 'Sign in',
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      },
                    ),
                  )))
        ],
      ),
    );
  }
}
