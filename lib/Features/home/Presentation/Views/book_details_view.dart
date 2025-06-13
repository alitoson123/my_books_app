import 'package:flutter/material.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/book_price_and_rating.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/books_action.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/image_container.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/similar_list_view_images.dart';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              SizedBox(
                height: 230,
                child: ImageContainer(
                  myWidth: 155,
                  imageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUNVld5ZvPS1ASw4QFkZw3lbH-m5fRh1pjLA&s',
                ),
              ),
              SizedBox(
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
            /*  BookPriceAndRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),*/
              SizedBox(
                height: 25,
              ),
              BooksAction(),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can also like',
                  style: Style.textStyle18.copyWith(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              similarListViewImages(),
            ],
          ),
        ),
      ),
    );
  }
}
