import 'package:dartz/dartz.dart';
import 'package:my_books/Core/errors/failure.dart';
import 'package:my_books/Features/home/Data/models/book_model/book_model.dart';

abstract class HomeRepo{
 Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
 Future<Either<Failure,List<BookModel>>> fetchNewestBooks();

}