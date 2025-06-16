import 'package:my_books/Features/home/Data/models/book_model/book_model.dart';

class SimilarBooksState {}

class InitialSimilarBooksState extends SimilarBooksState {}

class LoadingSimilarBooksState extends SimilarBooksState {}

class SuccessSimilarBooksState extends SimilarBooksState {
  final List<BookModel> bookList;

  SuccessSimilarBooksState({required this.bookList});
}

class failureSimilarBooksState extends SimilarBooksState {
  final String errMessage;

  failureSimilarBooksState({required this.errMessage});
}
