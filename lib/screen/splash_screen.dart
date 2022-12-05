import 'dart:async';
import 'package:blood_donor/dimension/dimension.dart';
import 'package:blood_donor/screen/signin_page.dart';
import 'package:blood_donor/screen/user_profile.dart';
import 'package:blood_donor/utls/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(milliseconds: 800),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SignInPage(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.red));
    return Scaffold(
      backgroundColor: kMainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(logo),
              height: s10 * 20,
            ),
            SizedBox(height: s10),
            HeadingText(
              'রক্তিম',
              // .toUpperCase(),
              fs: s10 * 4,
              clr: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
