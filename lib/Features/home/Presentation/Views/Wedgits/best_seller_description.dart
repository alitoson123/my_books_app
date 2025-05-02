import 'package:flutter/material.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/book_price_and_rating.dart';
import 'package:my_books/constants.dart';

class BestSellerDescription extends StatelessWidget {
  const BestSellerDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 200,
          child: Text(
            'Atomic habits',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Style.textStyle20.copyWith(
              fontFamily: 'PlayfairDisplay',
            ),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          'James clear',
          style: Style.textStyle16,
        ),
        SizedBox(
          height: 3,
        ),
        BookPriceAndRating(),
      ],
    );
  }
}
