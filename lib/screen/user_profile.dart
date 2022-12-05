import 'package:flutter/material.dart';

import '../dimension/dimension.dart';
import '../firebase_classes/signout.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        // automaticallyImplyLeading: false,
        // centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(left: 0),
          child: Text(
            'Profile',
            style: TextStyle(fontSize: s16, fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(
            child: Column(
              children: [
                ElevatedButton(onPressed: (){
                  signOut(context);
                }, child: Text("Logout")),

                SizedBox(height: 30,),

                Text("Design Under Development....."),

              ],
            ),
          )
        ],
      ),
    );
  }
}
