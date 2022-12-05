import 'package:blood_donor/dimension/dimension.dart';
import 'package:blood_donor/screen/donor_details.dart';
import 'package:blood_donor/screen/edit_donor_details_page.dart';
import 'package:blood_donor/screen/show_all_page.dart';
import 'package:blood_donor/screen/user_profile.dart';
import 'package:blood_donor/screen/widget/custom_button.dart';
import 'package:blood_donor/utls/const.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myPages = [ShowAllPage(),BloodDonorDetails(),UserProfile()];
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: CurvedNavigationBar(
      items: [
        Icon(
          Icons.home,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.list,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.settings,
          size: 30,
          color: Colors.white,
        ),
      ],
      height: 50,
      color: kMainColor,
      backgroundColor: Colors.transparent,
      onTap: (index) {
        setState(() {
          indexPage = index;
        });
      },
    ),
      body: myPages[indexPage]);

    // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     AppBar(
      //       automaticallyImplyLeading: false,
      //       // centerTitle: true,
      //       title: Padding(
      //         padding: EdgeInsets.only(left: s10),
      //         child: Text(
      //           'JOHAR TOWN, LAHORE',
      //           style: TextStyle(fontSize: s16, fontWeight: FontWeight.w400),
      //         ),
      //       ),
      //       actions: [
      //         Padding(
      //           padding: EdgeInsets.symmetric(horizontal: s25),
      //           child: Container(
      //               padding: EdgeInsets.all(s5),
      //               decoration: BoxDecoration(
      //                   shape: BoxShape.circle, color: Colors.white),
      //               child: GestureDetector(
      //                 onTap: () {
      //                   // MyGoogleAuthentication myGoogleAuthentication =
      //                   //     MyGoogleAuthentication();
      //                   // myGoogleAuthentication.signInWithGoogle();
      //                 },
      //                 child: Icon(
      //                   Icons.person,
      //                   color: Colors.red,
      //                 ),
      //               )),
      //         )
      //       ],
      //     ),
          // Image.asset(
          //   map,
          //   fit: BoxFit.cover,
          //   height: screenHeight / 1.6,
          //   width: double.infinity,
          // ),
          // SizedBox(height: s5),
          // Padding(
          //     padding: EdgeInsets.symmetric(horizontal: s25, vertical: s25),
          //     child: const Text('Blood Group')),
          //
          // SizedBox(height: s100),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: s25),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Expanded(
          //         child: CustomButton(
          //           text: 'Show All',
          //           onTap: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                   builder: (context) => ShowAllPage(),
          //                 ));
          //           },
          //         ),
          //       ),
          //       SizedBox(width: s20),
          //       Expanded(
          //         child: CustomButton(
          //           color: Colors.transparent,
          //           tclr: kMainColor,
          //           bclr: kMainColor,
          //           text: 'Add New Donor',
          //           onTap: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                   builder: (context) => EditDonorDetails(),
          //                 ));
          //           },
          //         ),
          //       ),
          //     ],
          //   ),
          // )
      //   ],
      // ),
    // );
  }


}
