import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_books/Core/errors/failure.dart';
import 'package:my_books/Core/services/api_service.dart';
import 'package:my_books/Features/home/Data/models/book_model/book_model.dart';
import 'package:my_books/Features/home/Data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic> data = await ApiService().getBooks(
          endpoints:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming');

      List<BookModel> bookList = [];

      for (var items in data['items']) {
        bookList.add(BookModel.fromJson(items));
      }
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errMessage: "error"));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      Map<String, dynamic> data = await ApiService().getBooks(
          endpoints: 'volumes?Filtering=free-ebooks&q=subject:programming');

      List<BookModel> bookList = [];

      for (var items in data['items']) {
        bookList.add(BookModel.fromJson(items));
      }
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errMessage: "error"));
      }
    }
  }
}
