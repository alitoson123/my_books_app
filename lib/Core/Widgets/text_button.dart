import 'package:flutter/material.dart';
import 'package:my_books/constants.dart';

class myTextButton extends StatelessWidget {
  const myTextButton(
      {super.key,
      required this.backgroundColor,
      required this.text,
      required this.borderRadius,
      this.style});
  final Color backgroundColor;
  final String text;
  final BorderRadius borderRadius;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(text,
          style: style ?? Style.textStyle20.copyWith(color: Colors.white)),
      style: TextButton.styleFrom(
        minimumSize: Size(170, 48),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
      ),
    );
  }
}
