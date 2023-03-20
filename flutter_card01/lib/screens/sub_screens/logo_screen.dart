import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helpers/colors.dart';
import 'splash_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), (){
       Navigator.pushReplacement(
            context,
            CupertinoPageRoute(
              builder: (context) => const SplashScreen(),
            ));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
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
    );
  }
}
