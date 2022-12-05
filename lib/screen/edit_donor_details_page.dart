import 'package:blood_donor/screen/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../dimension/dimension.dart';
import '../utls/const.dart';

class EditDonorDetails extends StatefulWidget {
  const EditDonorDetails({super.key});

  @override
  State<EditDonorDetails> createState() => _EditDonorDetailsState();
}

class _EditDonorDetailsState extends State<EditDonorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(

        title: Padding(
          padding: EdgeInsets.only(left: 0),
          child: Text(
            'EDIT DONOR DETAIL',
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
                  TitleText('Name'),
                  CustomTextField(
                    hintText: 'Type Your Name',
                  ),
                  SizedBox(height: s25),
                  TitleText('Loacation'),
                  CustomTextField(hintText: 'Type Area'),
                  SizedBox(height: s25),
                  TitleText('Phone No'),
                  CustomTextField(hintText: 'Type Phone Number'),
                  SizedBox(height: s25),
                  TitleText('Date'),
                  CustomTextField(hintText: '02/12/2022'),
                  SizedBox(height: s25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TitleText('Blood Group'),
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
                          style: GoogleFonts.nunito(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: s50),
                  // Image.asset(
                  //   'assets/images/map2.png',
                  //   width: double.infinity,
                  //   fit: BoxFit.cover,
                  //   height: s10 * 14,
                  // )
                ],
              ),
            ),
            const Spacer(),
            // Spacer(),
            CustomButton(
              text: 'Save',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
