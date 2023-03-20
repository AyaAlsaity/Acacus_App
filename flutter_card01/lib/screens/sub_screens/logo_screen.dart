import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card01/screens/main_screens/home_screen.dart';
import 'package:flutter_card01/screens/main_screens/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helpers/colors.dart';
import 'splash_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void initState() {
    Timer(const Duration(seconds: 4), (){
       Navigator.pushReplacement(
            context,
            CupertinoPageRoute(
              builder: (context) =>  auth.currentUser != null ? const MainScreen(): const SplashScreen(),
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
            fontSize: 70,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.italic,
            color: secondaryColorText,
          ),
        ),
      ),
    );
  }
}
