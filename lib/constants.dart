import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_books/Core/Service%20Locator/service_locator.dart';
import 'package:my_books/Features/Search/Presentation/views/search_view.dart';
import 'package:my_books/Features/Splash/Presentation/Views/splash_view.dart';
import 'package:my_books/Features/home/Data/models/book_model/book_model.dart';
import 'package:my_books/Features/home/Data/repos/home_repo_impl.dart';
import 'package:my_books/Features/home/Presentation/View_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:my_books/Features/home/Presentation/Views/book_details_view.dart';
import 'package:my_books/Features/home/Presentation/Views/home_view.dart';

class Images {
  static const logo =
      'assets/Images/Flux_Dev_Create_a_standalone_logo_for_My_Books_featuring_bold__2.jpg';
}

class Style {
  static const textStyle16 = TextStyle(
    fontSize: 16,
  );
  static const textStyle18 =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);

  static const textStyle20 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  static const textStyle22 =
      TextStyle(fontSize: 22, fontWeight: FontWeight.w600);
}

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: KHomePath,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: KBookDetailsPath,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(bookModel: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: KSearchViewPath,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}

const KbackgroudColor = Color(0xffFBFDFB);
const Kduration = Duration(milliseconds: 2);
const KHomePath = '/homeView';
const KBookDetailsPath = '/bookDetailsView';
const KSearchViewPath = '/SearchView';
