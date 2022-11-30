import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../dimension/dimension.dart';

const String logo = 'assets/logos/water.png';
const String map = 'assets/images/map.png';
const Color kMainColor = Colors.red;

class HeadingText extends StatelessWidget {
  const HeadingText(
    this.text, {
    super.key,
    this.fs,
    this.clr,
    this.of,
    this.ml,
  });
  final String text;
  final double? fs;
  final Color? clr;
  final TextOverflow? of;
  final int? ml;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: of,
      maxLines: ml,
      style: GoogleFonts.quando(
        fontSize: fs,
        color: clr,
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText(
    this.text, {
    Key? key,
    this.fs = 0,
  }) : super(key: key);
  final String text;
  final double? fs;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: fs == 0 ? s16 : fs,
      ),
    );
  }
}
