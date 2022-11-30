import 'package:blood_donor/screen/edit_donor_details_page.dart';
import 'package:blood_donor/screen/widget/custom_button.dart';
import 'package:flutter/material.dart';
import '../dimension/dimension.dart';
import '../utls/const.dart';

class BloodDonorDetails extends StatefulWidget {
  const BloodDonorDetails({super.key});

  @override
  State<BloodDonorDetails> createState() => _BloodDonorDetailsState();
}

class _BloodDonorDetailsState extends State<BloodDonorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        // automaticallyImplyLeading: false,
        // centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(left: 0),
          child: Text(
            'All DONORS',
            style: TextStyle(fontSize: s16, fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(s25),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(s10 * 3.2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name'),
                  Divider(thickness: 1.5),
                  SizedBox(height: s50),
                  Text('Loacation'),
                  Divider(thickness: 1.5),
                  SizedBox(height: s50),
                  Text('Phone No'),
                  Divider(thickness: 1.5),
                  SizedBox(height: s50),
                  Text('Date'),
                  Divider(thickness: 1.5),
                  SizedBox(height: s50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Blood Group'),
                      Container(
                        decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(s5),
                          // color: Colors.red,
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: s10, horizontal: s20),
                        child: Text(
                          'A+',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: s50),
                  Image.asset(
                    'assets/images/map2.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: s10 * 14,
                  )
                ],
              ),
            ),
            Spacer(),
            // Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomButton(
                    text: 'Call',
                    onTap: () {},
                  ),
                ),
                SizedBox(width: s20),
                Expanded(
                  child: CustomButton(
                    bclr: Colors.red,
                    color: Colors.white,
                    tclr: kMainColor,
                    text: 'Edit',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditDonorDetails()));
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
