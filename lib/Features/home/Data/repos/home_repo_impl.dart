import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_books/Core/errors/failure.dart';
import 'package:my_books/Core/services/api_service.dart';
import 'package:my_books/Features/home/Data/models/book_model/book_model.dart';
import 'package:my_books/Features/home/Data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic> data = await apiService.getBooks(
          endpoints:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=sports');

      List<BookModel> bookList = [];

      for (var items in data['items']) {
        bookList.add(BookModel.fromJson(items));
      }
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errMessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      Map<String, dynamic> data = await apiService.getBooks(
          endpoints: 'volumes?Filtering=free-ebooks&Sorting=relevance&q=sports');

      List<BookModel> bookList = [];

      for (var items in data['items']) {
        bookList.add(BookModel.fromJson(items));
      }
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errMessage: e.toString()));
      }
    }
  }
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks() async {
   try {
      Map<String, dynamic> data = await apiService.getBooks(
          endpoints: 'volumes?Filtering=free-ebooks&q=subject:sports');

      List<BookModel> bookList = [];

      for (var items in data['items']) {
        bookList.add(BookModel.fromJson(items));
      }
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errMessage: e.toString()));
      }
    }
  }
}
