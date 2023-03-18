import 'package:flutter/material.dart';
import 'package:flutter_card01/helpers/colors.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({
    Key? key,
    required this.isbackround,
    required this.title,
    required this.widthh,
    required this.heightt,
    required this.paddingg,
  }) : super(key: key);
  final bool isbackround;
  final String title;
  final double widthh;
  final double heightt;
  final double paddingg;

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.heightt,
      width: widget.widthh,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widget.isbackround ? mainColor : secondaryColorText,
        border: Border.all(color: mainColor, width: 2),
      ),
      // ignore: prefer_const_constructors
      child: Padding(
        padding:  EdgeInsets.all(widget.paddingg),
        // ignore: prefer_const_constructors
        child: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: widget.isbackround ? secondaryColorText : mainColor),
        ),
      ),
    );
  }
}
