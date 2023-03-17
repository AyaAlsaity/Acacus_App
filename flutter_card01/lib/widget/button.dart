import 'package:flutter/material.dart';
import 'package:flutter_card01/helpers/colors.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({
    Key? key,
    required this.isbackround,
    required this.title,
    required this.widthh,
  }) : super(key: key);
  final bool isbackround;
  final String title;
  final double widthh;

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: widget.widthh,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widget.isbackround ? mainColor : secondaryColorText,
        border: Border.all(color: mainColor, width: 2),
      ),
      // ignore: prefer_const_constructors
      child: Padding(
        padding: const EdgeInsets.all(4.5),
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
