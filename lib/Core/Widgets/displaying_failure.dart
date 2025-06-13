import 'package:flutter/material.dart';
import 'package:my_books/constants.dart';

class DisplayingFailure extends StatelessWidget {
  const DisplayingFailure({super.key, required this.errMessage});

  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(errMessage,style: Style.textStyle20,);
  }
}
