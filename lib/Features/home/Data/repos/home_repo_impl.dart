import 'package:dartz/dartz.dart';
import 'package:my_books/Core/errors/failure.dart';
import 'package:my_books/Features/home/Data/models/book_model/book_model.dart';
import 'package:my_books/Features/home/Data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}