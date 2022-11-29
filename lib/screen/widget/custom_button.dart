import 'package:flutter/material.dart';

import '../../dimension/dimension.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color = Colors.red,
    this.tclr = Colors.white,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;
  final Color? color;
  final Color? tclr;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        height: s10 * 4.8,
        child: MaterialButton(
            color: color,

            // minWidth: double.minPositive,
            // color: kMainColor,
            onPressed: onTap,
            child: Text(
              text.toUpperCase(),
              style: TextStyle(color: tclr),
            )),
      ),
    );
  }
}
