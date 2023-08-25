import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constands/colors.dart';

class HorizontalSubjectList extends StatelessWidget {
  const HorizontalSubjectList({
    super.key,
    required this.txtTheme, required this.subjectTitle, required this.lessons, required this.shortname,
  });

  final TextTheme txtTheme;
  final String subjectTitle, lessons, shortname;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 50, width: 170,
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: tDarkColor),
            child: Center(child: Text(shortname.toUpperCase(),
                style: GoogleFonts.viga(color: Colors.white, fontSize: 20))),
          ),
          SizedBox(width: 5),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(subjectTitle, style: GoogleFonts.mavenPro(
                    fontWeight: FontWeight.bold, fontSize: 18),
                  overflow: TextOverflow.ellipsis,),
                Text(lessons, style: txtTheme.bodyText2,
                  overflow: TextOverflow.ellipsis,),
              ],

            ),
          )
        ],
      ),
    );
  }
}