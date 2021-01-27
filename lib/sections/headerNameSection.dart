import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderNameSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,),
      child: Row(
        children: [
          Text(
            "Shabz ",
            style: GoogleFonts.abrilFatface(
                fontSize: 25, letterSpacing: 2, color: Colors.deepOrange[700]),
          ),
          Text(
            "Daily",
            style: GoogleFonts.abrilFatface(
                fontSize: 25, letterSpacing: 2, color: Colors.blueGrey[700]),
          ),
          Text(
            " Shop",
            style: GoogleFonts.abrilFatface(
                fontSize: 25, letterSpacing: 2, color: Colors.black),
          ),
          Text(
            " Market",
            style: GoogleFonts.abrilFatface(
                fontSize: 25, letterSpacing: 2, color: Colors.blueGrey[700]),
          )
        ],
      ),
    );
  }
}
