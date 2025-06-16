import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_books/Features/home/Data/models/book_model/book_model.dart';
import 'package:my_books/Features/home/Presentation/View_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/book_price_and_rating.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/books_action.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/image_container.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/similar_list_view_images.dart';
import 'package:my_books/constants.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).SimilarBooksCubitMethod();
  }

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
              onPressed: () {
                Navigator.pop(context);
              },
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
                  imageUrl: widget.bookModel.volumeInfo.imageLinks.thumbnail,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                widget.bookModel.volumeInfo.title!,
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
                widget.bookModel.volumeInfo.authors?[0] ?? '',
                style: Style.textStyle16,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8,
              ),
              BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              SizedBox(
                height: 25,
              ),
              BooksAction(
                bookModel: widget.bookModel,
              ),
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
