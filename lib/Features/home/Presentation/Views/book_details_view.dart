import 'package:flutter/material.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/book_price_and_rating.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/image_container.dart';
import 'package:my_books/constants.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        backgroundColor: KbackgroudColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.close),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 290,
              child: ImageContainer(
                myImage:
                    'assets/Images/61wADuboi4L._AC_UY327_FMwebp_QL65_.webp',
                myWidth: 180,
              ),
            ),  SizedBox(
              height: 16,
            ),
            Text(
              'The 7 habits of highly effective people',
              style:
                  Style.textStyle22.copyWith(fontFamily: 'PlayfairDisplay'),
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Stephen R.Covey',
              style: Style.textStyle16,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            BookPriceAndRating(mainAxisAlignment: MainAxisAlignment.center,),
          ],
        ),
      ),
    );
  }
}
