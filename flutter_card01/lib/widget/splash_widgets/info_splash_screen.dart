import 'package:flutter/material.dart';

class InfoSplash extends StatelessWidget {
  const InfoSplash({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          image,
          width: size.width,
          height: size.height * 0.4,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24,left: 24,top: 15,bottom: 20),
          child: Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
        ),
      ],
    );
  }
}