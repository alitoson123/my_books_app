import 'package:dio/dio.dart';

class ApiService {
  String baseUrl = 'https://www.googleapis.com/books/v1/';
  
  Future<Map<String, dynamic>> getBooks({required String endpoints}) async {
    var responce = await Dio().get('$baseUrl$endpoints');

    Map<String, dynamic> data = responce.data;

    return data;
  }
}
