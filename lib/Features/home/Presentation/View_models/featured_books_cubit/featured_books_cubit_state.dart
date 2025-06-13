import 'package:my_books/Features/home/Data/models/book_model/book_model.dart';

class FeaturedBooksStates {}

class InitialFeaturedBooksState extends FeaturedBooksStates {}

class LoadingFeaturedBooksState extends FeaturedBooksStates {}

class SuccessFeaturedBooksState extends FeaturedBooksStates {
  final List<BookModel> bookList;

  SuccessFeaturedBooksState({required this.bookList});
}

class failureFeaturedBooksState extends FeaturedBooksStates {
  final String errMessage;

  failureFeaturedBooksState({required this.errMessage});
}
