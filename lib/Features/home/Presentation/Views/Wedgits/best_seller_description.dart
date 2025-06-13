import 'package:flutter/material.dart';
import 'package:my_books/Features/home/Data/models/book_model/book_model.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/book_price_and_rating.dart';
import 'package:my_books/constants.dart';

class BestSellerDescription extends StatelessWidget {
  const BestSellerDescription.NewestSellerDescription(
      {super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 200,
          child: Text(
            bookModel.volumeInfo!.title!,
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
          bookModel.volumeInfo!.authors![0],
          style: Style.textStyle16,
        ),
        SizedBox(
          height: 3,
        ),
        Row(
          children: [
            Text(
             'Free',
              style: Style.textStyle20,
            ),
            SizedBox(
              width: 30,
            ),
            BookRating(
              bookModel: bookModel,
            ),
          ],
        ),
      ],
    );
  }
}
