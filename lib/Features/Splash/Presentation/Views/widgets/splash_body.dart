import 'package:flutter/material.dart';
import 'package:my_books/constants.dart';

class SplahBody extends StatelessWidget {
  const SplahBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(Images.logo),
    );
  }
}