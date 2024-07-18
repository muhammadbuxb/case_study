import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary(
      {super.key,
      required this.text,
      required this.onTap,
      required this.width,
      required this.height, 
      required this.Color,});

  final text;
  final onTap;
  final double width;
  final double height;
  final Color;

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onTap,
        child: text,
        style: ElevatedButton.styleFrom(
            backgroundColor: Color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
