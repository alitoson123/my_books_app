import 'package:flutter/material.dart';
import 'package:my_books/Features/home/Data/models/book_model/book_model.dart';
import 'package:my_books/constants.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Color(0xffFDD835),
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: Style.textStyle20,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          ' (2390)',
          style: Style.textStyle16,
        )
      ],
    );
  }
}
