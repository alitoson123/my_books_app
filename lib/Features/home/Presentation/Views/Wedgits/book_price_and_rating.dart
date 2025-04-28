import 'package:flutter/material.dart';
import 'package:my_books/constants.dart';

class BookPriceAndRating extends StatelessWidget {
  const BookPriceAndRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '19.99 \$',
          style: Style.textStyle20,
        ),
        SizedBox(
          width: 30,
        ),
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
