import 'package:my_books/Features/home/Data/models/book_model/book_model.dart';

class NewestBooksStates {}

class InitialNewestBooksState extends NewestBooksStates {}

class LoadingNewestBooksState extends NewestBooksStates {}

class SuccessNewestBooksState extends NewestBooksStates {
  final List<BookModel> bookList;

  SuccessNewestBooksState({required this.bookList});
}

class failureNewestBooksState extends NewestBooksStates {
  final String errMessage;

  failureNewestBooksState({required this.errMessage});
}
