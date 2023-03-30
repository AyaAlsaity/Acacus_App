import 'package:flutter/material.dart';

import '../../helpers/colors.dart';

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
        padding: EdgeInsets.all(widget.paddingg),
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

class ButtonSignOutScreen extends StatefulWidget {
  const ButtonSignOutScreen({
    Key? key,
    required this.isbackround,
    required this.title,
    required this.widthh,
    required this.heightt,
    required this.paddingg,
    this.icon = Icons.exit_to_app_rounded,
  }) : super(key: key);
  final bool isbackround;
  final String title;
  final double widthh;
  final double heightt;
  final double paddingg;
  final IconData icon;

  @override
  State<ButtonSignOutScreen> createState() => _ButtonSignOutScreenState();
}

class _ButtonSignOutScreenState extends State<ButtonSignOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.heightt,
      width: widget.widthh,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widget.isbackround ? mainColor01 : secondaryColorText,
        border: Border.all(color: mainColor01, width: 2),
      ),
      // ignore: prefer_const_constructors
      child: Padding(
        padding: EdgeInsets.all(widget.paddingg),
        // ignore: prefer_const_constructors
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: widget.isbackround ? secondaryColorText : mainColor01),
            ),
            const SizedBox(
              width: 2,
            ),
            Icon(widget.icon, color: secondaryColorText)
          ],
        ),
      ),
    );
  }
}
