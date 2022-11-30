import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../dimension/dimension.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.color = Colors.red,
      this.tclr = Colors.white,
      this.bclr = Colors.transparent})
      : super(key: key);
  final String text;
  final VoidCallback onTap;
  final Color? color;
  final Color? tclr;
  final Color bclr;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: s10 * 4.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: bclr,
          ),
          color: color,
        ),

        // minWidth: double.minPositive,
        // color: kMainColor,

        child: Center(
          child: Text(
            text.toUpperCase(),
            style: GoogleFonts.nunito(color: tclr, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    this.controller,
  }) : super(key: key);
  final String hintText;

  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: s20 * 1.5,
      child: TextField(
          controller: controller,
          decoration: InputDecoration(
              hintText: hintText.toUpperCase(),
              hintStyle:
                  GoogleFonts.nunito(fontSize: s12, color: Colors.black45))),
    );
  }
}
