import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/colors.dart';
import 'secondscreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: InkWell(
        child: Center(
          child: Text(
            'اكاكوس',
            style: GoogleFonts.gulzar(
              fontSize: 50,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,
              color: secondaryColorText,
            ),
          ),
        ),
        onTap: () => Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const SecondScreen(),
            )),
      ),
    );
  }
}
