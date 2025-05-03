import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_books/Features/Splash/Presentation/Views/splash_view.dart';
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
        builder: (context, state) => BookDetailsView(),
      ),
    ],
  );
}

const KbackgroudColor = Color(0xffFBFDFB);
const Kduration = Duration(milliseconds: 2);
const KHomePath = '/homeView';
const KBookDetailsPath = '/bookDetailsView';
