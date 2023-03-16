

import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  
   const ButtonScreen({super.key,});
   

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  
  
  @override
  Widget build(BuildContext context) {
    return  Container(
    height: 40,
    width: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      border: Border.all(
          color: Colors.blue, width: 2),
    ),
    // ignore: prefer_const_constructors
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      // ignore: prefer_const_constructors
      child: Text(
        'معرفة المزيد',
        textAlign:TextAlign.center,
        style: const TextStyle(color: Colors.blue),
      ),
    ),
                                  );
  }
}