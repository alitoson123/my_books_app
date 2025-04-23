import 'package:flutter/material.dart';
import 'package:my_books/constants.dart';

class SplahBody extends StatelessWidget {
  const SplahBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Images.logo),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text('Read free books'),
        ),
      ],
    );
  }
}
