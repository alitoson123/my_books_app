import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_books/Core/services/api_service.dart';
import 'package:my_books/Features/home/Data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      ApiService(
        Dio(),
      ),
    ),
  );
}
