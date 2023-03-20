import 'package:flutter/material.dart';

import '../../helpers/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: secondaryColor,
        border: Border.all(color: secondaryColor, width: 2),
      ),
      // ignore: prefer_const_constructors
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          alignment : AlignmentDirectional.topEnd,
          children: [
            Text(
            'ابحث عن معلم، مدينة، او فندق',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: secondaryColor02,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 280),
            child: Icon(
              Icons.search,
              color: secondaryColor02,
              size: 28,
            ),
          ),
          
          
        ]),
      ),
    );
  }
}
