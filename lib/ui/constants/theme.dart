import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorBase {
  static final primary = Color(0xFFED542B);
  static final blue = Color(0xFF0176E8);
  static final grey = Color(0xFFF1F1F1);
}

String iconsPath = 'assets/icons/';

TextStyle fontBlack = GoogleFonts.roboto(
  color: Colors.black,
  fontSize: 15,
);

TextStyle font2Black =
    GoogleFonts.openSans(fontSize: 12, fontWeight: FontWeight.w300);

TextStyle fontWhite = GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 15,
);

//* Device size
double deviceWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double deviceHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

InputDecoration authInputDecoration(
    {String? label, String? hintText, Widget? icon}) {
  return InputDecoration(
    labelText: label,
    labelStyle: GoogleFonts.roboto(fontSize: 18),
    contentPadding: EdgeInsets.all(10),
    hintText: hintText,
    hintStyle: fontWhite.copyWith(fontSize: 10, color: Colors.black54),
    prefixIcon: icon,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
  );
}

Widget btnMainMenu({String? btnText, IconData? icon, Function()? onPressed}) {
  return MaterialButton(
    onPressed: onPressed,
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    minWidth: 150,
    height: 150,
    color: ColorBase.primary,
    child: Column(
      children: [
        Icon(icon, color: Colors.white, size: 80),
        Text('$btnText', style: fontWhite.copyWith())
      ],
    ),
  );
}

Color colorStatus(String status) {
  if (status == 'success') {
    return Colors.green;
  } else if (status == 'process') {
    return Colors.orange;
  } else {
    return Colors.red;
  }
}
